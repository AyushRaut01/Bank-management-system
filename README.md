# Bank Management System - JSP & Servlet

## Introduction


Welcome to the Bank Management System, a Java web application built using JSP and Servlet technologies. This project provides a comprehensive system for managing bank operations, catering to both employees and customers.
![Login Page](<img width="1824" height="805" alt="Screenshot 2025-07-31 202624" src="https://github.com/user-attachments/assets/2aaf88cc-bafd-40a2-a747-28d4ff335093" />
)

![Customer portal]<img width="1872" height="789" alt="Screenshot 2025-07-31 202824" src="https://github.com/user-attachments/assets/8c477d8b-ac4f-4c18-a005-6f3eb4388974" />

![Deposit view]<img width="1787" height="822" alt="Screenshot 2025-07-31 203803" src="https://github.com/user-attachments/assets/f4a96f59-c480-4a21-aeff-860b04183af9" />


## Features

![Employee Portal]
- **Employee Portal:**
  - Customer Management
    - Add new customer.
    - View details of customers.
    - Update name/password.
    - Block/unblock customer accounts.
    - Delete customer accounts.
    - View all customer accounts.

![Customer Portal]
- **Customer Portal:**
  - Account Management
    - Transfer money.
    - Deposit money.
    - Withdraw money.
    - Check balance.
    - Update account details.
    - Account statement.
    - Delete accounts.

- **Security and Transactions:**
  - User Authentication and Authorization.
  - Transaction Management.
  - Database Normalization.

- **Logging and Error Handling:**
  - Comprehensive error handling for user-friendly feedback.
  - Logging mechanisms to track critical actions and events.

## Technologies Used

- Java
- JSP (JavaServer Pages)
- Servlets
- JDBC (Java Database Connectivity)
- Maven
- JUnit (for testing)

## Getting Started

### Prerequisites

- Java Development Kit (JDK)
- Apache Maven
- Servlet Container (e.g., Apache Tomcat)
- Database (Prefered `MySQL`)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/BankManagementSystem-JSP-Servlet.git
   ```
2. Configure your database settings as shown in Schema diagram
   ![Schema](<img width="827" height="328" alt="Screenshot 2025-07-23 160705" src="https://github.com/user-attachments/assets/2ae0dec8-41dd-468e-aedc-3b141d41ce8c" />
)
3. Build the project using Maven:
   ```bash
   mvn clean install
   ```
4. Deploy the application to your servlet container.
5. Access the application at `http://localhost:8080/bank-website`
