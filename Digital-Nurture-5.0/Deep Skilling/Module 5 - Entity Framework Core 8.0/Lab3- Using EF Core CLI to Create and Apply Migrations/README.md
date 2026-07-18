# Entity Framework Core Migrations

## Overview
This project demonstrates how to create and manage database schema changes using **Entity Framework Core Migrations**. It includes the initial migration, model snapshot, and screenshots of the migration results.

## Project Structure

```
├── 20260711162843_InitialCreate.cs
├── 20260711162843_InitialCreate.Designer.cs
├── AppDbContextModelSnapshot.cs
├── lab31.png
├── lab32.png
└── README.md
```

## Files

### 20260711162843_InitialCreate.cs
- Contains the initial migration.
- Defines the database schema creation logic.
- Creates the required database tables and constraints.

### 20260711162843_InitialCreate.Designer.cs
- Auto-generated migration metadata.
- Stores migration information used by Entity Framework Core.

### AppDbContextModelSnapshot.cs
- Represents the current database model.
- Updated automatically whenever a new migration is added.
- Used by Entity Framework Core to compare model changes.

### lab31.png
- Screenshot showing the successful creation of the migration.

### lab32.png
- Screenshot showing the database after applying the migration.

## Features
- Entity Framework Core Migrations
- Initial database creation
- Automatic model snapshot generation
- Database schema versioning
- Migration management

## Technologies Used
- C#
- .NET
- Entity Framework Core
- SQL Server
- Visual Studio

## How to Run
1. Open the project in Visual Studio.
2. Restore the required NuGet packages.
3. Configure the database connection string.
4. Open the Package Manager Console.
5. Run the following commands:

```powershell
Add-Migration InitialCreate
Update-Database
```

6. Verify that the database is created successfully.
7. Compare the output with the screenshots `lab31.png` and `lab32.png`.

## Learning Outcomes
- Understand Entity Framework Core Migrations.
- Create and apply database migrations.
- Generate migration files.
- Manage database schema changes.
- Maintain model snapshots for version control.

## Author
**Mopidevi Vivek Varma**
```
