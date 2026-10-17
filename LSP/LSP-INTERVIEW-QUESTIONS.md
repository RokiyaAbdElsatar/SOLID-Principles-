# LSP Interview Questions

Test your understanding of the **Liskov Substitution Principle (LSP)** with these multiple-choice interview questions.

Choose your answer mentally, then expand **Show Answer** to check whether you are correct and understand why.

---

## Question 1: What does LSP stand for?

- A) Logical Structure Principle
- B) Liskov Substitution Principle
- C) Least Subclass Principle
- D) Linear Substitution Principle

<details>
<summary>Show Answer</summary>

**Correct Answer: B) Liskov Substitution Principle**

**Explanation:** LSP is the third SOLID principle. It states that objects of a superclass should be replaceable with objects of its subclasses without breaking the correctness of the program.

</details>

---

## Question 2: What is the main goal of LSP?

- A) To ensure every class has only one responsibility.
- B) To ensure subclasses preserve the expected behavior of their superclass.
- C) To prevent classes from using inheritance.
- D) To ensure every method is declared as abstract.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) To ensure subclasses preserve the expected behavior of their superclass.**

**Explanation:** A subclass should be usable wherever its superclass is expected without causing unexpected behavior or breaking the program.

</details>

---

## Question 3: Consider the following code:

```dart
class Bird {
  void fly() {
    print('Bird is flying');
  }
}

class Penguin extends Bird {
  @override
  void fly() {
    throw Exception('Penguins cannot fly!');
  }
}
```

What is the main problem with this design?

- A) Dart does not support method overriding.
- B) `Penguin` cannot extend `Bird`.
- C) `Penguin` cannot fulfill the expected flying behavior of `Bird`.
- D) Every parent class must be abstract.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) `Penguin` cannot fulfill the expected flying behavior of `Bird`.**

**Explanation:** The parent class promises that its objects can fly, but `Penguin` cannot provide that behavior. Using a penguin where a flying bird is expected can cause the program to fail.

</details>

---

## Question 4: Which design is more appropriate for representing flying and non-flying birds?

- A) Make every bird inherit from `FlyingBird`.
- B) Put all bird behaviors in one large class.
- C) Separate the general `Bird` abstraction from the specialized `FlyingBird` abstraction.
- D) Remove every method from the parent class.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) Separate the general `Bird` abstraction from the specialized `FlyingBird` abstraction.**

**Explanation:** `Bird` can represent all birds, while `FlyingBird` represents birds that support flying. This avoids forcing unsupported behavior on penguins.

</details>

---

## Question 5: Does using an `abstract class` automatically guarantee LSP?

- A) Yes, every abstract class follows LSP.
- B) Yes, because abstract classes cannot be instantiated.
- C) No, LSP depends on whether subclasses preserve the expected behavior of their superclass.
- D) No, because abstract classes cannot contain implemented methods.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) No, LSP depends on whether subclasses preserve the expected behavior of their superclass.**

**Explanation:** An abstract class helps define an abstraction, but a subclass can still violate LSP by changing the expected behavior of an inherited method.

</details>

---

## Question 6: Consider the following code:

```dart
abstract class Bird {
  void eat() {
    print('Bird is eating');
  }
}

class Penguin extends Bird {}
```

Does `Penguin` need to override `eat()`?

- A) Yes, every inherited method must be overridden.
- B) Yes, because `Bird` is abstract.
- C) No, because `eat()` already has an implementation.
- D) No, because penguins cannot eat.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) No, because `eat()` already has an implementation.**

**Explanation:** An abstract class can contain concrete methods. A subclass can inherit and use these methods without overriding them.

</details>

---

## Question 7: Given the following method, which type should it accept?

```dart
void makeBirdFly(FlyingBird bird) {
  bird.fly();
}
```

- A) `Bird`, because every bird can fly.
- B) `Penguin`, because it is a bird.
- C) `FlyingBird`, because the method requires flying behavior.
- D) `Object`, because every object can fly.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) `FlyingBird`, because the method requires flying behavior.**

**Explanation:** The parameter should express the capability the method needs. Since not every bird can fly, accepting the more general `Bird` type would not accurately represent this requirement.

</details>

---

## Question 8: A subclass overrides a method and requires additional conditions that callers did not need to satisfy when using the superclass. What could happen?

- A) The subclass always becomes more reliable.
- B) The subclass may violate LSP because previously valid calls may fail.
- C) The superclass automatically becomes abstract.
- D) The code automatically follows OCP.

<details>
<summary>Show Answer</summary>

**Correct Answer: B) The subclass may violate LSP because previously valid calls may fail.**

**Explanation:** A subclass should not strengthen the preconditions of an inherited operation in a way that breaks valid uses of the superclass.

</details>

---

## Question 9: Which statement about inheritance and LSP is correct?

- A) If a program compiles, it always follows LSP.
- B) Every subclass must override all inherited methods.
- C) A subclass must preserve the behavioral expectations established by its superclass.
- D) Every class must inherit from an abstract class.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) A subclass must preserve the behavioral expectations established by its superclass.**

**Explanation:** LSP concerns behavioral compatibility, not merely whether the inheritance relationship is accepted by the compiler.

</details>

---

## Question 10: What is the main benefit of following LSP?

- A) It eliminates the need for testing.
- B) It prevents developers from creating subclasses.
- C) It improves reliability by allowing subclasses to be substituted safely.
- D) It requires every class to contain fewer than five methods.

<details>
<summary>Show Answer</summary>

**Correct Answer: C) It improves reliability by allowing subclasses to be substituted safely.**

**Explanation:** When subclasses honor their contracts, code that depends on the superclass can work with different implementations more predictably.

</details>

---

## Final Challenge

You are designing a system that represents different types of vehicles.

A `Vehicle` class contains a `move()` method. However, a developer creates a `Boat` subclass that throws an exception when `move()` is called on land, because the original design assumes every vehicle moves on land.

**Interview question:** How would you redesign the classes to follow LSP?

Think about:

- What behavior should belong to the general `Vehicle` abstraction?
- Should every vehicle be required to support the same type of movement?
- How could you represent vehicles with different movement capabilities?
- How would you ensure that subclasses can replace their parent abstractions without breaking the program?

