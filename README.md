# SOLID Principles in Dart

A practical journey to understanding and applying the SOLID principles using Dart.

This repository contains hands-on exercises designed to understand each principle by identifying code design problems and refactoring the code step by step.

## 📚 SOLID Principles

| Principle | Description | Status | Details |
|---|---|---|---|
| **S — Single Responsibility Principle (SRP)** | A class should have one responsibility and one reason to change. | ✅ Completed | [Read More](SRP.md) |
| **O — Open/Closed Principle (OCP)** | Open for extension, closed for modification. | ⏳ Not Started | Coming Soon |
| **L — Liskov Substitution Principle (LSP)** | Subtypes should be replaceable for their base types. | ⏳ Not Started | Coming Soon |
| **I — Interface Segregation Principle (ISP)** | Clients should not depend on methods they don't use. | ⏳ Not Started | Coming Soon |
| **D — Dependency Inversion Principle (DIP)** | Depend on abstractions rather than concrete implementations. | ⏳ Not Started | Coming Soon |
---

## 🎯 Learning Approach

For each principle, I follow these steps:

1. Understand the principle and its purpose.
2. Analyze an example that violates the principle.
3. Identify the design problem.
4. Refactor the code to follow the principle.
5. Review what changed and what I learned.

---

## ✅ Progress

### 1. Single Responsibility Principle (SRP)

**Definition:** A class should have one responsibility and one reason to change.

**Practical Example:** Student Report Management

The exercise focuses on separating the responsibilities involved in managing a student's report:

- `Student`: Stores the student's information and grades.
- `CalculateAverage`: Calculates the average grade.
- `StudentReport`: Holds the student and the calculated average.
- `DisplayReport`: Displays the report.
- `SaveToDatabase`: Handles saving the report.

**Key Takeaway:**

Separating responsibilities makes code easier to understand, maintain, test, and modify. Each class should have a clear purpose rather than handling several unrelated tasks.

---

## 🛠️ Technologies

- Dart
- Object-Oriented Programming (OOP)
- SOLID Design Principles

---

*Learning by practicing, refactoring, and improving one principle at a time.*
