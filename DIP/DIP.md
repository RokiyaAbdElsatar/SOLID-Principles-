# Dependency Inversion Principle (DIP)

<img width="100%" alt="image" src="https://github.com/user-attachments/assets/33876c3f-8ca6-4868-83a3-78676d1f912e" />


## 1. What is DIP?

The **Dependency Inversion Principle (DIP)** is the fifth principle of SOLID.

It states that:

> High-level modules should not depend on low-level modules. Both should depend on abstractions.

> Abstractions should not depend on details. Details should depend on abstractions.

In simple words, classes should depend on abstractions rather than concrete implementations.

This helps reduce tight coupling and makes code more flexible, maintainable, and easier to test.

## 2. The Problem

In a student management system, we need to save student data using a database, such as:

- MySQL Database.
- Firebase Database.

If the `StudentService` class directly creates and depends on `MySQLDatabase`, it becomes tightly coupled to that specific implementation.

Switching to another database may require modifying the existing `StudentService` class.

As the application grows and more implementations are introduced, managing these dependencies becomes harder and testing becomes less flexible.

## 3. Applying DIP

To follow DIP, we introduced an abstraction called `DataBase` and created separate classes for each database implementation.

| Class | Responsibility |
|---|---|
| `DataBase` | Defines a common contract for saving data. |
| `MySQLDatabase` | Saves data using MySQL. |
| `FirebaseDatabase` | Saves data using Firebase. |
| `StudentService` | Saves student data using a provided database implementation. |

Each database class implements the same abstraction but provides its own implementation of the `save()` method.

`StudentService` depends on the `DataBase` abstraction instead of directly depending on a specific database implementation.

This allows us to switch between MySQL and Firebase without modifying the existing `StudentService` class.

## 4. Design Decisions

During the refactoring process, we made the following changes:

- Introduced the `DataBase` abstraction to define a common contract for database operations.
- Created separate implementations for `MySQLDatabase` and `FirebaseDatabase`.
- Made `StudentService` depend on the `DataBase` abstraction instead of a concrete database class.
- Used constructor injection to provide the database dependency from outside `StudentService`.
- Allowed different database implementations to be used without modifying the existing business logic.

## 5. What I Learned

- High-level modules should not depend directly on low-level modules.
- Both high-level and low-level modules should depend on abstractions.
- Abstractions help reduce tight coupling between classes.
- Constructor injection allows dependencies to be provided from outside a class.
- Depending on abstractions makes it easier to replace implementations and test business logic.
- DIP and Dependency Injection are related but different concepts: DIP is a design principle, while Dependency Injection is a technique that can help implement it.
- DIP does not require creating abstractions for every class; they should be introduced when they provide a meaningful benefit.

## 6. Key Takeaway

**Depend on abstractions, not concretions.**

Following DIP helps build flexible and maintainable code by separating high-level business logic from low-level implementation details.

