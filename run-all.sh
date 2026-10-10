#!/usr/bin/env bash
# One-click setup + run for Mac/Linux:  bash run-all.sh
set -e
cd "$(dirname "$0")"
for c in node npm docker; do command -v $c >/dev/null || { echo "Missing: $c"; exit 1; }; done
docker info >/dev/null 2>&1 || { echo "Start Docker first"; exit 1; }
docker compose up -d
until docker compose exec -T db pg_isready -U postgres >/dev/null 2>&1; do sleep 2; done
cd backend
if [ ! -f .env ]; then
  r() { head -c 48 /dev/urandom | base64 | tr -dc 'A-Za-z0-9' | head -c 48; }
  printf 'DATABASE_URL="postgresql://postgres:postgres@localhost:5432/healthcare"\nJWT_ACCESS_SECRET="%s"\nJWT_REFRESH_SECRET="%s"\nCORS_ORIGIN="http://localhost:5173"\nPORT=4000\n' "$(r)" "$(r)" > .env
fi
npm install && npx prisma migrate dev --name init && npm run seed
(npm run dev &) 
cd ../frontend && npm install && npm run dev
