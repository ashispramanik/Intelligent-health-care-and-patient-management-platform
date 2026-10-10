# One-click setup + run (Windows PowerShell). Run from the project root:
#   powershell -ExecutionPolicy Bypass -File .\run-all.ps1
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

function Fail($m) { Write-Host "ERROR: $m" -ForegroundColor Red; exit 1 }
function Step($m) { Write-Host "`n==> $m" -ForegroundColor Cyan }

Step "Checking tools"
foreach ($c in "node", "npm", "docker") {
  if (-not (Get-Command $c -ErrorAction SilentlyContinue)) { Fail "'$c' is not installed or not in PATH. Install it, restart PowerShell, retry." }
}
docker info *> $null
if ($LASTEXITCODE -ne 0) { Fail "Docker Desktop is not running. Open it, wait until it says Running, then retry." }

Step "Starting PostgreSQL + Redis"
docker compose up -d
if ($LASTEXITCODE -ne 0) { Fail "docker compose failed" }
for ($i = 0; $i -lt 30; $i++) {
  docker compose exec -T db pg_isready -U postgres *> $null
  if ($LASTEXITCODE -eq 0) { break }
  Start-Sleep -Seconds 2
}
if ($LASTEXITCODE -ne 0) { Fail "Database did not become ready" }

Step "Backend setup"
Push-Location backend
if (-not (Test-Path .env)) {
  function Rand { -join ((48..57) + (65..90) + (97..122) | Get-Random -Count 48 | ForEach-Object { [char]$_ }) }
  @"
DATABASE_URL="postgresql://postgres:postgres@localhost:5432/healthcare"
JWT_ACCESS_SECRET="$(Rand)"
JWT_REFRESH_SECRET="$(Rand)"
CORS_ORIGIN="http://localhost:5173"
PORT=4000
"@ | Set-Content .env -Encoding ascii
  Write-Host "Created backend/.env with random secrets"
}
npm install; if ($LASTEXITCODE -ne 0) { Fail "backend npm install failed" }
npx prisma migrate dev --name init; if ($LASTEXITCODE -ne 0) { Fail "prisma migrate failed" }
npm run seed; if ($LASTEXITCODE -ne 0) { Fail "seed failed" }
Pop-Location

Step "Frontend setup"
Push-Location frontend
npm install; if ($LASTEXITCODE -ne 0) { Fail "frontend npm install failed" }
Pop-Location

Step "Launching servers in new windows"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$PSScriptRoot\backend'; npm run dev"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$PSScriptRoot\frontend'; npm run dev"
Start-Sleep -Seconds 6
Start-Process "http://localhost:5173"

Write-Host "`nApp:  http://localhost:5173`nAPI:  http://localhost:4000/api/health" -ForegroundColor Green
Write-Host "Login: admin@medicore.local / Admin@12345 (see README for other roles)"
