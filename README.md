# ⚡ Electricity Billing System

A professional desktop-based application developed to efficiently manage electricity consumers, automate billing calculations, and securely maintain transaction records. Built using **Python**, **Tkinter**, and **MySQL**, this system ensures accuracy, security, and ease of use.

---

## 📌 Table of Contents

- [📖 Overview](#-overview)
- [✨ Key Features](#-key-features)
- [🛠️ Tech Stack](#-tech-stack)
- [🏗️ System Architecture](#-system-architecture)
- [⚙️ Installation & Setup](#-installation--setup)
- [🗄️ Database Schema](#-database-schema)
- [📸 Screenshots](#-screenshots)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)
- [👨‍💻 Author](#-author)

---

## 📖 Overview

The **Electricity Billing System** simplifies electricity billing operations by automating calculations, maintaining records, and generating professional invoices.

---

## ✨ Key Features

### 🔐 Authentication & Security
- Secure signup and login system  
- Password hashing using **Hashlib/Bcrypt**  
- Session handling with auto logout  

### 🖥️ User-Friendly GUI
- Built using **Tkinter**  
- Clean and intuitive interface  
- Dashboard for centralized control  

### ⚡ Smart Billing System
- Automatic bill calculation  
- Tier-based pricing  

### 📊 Transaction Management
- Store records in MySQL  
- Search using Customer ID  

### 📄 PDF Invoice Generation
- Generate invoices using **ReportLab**  

---

## 🛠️ Tech Stack

| Category | Technology |
|---------|-----------|
| Programming | Python |
| GUI | Tkinter |
| Database | MySQL |
| PDF | ReportLab |

---

## 🏗️ System Architecture
```text
  +---------------------------+
  |     User Interface        |
  |     (Tkinter GUI)         |
  +-------------+-------------+
                |
                ▼
  +---------------------------+
  |   Application Logic       |
  +-------------+-------------+
                |
                ▼
  +---------------------------+
  |     Database Layer        |
  |        (MySQL)            |
  +-------------+-------------+
                |
                ▼
  +---------------------------+
  |   Report Generation       |
  |     (ReportLab)           |
  +---------------------------+
```
---
## ⚙️ Installation & Setup
---
## 🔹 Prerequisites
- Python 3.x
- MySQL Server
- pip

---

## 🔹 Clone Repository
```bash
git clone https://github.com/dhruv-005/ELECTRICITY-BILLING-SYSTEM.git
cd ELECTRICITY-BILLING-SYSTEM
```
---
### 🔹 Install Dependencies
```bash
pip install reportlab mysql-connector-python bcrypt
```
---
### 🔹 Setup Database
```bash
CREATE DATABASE electricity_billing;

USE electricity_billing;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    units INT,
    bill_amount FLOAT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
---
## 🔹 Configure Database
```bash
host = "localhost"
user = "root"
password = "your_password"
database = "electricity_billing"
```
---
### 🔹 Run Application
```bash
python main.py
```
---

### 🗄️ Database Schema
Users Table
| Field    | Type    | Description     |
| -------- | ------- | --------------- |
| id       | INT     | Primary Key     |
| username | VARCHAR | User name       |
| password | VARCHAR | Hashed password |

Customer Table
| Field       | Type      | Description    |
| ----------- | --------- | -------------- |
| id          | INT       | Primary Key    |
| name        | VARCHAR   | Customer name  |
| units       | INT       | Units consumed |
| bill_amount | FLOAT     | Total bill     |
| date        | TIMESTAMP | Record time    |

---

### 📸 Screenshots
  - 🔹 Login Interface
  - 🔹 Dashboard Interface
  - 🔹 Billing Interface
  - 🔹 PDF Invoice Output

---

### 🤝 Contributing
Contributions are welcome!

- Fork the repository
- Create a new branch
- Commit your changes
- Submit a pull request

---

### 📜 License
- This project is licensed under the GENERAL PUBLIC LICENSE License.
- Version 3

---

### 👨‍💻 Author
- Dhruv Sonani 
- GitHub: https://github.com/dhruv-005

---
