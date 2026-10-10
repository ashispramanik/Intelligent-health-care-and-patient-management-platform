# Intelligent Healthcare and Patient Management Platform

An intelligent healthcare platform designed to simplify hospital operations and improve patient management through digital technology. The system aims to manage patient records, doctor information, appointments, prescriptions, and healthcare analytics in one place.

## 🚀 Features

- **Patient Management** – Maintain and manage patient information and medical records.
- **Doctor Management** – Organize doctor profiles and information.
- **Appointment Scheduling** – Schedule and manage patient appointments.
- **Medical Records** – Store and access patient health records.
- **Prescription Management** – Manage prescriptions digitally.
- **Healthcare Analytics** – Support data-driven insights for healthcare management.
- **AI Integration** – Designed to support intelligent healthcare assistance and analytics.
- **Security** – Focus on authentication, access control, and patient data privacy.

## 🛠️ Technologies Used

- **Frontend:** React, TypeScript, HTML, CSS
- **Backend:** Node.js, Express.js
- **Database:** PostgreSQL
- **ORM:** Prisma
- **Tools:** Git, GitHub, Docker, VS Code

## 📂 Project Structure

```text
intelligent-healthcare-platform/
├── frontend/          # User interface
├── backend/           # Backend APIs
├── ai-service/        # AI-related services
├── infrastructure/    # Infrastructure configuration
├── tests/             # Testing
├── docs/              # Documentation
├── docker-compose.yml
└── README.md
```

## ⚙️ Getting Started

### Prerequisites

- Node.js and npm
- Docker Desktop
- Git

### Installation

1. Clone the repository:

   ```bash
   git clone YOUR_GITHUB_REPOSITORY_URL
   ```

2. Open the project directory:

   ```bash
   cd intelligent-healthcare-platform
   ```

3. Start the configured services:

   ```bash
   docker compose up -d
   ```

4. Install and start the backend:

   ```bash
   cd backend
   npm install
   npm run dev
   ```

5. Open another terminal and start the frontend:

   ```bash
   cd frontend
   npm install
   npm run dev
   ```

6. Open the frontend URL displayed in your terminal, commonly `http://localhost:5173`.

**Note:** Configure environment variables, database credentials, and Prisma migrations according to the project setup before running the application. Refer to the individual package scripts and configuration files for the exact commands.

## 🔐 Security and Privacy

This project is intended for healthcare management and should use appropriate authentication, authorization, secure data handling, and audit logging. Use synthetic data during development and testing. Do not upload real patient information, passwords, API keys, or database credentials to GitHub.

## 🎯 Project Goal

To develop a centralized and user-friendly healthcare management system that helps organize hospital workflows, improve access to information, and support efficient patient care.

## 👨‍💻 Author

**Ashis Pramanik**

Computer Science and Engineering | Software Development | AI/ML | Cyber Security

## 📄 License

Add a license file if you intend to publish this project for others to use or modify.
