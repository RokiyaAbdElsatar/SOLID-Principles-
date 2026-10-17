# Interface Segregation Principle (ISP) Interview Questions

Test your understanding of the **Interface Segregation Principle (ISP)** with these multiple-choice interview questions.

Choose your answer mentally, then expand **Show Answer** to check whether you are correct and understand why.

---

## Question 1: What does ISP stand for?

- A) Interface Separation Process
- B) Interface Segregation Principle
- C) Inheritance Structure Principle
- D) Implementation Segregation Pattern

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Interface Segregation Principle**

**Explanation:** ISP stands for Interface Segregation Principle. It is the fourth principle of SOLID and focuses on creating small, specific interfaces instead of forcing classes to depend on methods they do not use.

</details>

---

## Question 2: What is the main idea behind ISP?

- A) Every class must inherit from a single parent class.
- B) All methods should be placed in one interface.
- C) Clients should not be forced to depend on interfaces they do not use.
- D) Every method must have its own class.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Clients should not be forced to depend on interfaces they do not use.**

**Explanation:** ISP prevents classes from being forced to implement or depend on unnecessary methods. Interfaces should contain only closely related functionality.

</details>

---

## Question 3: Which design violates ISP?

- A) A printer interface contains only a `printDocument()` method.
- B) A scanner interface contains only a `scanDocument()` method.
- C) A single machine interface forces basic printers to implement printing, scanning, and faxing.
- D) A multi-function printer implements printing, scanning, and faxing interfaces.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) A single machine interface forces basic printers to implement printing, scanning, and faxing.**

**Explanation:** A basic printer does not need scanning or faxing functionality. Forcing it to implement these methods creates unnecessary dependencies and violates ISP.

</details>

---

## Question 4: How can we apply ISP to a large interface?

- A) Add more methods to the interface.
- B) Split it into smaller, specialized interfaces.
- C) Make every implementing class abstract.
- D) Remove all interfaces from the application.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Split it into smaller, specialized interfaces.**

**Explanation:** Dividing a large interface into smaller interfaces allows each class to implement only the functionality it actually supports.

</details>

---

## Question 5: Consider the following Dart code. What is the main problem?

```dart
abstract class Machine {
  void printDocument();
  void scanDocument();
  void faxDocument();
}
```

- A) Dart does not support abstract classes.
- B) An abstract class cannot contain methods.
- C) The interface may force classes to implement unnecessary methods.
- D) Every method must return a value.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) The interface may force classes to implement unnecessary methods.**

**Explanation:** The problem is not the abstract class itself. The problem is combining unrelated capabilities into one interface when some implementing classes do not need all of them.

</details>

---

## Question 6: Which interfaces should a basic printer implement?

```dart
abstract class Printer {
  void printDocument();
}

abstract class Scanner {
  void scanDocument();
}

abstract class FaxMachine {
  void faxDocument();
}
```

- A) `Printer` only.
- B) `Printer` and `Scanner`.
- C) `Printer`, `Scanner`, and `FaxMachine`.
- D) `Scanner` and `FaxMachine`.

<details>
<summary>Show Answer</summary>

**Correct Answer: A) `Printer` only.**

**Explanation:** A basic printer only supports printing, so it should implement only the `Printer` interface. It should not be forced to provide scanning or faxing methods.

</details>

---

## Question 7: Which declaration is correct for a smart printer that supports printing and scanning, but not faxing?

- A) `class SmartPrinter implements Printer, Scanner, FaxMachine`
- B) `class SmartPrinter implements Printer, Scanner`
- C) `class SmartPrinter implements FaxMachine`
- D) `class SmartPrinter implements Printer, FaxMachine`

<details>
<summary>Show Answer</summary>

**Correct Answer: B) `class SmartPrinter implements Printer, Scanner`**

**Explanation:** The smart printer supports printing and scanning only. Implementing `Printer` and `Scanner` provides the required contracts without introducing an unnecessary dependency on `FaxMachine`.

</details>

---

## Question 8: Can a Dart class implement multiple interfaces?

- A) No, a class can implement only one interface.
- B) Yes, but only if all interfaces have the same methods.
- C) Yes, by using the `implements` keyword.
- D) No, unless the class is abstract.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Yes, by using the `implements` keyword.**

**Explanation:** Dart allows a class to implement multiple interfaces using `implements`. The class must provide implementations for all required instance members declared by those interfaces, unless the class is abstract.

</details>

---

## Question 9: What is the main benefit of following ISP?

- A) It eliminates the need for abstraction.
- B) It reduces unnecessary dependencies and improves maintainability.
- C) It guarantees that the application will never contain bugs.
- D) It prevents classes from implementing multiple interfaces.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) It reduces unnecessary dependencies and improves maintainability.**

**Explanation:** Smaller, focused interfaces make classes easier to understand, test, modify, and extend without affecting unrelated functionality.

</details>

---

## Question 10: Does ISP mean that every method must have its own interface?

- A) Yes, every method must always be separated.
- B) No, interfaces should be separated when it provides a meaningful design benefit.
- C) Yes, otherwise the code violates SOLID.
- D) No, because ISP applies only to abstract classes.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) No, interfaces should be separated when it provides a meaningful design benefit.**

**Explanation:** ISP encourages focused interfaces, not unnecessary fragmentation. Methods that belong together and are used by the same clients can remain in one interface.

</details>

---

## Question 11: A new scanning feature is added to an application. Which design best follows ISP?

- A) Add `scanDocument()` to every existing interface.
- B) Add scanning to the `Printer` interface, even if some printers cannot scan.
- C) Create a dedicated `Scanner` interface and let scanning-capable classes implement it.
- D) Force every class to implement `scanDocument()` with an empty body.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Create a dedicated `Scanner` interface and let scanning-capable classes implement it.**

**Explanation:** A dedicated interface allows scanning functionality to be added without forcing classes that cannot scan to implement an irrelevant method.

</details>

---

## Question 12: What is the difference between ISP and SRP?

- A) They are exactly the same principle.
- B) SRP focuses on a class having one reason to change, while ISP focuses on clients not depending on interfaces they do not use.
- C) SRP applies only to interfaces, while ISP applies only to functions.
- D) ISP replaces the need to follow SRP.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) SRP focuses on a class having one reason to change, while ISP focuses on clients not depending on interfaces they do not use.**

**Explanation:** Both principles encourage focused designs, but they address different concerns. SRP focuses on the responsibility of a class or module, while ISP focuses on the design of interfaces and their clients.

</details>

---

## Question 13: Which statement about ISP is correct?

- A) Every class should implement every available interface.
- B) Interfaces should contain as many methods as possible.
- C) Classes should depend only on the functionality they need.
- D) Abstract classes should never be used.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Classes should depend only on the functionality they need.**

**Explanation:** ISP encourages focused contracts and avoids unnecessary dependencies. It does not prohibit abstract classes or require every class to implement every interface.

</details>

---

## Question 14: What happens when an interface contains methods that many implementing classes do not need?

- A) The code automatically follows ISP.
- B) The design may become harder to maintain because classes depend on unnecessary functionality.
- C) Dart ignores the unused methods automatically.
- D) The interface becomes a concrete class.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) The design may become harder to maintain because classes depend on unnecessary functionality.**

**Explanation:** Large interfaces can force unnecessary implementations and couple classes to unrelated operations. Splitting the interface can reduce this problem.

</details>

---

## Question 15: When should you apply ISP?

- A) Whenever a class has more than two methods.
- B) Whenever a project contains inheritance.
- C) When clients are forced to depend on methods or functionality they do not need.
- D) Whenever you want to create more classes.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) When clients are forced to depend on methods or functionality they do not need.**

**Explanation:** ISP should be applied when an interface creates unnecessary dependencies or forces implementations that do not make sense. The goal is better design, not simply increasing the number of interfaces.

</details>

---

## Key Takeaway

**Depend only on the interfaces you actually need.**

The Interface Segregation Principle helps create focused interfaces, reduce unnecessary dependencies, and make software easier to maintain and extend.

