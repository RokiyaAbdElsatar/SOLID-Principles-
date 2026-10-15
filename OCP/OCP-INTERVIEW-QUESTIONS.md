# OCP Interview Questions

Test your understanding of the **Open/Closed Principle (OCP)** with these multiple-choice interview questions.

Choose your answer mentally, then expand **Show Answer** to check whether you are correct and understand why.

---

## Question 1: What does OCP stand for?

- A) Object Creation Principle
- B) Open/Closed Principle
- C) Open Code Principle
- D) Object Control Principle

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Open/Closed Principle**

**Explanation:** OCP is the second SOLID principle. It states that software entities should be open for extension but closed for modification.

</details>

---

## Question 2: What does "open for extension" mean?

- A) Existing classes must always be modified.
- B) We can add new behaviors or features.
- C) All classes must be public.
- D) We should avoid using abstractions.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) We can add new behaviors or features.**

**Explanation:** New functionality can be introduced by extending the design, for example, by adding a new class that implements an existing interface.

</details>

---

## Question 3: What does "closed for modification" mean?

- A) A class can never be changed for any reason.
- B) A class cannot have methods.
- C) Adding new features should ideally not require changing existing, stable code.
- D) All class properties must be private.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Adding new features should ideally not require changing existing, stable code.**

**Explanation:** OCP aims to reduce the need to modify existing code whenever a new behavior is introduced. It does not prohibit all modifications, such as bug fixes.

</details>

---

## Question 4: Which approach commonly helps implement OCP?

- A) Adding more `if-else` statements for every new type.
- B) Using abstractions and polymorphism.
- C) Putting every behavior in one class.
- D) Duplicating the same logic in multiple places.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Using abstractions and polymorphism.**

**Explanation:** An abstraction defines a common contract, and different implementations provide different behaviors. New implementations can often be added without changing the code that depends on the abstraction.

</details>

---

## Question 5: Which code design is more likely to violate OCP?

- A) A calculator that accepts a `DiscountStrategy`.
- B) A class that delegates work to an interface.
- C) A calculator that requires a new `if-else` condition for every discount type.
- D) A new class implementing an existing interface.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) A calculator that requires a new `if-else` condition for every discount type.**

**Explanation:** If every new discount requires modifying the same calculation method, the design becomes increasingly dependent on changes to existing code.

</details>

---

## Question 6: In Dart, what is the role of an abstract class in an OCP-based design?

- A) It prevents other classes from extending the system.
- B) It defines a common contract for different implementations.
- C) It automatically creates objects of all subclasses.
- D) It replaces every concrete class.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) It defines a common contract for different implementations.**

**Explanation:** An abstract class can declare methods that concrete classes implement differently. The client code can depend on the abstraction rather than a specific implementation.

</details>

---

## Question 7: Consider this code:

```dart
abstract class DiscountStrategy {
  double calculate(double price);
}

class PercentageDiscount implements DiscountStrategy {
  @override
  double calculate(double price) => price * 0.10;
}
```

What is the main benefit of `DiscountStrategy`?

- A) It calculates every discount itself.
- B) It forces all discounts to return the same value.
- C) It provides a common contract for discount implementations.
- D) It prevents adding new discount types.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) It provides a common contract for discount implementations.**

**Explanation:** Every discount implementation follows the same contract, but each class can provide its own calculation logic.

</details>

---

## Question 8: A developer adds `SeasonalDiscount` by implementing `DiscountStrategy` without changing `DiscountCalculator`. Which principle does this demonstrate?

- A) Single Responsibility Principle
- B) Open/Closed Principle
- C) Interface Segregation Principle
- D) Dependency Inversion Principle

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Open/Closed Principle.**

**Explanation:** The system gains a new behavior through an additional implementation without requiring a modification to the existing calculator.

</details>

---

## Question 9: Does OCP mean that existing code must never be modified?

- A) Yes, under all circumstances.
- B) Yes, even when fixing bugs.
- C) No, but we should avoid unnecessary modifications when extending functionality.
- D) No, because OCP has no practical purpose.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) No, but we should avoid unnecessary modifications when extending functionality.**

**Explanation:** OCP is a design goal, not an absolute ban on changing code. Bug fixes, evolving requirements, and necessary refactoring can still require modifications.

</details>

---

## Question 10: When should we introduce an abstraction to support OCP?

- A) For every class, regardless of its purpose.
- B) Whenever a class has more than one property.
- C) When likely variations in behavior justify the additional design complexity.
- D) Only when using Flutter.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) When likely variations in behavior justify the additional design complexity.**

**Explanation:** Abstractions are useful when they help accommodate expected changes. Applying OCP everywhere without a real need can introduce unnecessary complexity.

</details>

---

## Final Challenge

You have a `PaymentProcessor` class that uses `if-else` statements to handle cash, credit card, and PayPal payments.

**Interview question:** How would you redesign it to follow OCP?

Think about:
- Which abstraction would you introduce?
- Which classes would implement it?
- How would `PaymentProcessor` use the abstraction?
- How could you add a new payment method without modifying `PaymentProcessor`?

