# 🚀 Nova Jobs: Innovation Module Report

## 1. Introduction
The Innovation Module enhances the Nova Jobs platform by introducing advanced functionality to improve security, user experience, and automated support. This report details the technical implementation of two advanced features: **OTP Email Verification** and an **Interactive Support Chatbot**.

## 2. Feature 1: OTP Email Verification (Third-Party Integration)
To prevent spam accounts and ensure the legitimacy of our users, we implemented an automated One-Time Password (OTP) verification system during registration.

### 2.1 Architecture & Workflow
* **Registration Trigger**: When a user submits the registration form, their details are temporarily stored in the Server Session (`HttpSession`) rather than the database.
* **OTP Generation**: A secure 6-digit random code is generated in the `AuthController`.
* **Third-Party Email API**: Using `JavaMailSender` (Spring Boot Mail Starter), an automated email containing the OTP is dispatched via a third-party SMTP server (e.g., Google's SMTP).
* **Verification**: The user is redirected to an `/otp-verification` page. If the code they enter matches the code stored in their session, their account is permanently saved to the database.

### 2.2 Technologies Used
* **Java `Random` & `String.format`** for code generation.
* **Jakarta `HttpSession`** for temporary state management without bloating the database.
* **Spring Boot Starter Mail** for API communication with SMTP servers.

## 3. Feature 2: "NovaBot" Automated Support Chatbot
To improve user onboarding and provide instant answers, a floating chatbot widget was embedded globally across the platform.

### 3.1 Architecture & Workflow
* **Global Injection**: The chatbot UI and logic were injected into the Thymeleaf `layout.html` navbar fragment, ensuring it is present on every single page of the application automatically.
* **UI Design**: The widget aligns with the platform's glassmorphism aesthetic, featuring a togglable floating icon in the bottom right corner.
* **Rule-Based Engine**: The chatbot uses a custom JavaScript rule engine (`getResponse()` function) to process user inputs. It scans for keywords (e.g., "apply", "post a job") and instantly renders predefined helpful responses into the chat log DOM.

### 3.2 Technologies Used
* **Vanilla JavaScript (ES6)** for DOM manipulation, event listeners, and simulated UI updates.
* **CSS Flexbox & Absolute Positioning** to create the floating window.
* **Thymeleaf Fragments** for seamless global injection.

## 4. Conclusion
The implementation of these advanced features significantly elevates Nova Jobs from a standard CRUD application to a modern, robust platform. The OTP verification ensures data integrity and security, while the NovaBot provides an innovative, user-centric approach to site navigation and support.
