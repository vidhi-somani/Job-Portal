# 💼 Job Portal Management System
### Java Swing Desktop Application

---

## 📁 Project Structure

```
JobPortal/
├── src/
│   └── jobportal/
│       ├── Main.java                    ← Entry Point
│       ├── model/
│       │   ├── User.java                ← User entity (Admin/Employer/Candidate)
│       │   ├── Job.java                 ← Job posting entity
│       │   └── Application.java         ← Job application entity
│       ├── dao/
│       │   └── DataStore.java           ← In-memory data layer (CRUD + Search)
│       ├── ui/
│       │   ├── LoginFrame.java          ← Login screen
│       │   ├── RegisterDialog.java      ← New account registration
│       │   ├── MainFrame.java           ← Main app window with sidebar
│       │   ├── AdminDashboardPanel.java ← Admin stats + recent applications
│       │   ├── EmployerDashboardPanel.java ← Employer stats + job listings
│       │   ├── BrowseJobsPanel.java     ← Search/filter/apply to jobs
│       │   ├── PostJobPanel.java        ← Employer: post new job
│       │   ├── ManageJobsPanel.java     ← Manage/delete/toggle jobs
│       │   ├── ApplicationsPanel.java   ← Review + update application status
│       │   ├── MyApplicationsPanel.java ← Candidate: track applications
│       │   ├── UserManagementPanel.java ← Admin: manage all users
│       │   └── ProfilePanel.java        ← Candidate profile + resume
│       └── util/
│           └── Theme.java               ← Colors, fonts, styling utilities
├── run.bat    ← Windows build + run script
├── run.sh     ← Linux/Mac build + run script
└── README.md
```

---

## 🚀 How to Run

### Prerequisites
- JDK 11 or higher installed
- Check with: `java -version`

### Windows
```bat
run.bat
```

### Linux / macOS
```bash
chmod +x run.sh
./run.sh
```

### Manual (any platform)
```bash
mkdir out
find src -name "*.java" | xargs javac -d out
java -cp out jobportal.Main
```

---

## 🔑 Demo Credentials

| Role      | Username   | Password   |
|-----------|------------|------------|
| Admin     | admin      | admin123   |
| Employer  | employer1  | emp123     |
| Employer  | employer2  | emp456     |
| Candidate | john       | john123    |
| Candidate | priya      | priya123   |

---

## ✨ Features

### 👤 All Users
- Secure login / logout
- New account registration (Candidate or Employer)

### 🛡️ Admin
- Dashboard with live stats (Users, Jobs, Applications)
- Manage all users (filter by role, delete)
- Manage all job postings (toggle active/closed, delete)
- View and update all applications

### 🏢 Employer
- Dashboard showing own job stats & applicant count
- Post new jobs (title, company, location, category, type, salary, description, requirements)
- Manage own job listings (toggle, delete)
- Review applications for their jobs
- Update application status: PENDING → REVIEWED → SHORTLISTED → ACCEPTED / REJECTED

### 👤 Candidate
- Browse & search jobs (keyword, location, category, job type filters)
- View detailed job description
- Apply with a cover letter (one-click)
- Track own applications with color-coded status
- Edit profile and add resume/summary

---

## 🏗 Architecture

```
UI Layer (javax.swing)
     │
     ▼
DataStore (Singleton, in-memory ArrayList)
     │
     ▼
Model Classes (User, Job, Application)
```

- **No database required** — data lives in memory (easily swappable with JDBC/SQLite)
- **Role-based access** — sidebar menu changes dynamically per role
- **MVC-inspired** — models, data layer, and UI panels are fully separated

---

## 🔧 Extending the Project

| Feature             | Where to add                          |
|---------------------|---------------------------------------|
| Database (MySQL)    | Replace `DataStore` with JDBC calls   |
| File persistence    | Add JSON/CSV save-load in DataStore   |
| Password hashing    | Use `MessageDigest` in User/DataStore |
| Email notifications | Add JavaMail in ApplicationsPanel     |
| Export to PDF/CSV   | Add Apache PDFBox / OpenCSV           |

---

## 📦 Requirements
- Java 11+ (uses `switch` expressions)
- No external libraries required — pure Java SE + Swing
