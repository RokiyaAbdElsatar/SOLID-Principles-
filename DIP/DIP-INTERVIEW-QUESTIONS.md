# DIP Interview Questions

Test your understanding of the **Dependency Inversion Principle (DIP)** with these multiple-choice interview questions.

Choose your answer, then expand **Show Answer** to check whether you are correct and understand why.

---

## Question 1: What does DIP stand for?

- A) Data Integration Principle
- B) Dependency Inversion Principle
- C) Design Implementation Principle
- D) Dependency Interaction Principle

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Dependency Inversion Principle**

**Explanation:** DIP is one of the five SOLID principles. It encourages high-level and low-level modules to depend on abstractions rather than concrete implementations.

</details>

---

## Question 2: What is the main idea behind DIP?

- A) Every class should have only one method.
- B) Classes should never depend on other classes.
- C) High-level and low-level modules should depend on abstractions.
- D) All methods should be static.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) High-level and low-level modules should depend on abstractions.**

**Explanation:** DIP reduces tight coupling by making modules depend on abstractions instead of specific implementations.

</details>

---

## Question 3: What is a high-level module?

- A) A module that contains the main business logic.
- B) A module that only prints messages.
- C) A module that contains database implementation details.
- D) A module that cannot depend on abstractions.

<details>
<summary>Show Answer</summary>

**Correct Answer: A) A module that contains the main business logic.**

**Explanation:** High-level modules represent application policies or business logic. For example, `StudentService` decides when student data should be saved.

</details>

---

## Question 4: What is a low-level module?

- A) A module that defines business rules only.
- B) A module that handles implementation details.
- C) An abstract class that has no implementation.
- D) A module that must be static.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) A module that handles implementation details.**

**Explanation:** Low-level modules implement technical details, such as saving data to MySQL or Firebase.

</details>

---

## Question 5: What is the role of an abstraction in DIP?

- A) To create objects automatically.
- B) To prevent inheritance.
- C) To define a common contract that implementations can follow.
- D) To replace every class with an interface.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) To define a common contract that implementations can follow.**

**Explanation:** An abstraction defines the operations that implementations must provide without forcing the consuming class to depend on a specific implementation.

</details>

---

## Question 6: Which design violates DIP?

- A) `StudentService` depends on a `DataBase` abstraction.
- B) `MySQLDatabase` implements the `DataBase` abstraction.
- C) `StudentService` directly creates and depends on `MySQLDatabase`.
- D) `StudentService` receives a database dependency through its constructor.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) `StudentService` directly creates and depends on `MySQLDatabase`.**

**Explanation:** Directly creating a concrete database inside the service tightly couples business logic to a specific implementation and makes replacing that implementation harder.

</details>

---

## Question 7: What is Dependency Injection?

- A) A technique for providing dependencies to a class from outside.
- B) A principle that requires every class to be abstract.
- C) A technique for removing all dependencies from a program.
- D) A way to prevent objects from being created.

<details>
<summary>Show Answer</summary>

**Correct Answer: A) A technique for providing dependencies to a class from outside.**

**Explanation:** Dependency Injection allows a class to receive the objects it needs rather than creating those dependencies itself.

</details>

---

## Question 8: What is the difference between DIP and Dependency Injection?

- A) They are exactly the same concept.
- B) DIP is a design principle, while Dependency Injection is a technique.
- C) Dependency Injection is a SOLID principle, while DIP is a Flutter package.
- D) DIP only applies to databases.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) DIP is a design principle, while Dependency Injection is a technique.**

**Explanation:** DIP describes how dependencies should be structured. Dependency Injection is one way to provide dependencies and help achieve that design.

</details>

---

## Question 9: Which example demonstrates Constructor Injection in Dart?

- A)
```dart
class StudentService {
  final DataBase database = MySQLDatabase();
}
```

- B)
```dart
class StudentService {
  final DataBase database;

  StudentService(this.database);
}
```

- C)
```dart
class StudentService {
  static final database = MySQLDatabase();
}
```

- D)
```dart
class StudentService {
  void save() {
    MySQLDatabase().save('Ali');
  }
}
```

<details>
<summary>Show Answer</summary>

**Correct Answer: B)**

**Explanation:** The constructor receives the dependency from outside the class. This makes it possible to supply different implementations of `DataBase` without changing `StudentService`.

</details>

---

## Question 10: Consider the following code. Which principle does it demonstrate?

```dart
abstract class DataBase {
  void save(String data);
}

class MySQLDatabase implements DataBase {
  @override
  void save(String data) {
    print('Saving $data to MySQL');
  }
}

class StudentService {
  final DataBase database;

  StudentService(this.database);

  void saveStudent(String name) {
    database.save(name);
  }
}
```

- A) Single Responsibility Principle (SRP)
- B) Open/Closed Principle (OCP)
- C) Dependency Inversion Principle (DIP)
- D) Interface Segregation Principle (ISP)

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Dependency Inversion Principle (DIP)**

**Explanation:** `StudentService` depends on the `DataBase` abstraction rather than directly depending on `MySQLDatabase`.

</details>

---

## Question 11: What happens when we introduce a new database implementation that implements `DataBase`?

- A) We must always rewrite `StudentService`.
- B) We can provide the new implementation without changing `StudentService`.
- C) We must delete the `DataBase` abstraction.
- D) We must make every database method static.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) We can provide the new implementation without changing `StudentService`.**

**Explanation:** Since the service depends on the abstraction, any compatible implementation can be injected. The new class must satisfy the `DataBase` contract.

</details>

---

## Question 12: Does DIP mean that classes should never depend on other classes?

- A) Yes, all dependencies must be removed.
- B) Yes, every class must be completely independent.
- C) No, classes can depend on abstractions instead of concrete implementations.
- D) No, because DIP only applies to abstract classes.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) No, classes can depend on abstractions instead of concrete implementations.**

**Explanation:** DIP does not eliminate dependencies. It changes how dependencies are structured to reduce tight coupling and improve flexibility.

</details>

---

## Question 13: How does DIP improve testability?

- A) It eliminates the need for tests.
- B) It allows us to replace real dependencies with fake or mock implementations.
- C) It makes every method return a constant value.
- D) It prevents classes from receiving constructor parameters.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) It allows us to replace real dependencies with fake or mock implementations.**

**Explanation:** A service that depends on an abstraction can receive a test implementation instead of connecting to a real database or external service.

</details>

---

## Question 14: Which statement about DIP is correct?

- A) Every class must have an abstract parent.
- B) Concrete implementations must never contain any logic.
- C) Abstractions should not depend on details; details should depend on abstractions.
- D) High-level modules should always create low-level objects.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Abstractions should not depend on details; details should depend on abstractions.**

**Explanation:** This is the second part of the Dependency Inversion Principle. Implementation details should follow the abstraction's contract rather than dictate how high-level logic is designed.

</details>

---

## Question 15: When should we introduce an abstraction to follow DIP?

- A) Every time we create a class, regardless of its purpose.
- B) Only when using Flutter.
- C) When it provides a meaningful benefit, such as reducing coupling or improving testability.
- D) Never, because abstractions make code harder to maintain.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) When it provides a meaningful benefit, such as reducing coupling or improving testability.**

**Explanation:** DIP does not require unnecessary abstractions. Good design introduces them when they help separate business logic from implementation details.

</details>

---

## Final Review

Remember these key points:

- **DIP:** High-level and low-level modules should depend on abstractions.
- **Abstraction:** Defines a common contract for different implementations.
- **Dependency Injection:** Provides dependencies from outside a class.
- **Constructor Injection:** Passes dependencies through a constructor.
- **Loose Coupling:** Makes implementations easier to replace, maintain, and test.

**Key Takeaway:**

> Depend on abstractions, not concretions.

