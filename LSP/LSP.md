# Liskov Substitution Principle (LSP)

<img width="100%" alt="image" src="https://github.com/user-attachments/assets/77eb814e-c981-4506-9414-e90ee26f75db" />


## 1. What is LSP?

The **Liskov Substitution Principle (LSP)** is the third principle of SOLID.

It states that:

> Objects of a superclass should be replaceable with objects of its subclasses without breaking the correctness of the program.

In simple words, a child class should be able to replace its parent class wherever the parent is expected, without causing unexpected behavior.

## 2. Understanding the Problem

Consider a system that represents different types of birds.

At first, the `Bird` class contains a `fly()` method. This design assumes that every bird can fly.

However, penguins cannot fly. If `Penguin` inherits from `Bird` and overrides `fly()` by throwing an exception, the program may fail when a penguin is used where a flying bird is expected.

### Why Does This Violate LSP?

- `Sparrow` can fly and behaves as expected.
- `Penguin` cannot fly but inherits a method that assumes it can.
- Passing a `Penguin` to `makeBirdFly()` causes an exception.

The child class cannot safely replace the parent class in this situation because it breaks the expected behavior.

## 3. Applying LSP — Refactoring the Design

To solve this problem, we separate the general concept of a bird from the specific behavior of flying.

The `Bird` class represents all birds and contains their common behavior.

The `FlyingBird` class extends `Bird` and introduces the `fly()` method only for birds that can fly.

### Expected Output

```text
Sparrow is flying
Bird is eating
Bird is eating
```

### How Does This Solve the Problem?

- `Bird` represents all birds and provides their shared behavior.
- `FlyingBird` introduces flying behavior for birds that can fly.
- `Sparrow` inherits from `FlyingBird` and provides its specific flying behavior.
- `Penguin` inherits directly from `Bird` without being forced to implement flying behavior.
- `makeBirdFly()` accepts only `FlyingBird` objects.
- `makeBirdEat()` accepts any `Bird`, so both sparrows and penguins can be passed safely.

The design now avoids forcing unsupported behavior on subclasses and allows each class to fulfill its expected contract.

## 4. Design Decisions

### Why use an abstract class for `Bird`?

Using `abstract class Bird` expresses that `Bird` is a general abstraction that should not be instantiated directly.

It can still contain implemented methods, such as `eat()`, that subclasses inherit.

**Note:** Using an abstract class is a design choice, not a requirement of LSP itself.

### Why does `Penguin` extend `Bird` instead of `FlyingBird`?

A penguin is a bird, but it is not a flying bird.

Therefore, `Penguin` should inherit from `Bird` directly instead of inheriting a behavior it cannot support.

### Why does `makeBirdFly()` accept `FlyingBird`?

The method requires an object that supports flying.

By accepting `FlyingBird` instead of the more general `Bird`, the method makes its requirements clear and prevents non-flying birds from being passed to it.

## 5. What I Learned

- Inheritance should represent a valid relationship between a parent and its child classes.
- A subclass should preserve the expected behavior of its superclass.
- Throwing exceptions to reject behavior promised by a parent class can indicate an LSP violation.
- Not every subclass should inherit every behavior.
- Separating general abstractions from specialized behavior leads to a more reliable design.
- LSP is about behavioral compatibility, not simply using `extends` or `implements`.

## 6. Key Takeaway

**A subclass should be able to replace its superclass without breaking the program's expected behavior.**

Good inheritance design ensures that subclasses honor the contracts established by their parent classes.
