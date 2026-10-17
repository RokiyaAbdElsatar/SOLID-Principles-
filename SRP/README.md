# Single Responsibility Principle (SRP)

## 1. What is SRP?

The **Single Responsibility Principle (SRP)** is the first principle of SOLID.

It states that:

> A class should have one responsibility and one reason to change.

In simple words, each class should focus on one specific responsibility instead of handling multiple unrelated tasks.

## 2. The Problem

In a student report management system, we need to:

- Store student information and grades.
- Calculate the average grade.
- Display the student's report.
- Save the report to a database.

If one class handles all these tasks, it will have multiple responsibilities. A change in the calculation logic, report display, or database operations could require modifying the same class.

This makes the code harder to maintain, test, and extend.

## 3. Applying SRP

To follow SRP, we separated the responsibilities into different classes.

| Class | Responsibility |
|---|---|
| `Student` | Stores the student's name and grades. |
| `CalculateAverage` | Calculates the average of the grades. |
| `StudentReport` | Holds the student information and calculated average. |
| `DisplayReport` | Displays the student's report. |
| `SaveToDatabase` | Handles saving the report. |

Each class now has a clear purpose.

## 4. Design Decisions

During the refactoring process, we made the following changes:

- Separated grade calculation from report display.
- Made `StudentReport` hold the calculated average instead of performing the calculation itself.
- Kept database-saving operations separate from displaying the report.
- Passed the required data between classes instead of making one class responsible for everything.

## 5. What I Learned

- A class should have a clear and focused responsibility.
- Calculating, displaying, and saving data are different responsibilities.
- Separating responsibilities makes code easier to understand, test, and maintain.
- SRP does not mean creating as many classes as possible. Each class should represent a meaningful responsibility.

## 6. Key Takeaway

**One class, one responsibility, one reason to change.**

Following SRP helps build code that is easier to maintain and modify as an application grows.

---

**Language:** Dart  
**Concepts:** Object-Oriented Programming (OOP), SOLID Principles
