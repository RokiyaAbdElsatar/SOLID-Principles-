# SRP — Interview Questions

A collection of interview questions to practice the **Single Responsibility Principle (SRP)** in Object-Oriented Programming.

Choose your answer before revealing the explanation.

---

## Question 1: What is SRP?

**What does the Single Responsibility Principle state?**

- A) A class must contain only one method.
- B) A class should have one responsibility and one reason to change.
- C) Every method must have its own class.
- D) A class should handle all operations related to one application.

<details>
<summary>Show Answer & Explanation</summary>

**Correct Answer: B**

SRP states that a class should have one responsibility and one reason to change. This makes code easier to maintain, test, and understand.

</details>

---

## Question 2: Multiple Methods

**Can a class contain multiple methods and still follow SRP?**

- A) No, every class must have exactly one method.
- B) Yes, if all methods serve the same responsibility.
- C) Yes, regardless of what the methods do.
- D) No, a class should contain only variables.

<details>
<summary>Show Answer & Explanation</summary>

**Correct Answer: B**

SRP focuses on responsibilities, not the number of methods. A class can have multiple methods as long as they belong to the same cohesive responsibility.

</details>

---

## Question 3: Identifying a Violation

Consider this Dart class:

```dart
class UserService {
  void validateUser() {
    // Validate user data
  }

  void saveUser() {
    // Save user to database
  }

  void sendEmail() {
    // Send welcome email
  }
}
```

**Does this class violate SRP?**

- A) No, because all methods are related to the user.
- B) Yes, because it has different responsibilities that may change independently.
- C) No, because the class has only three methods.
- D) Yes, because every method must be in a separate class.

<details>
<summary>Show Answer & Explanation</summary>

**Correct Answer: B**

Validation, database operations, and email sending are separate responsibilities. Changes to one area may require changes for reasons unrelated to the others.

</details>

---

## Question 4: Refactoring

**How would you refactor the `UserService` class to follow SRP?**

- A) Rename it to `UserManager`.
- B) Move all methods into one class called `UserHelper`.
- C) Separate validation, database saving, and email sending into focused classes.
- D) Delete two methods and keep only `saveUser()`.

<details>
<summary>Show Answer & Explanation</summary>

**Correct Answer: C**

Separate the responsibilities into cohesive classes, such as `UserValidator`, `UserRepository`, and `EmailService`. Each class should handle its own responsibility.

</details>

---

## Question 5: Number of Classes

**Does applying SRP always mean creating more classes?**

- A) Yes, more classes always mean better design.
- B) No, separate meaningful responsibilities without creating unnecessary classes.
- C) No, SRP means keeping everything in one class.
- D) Yes, every method must have its own class.

<details>
<summary>Show Answer & Explanation</summary>

**Correct Answer: B**

The goal is to separate distinct responsibilities, not to maximize the number of classes. Unnecessary classes can make code more complicated.

</details>

---

## Question 6: A Practical Example

Consider this Dart class:

```dart
class Student {
  String name;

  Student(this.name);

  void printName() {
    print(name);
  }
}
```

**Does this class violate SRP?**

- A) Yes, because every method must be in a separate class.
- B) Yes, because storing a name and printing it are always separate responsibilities.
- C) Not necessarily; it depends on the intended responsibility and design context.
- D) No, because a class can never violate SRP if it has only one field.

<details>
<summary>Show Answer & Explanation</summary>

**Correct Answer: C**

The class does not automatically violate SRP. Printing the name may be acceptable in a simple example, depending on the intended design. In a larger application, presentation responsibilities may be better handled by a separate class.

</details>

---

## Key Takeaways

- SRP focuses on responsibilities, not method count.
- Different responsibilities may have different reasons to change.
- Refactor classes based on meaningful responsibilities.
- Avoid creating unnecessary classes.
- Evaluate the design in its context instead of applying rigid rules.

**Keep practicing. Understanding the reason matters more than memorizing the answer.**
