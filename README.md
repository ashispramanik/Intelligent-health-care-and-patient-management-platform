# Intelligent Healthcare and Patient Management Platform

An intelligent healthcare platform designed to simplify hospital operations and improve patient management through digital technology. The system aims to manage patient records, doctor information, appointments, prescriptions, and healthcare analytics in one place.


Module 1 — Patient Portal
- Patient registration, login and profile management
- Book, reschedule and cancel appointments
- View doctors, specialities and availability
- View prescriptions, test reports and medical history
- Track allergies, medications and vital signs
- Receive appointment and medication reminders
- Download permitted medical documents
- View bills, payments and appointment histor

  Module 2 — Doctor Portal
- Doctor profile, speciality and working schedule
- Daily appointment calendar
- Patient consultation and clinical notes
- Medical history and allergy review
- Prescription creation and renewal
- Laboratory test requests and result review
- Diagnosis records and follow-up scheduling
- Patient progress and health trend charts

  Module 3 — Hospital Admin Dashboard
- Manage users, roles and permissions
- Register doctors and verify credentials
- Manage departments, services and schedules
- Monitor appointments, admissions and capacity
- Manage billing, reports and operational analytics
- Review audit logs and security alerts
- Configure hospital settings and notification templates

  Module 4 — Receptionist / Front Desk
- Patient registration and identity verification
- Appointment booking and check-in
- Queue and waiting-room management
- Doctor availability and appointment status
- Billing desk access where permitted
- Visit completion and follow-up coordination

  Module 5 — Laboratory Portal
- Receive test orders from authorized doctors
- Track sample collection and processing
- Enter and validate laboratory results
- Upload authorized report documents
- Flag results for clinical review
- Publish finalized reports to permitted users

Module 6 — Pharmacy Portal
- View authorized prescriptions
- Manage medicine inventory and stock levels
- Track batches, expiry dates and suppliers
- Record dispensing and stock movements
- Generate low-stock and expiry alerts
- Maintain dispensing history

Module 7 — AI-powered health intelligence
Display trends in recorded blood pressure, glucose, weight, and other available vital measurements. Highlight changes using clinician-approved thresholds.


Smart appointment recommendations
Suggest suitable available appointment slots based on speciality, availability and patient preferences.


Medical document intelligence
Extract text from uploaded reports using OCR, identify dates and test names, and allow patients to search their own records. Require confirmation of extracted values.


Healthcare information assistant
Answer general health-service questions and explain platform workflows. If using a medical knowledge base, show sources and clearly distinguish education from diagnosis.


Risk analytics prototype
A separately evaluated ML model can demonstrate risk scoring using appropriately sourced data. It must not be presented as a clinically validated diagnostic tool.



4. Frontend architecture

frontend/
├── public/
│   ├── logo.svg
│   └── icons/
├── src/
│   ├── app/
│   │   ├── App.tsx
│   │   ├── router.tsx
│   │   ├── providers.tsx
│   │   └── query-client.ts
│   ├── assets/
│   ├── components/
│   │   ├── ui/
│   │   ├── forms/
│   │   ├── tables/
│   │   ├── charts/
│   │   └── layout/
│   ├── features/
│   │   ├── auth/
│   │   ├── patients/
│   │   ├── doctors/
│   │   ├── appointments/
│   │   ├── medical-records/
│   │   ├── prescriptions/
│   │   ├── laboratory/
│   │   ├── pharmacy/
│   │   ├── billing/
│   │   ├── notifications/
│   │   └── health-insights/
│   ├── hooks/
│   ├── lib/
│   │   ├── api-client.ts
│   │   ├── validation.ts
│   │   └── date-utils.ts
│   ├── types/
│   ├── styles/
│   └── main.tsx
├── tests/
├── .env.example
├── package.json
└── vite.config.ts


Backend folder structure

backend/
├── src/
│   ├── server.ts
│   ├── app.ts
│   ├── config/
│   ├── routes/
│   ├── middleware/
│   │   ├── authenticate.ts
│   │   ├── authorize.ts
│   │   ├── validate.ts
│   │   ├── rate-limit.ts
│   │   └── error-handler.ts
│   ├── modules/
│   │   ├── auth/
│   │   ├── users/
│   │   ├── patients/
│   │   ├── doctors/
│   │   ├── departments/
│   │   ├── appointments/
│   │   ├── encounters/
│   │   ├── records/
│   │   ├── prescriptions/
│   │   ├── laboratory/
│   │   ├── pharmacy/
│   │   ├── billing/
│   │   ├── notifications/
│   │   ├── analytics/
│   │   └── audit/
│   ├── integrations/
│   │   ├── email/
│   │   ├── sms/
│   │   ├── storage/
│   │   └── ai-service/
│   ├── jobs/
│   └── utils/
├── prisma/
│   ├── schema.prisma
│   ├── migrations/
│   └── seed.ts
├── tests/
├── Dockerfile
└── package.json
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
