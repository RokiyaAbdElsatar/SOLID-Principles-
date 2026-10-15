# Open/Closed Principle (OCP)

## 1. What is OCP?

The **Open/Closed Principle (OCP)** is the second principle of SOLID.

It states that:

> Software entities should be open for extension, but closed for modification.

In simple words, we should be able to add new features or behaviors without unnecessarily changing existing code.

## 2. The Problem

In a discount management system, we need to calculate different types of discounts, such as:

- Percentage discount.
- Fixed discount.
- Seasonal discount.

If one class handles all discount types using `if-else` statements, adding a new discount type requires modifying the existing class.

As the number of discount types grows, the class becomes harder to maintain, test, and extend.

## 3. Applying OCP

To follow OCP, we introduced an abstraction called `DiscountStrategy` and created separate classes for each discount type.

| Class | Responsibility |
|---|---|
| `DiscountStrategy` | Defines a common contract for discount calculations. |
| `PercentageDiscount` | Calculates a percentage-based discount. |
| `FixedDiscount` | Calculates a fixed-amount discount. |
| `SeasonalDiscount` | Calculates a seasonal discount. |
| `DiscountCalculator` | Calculates discounts using a provided strategy. |

Each discount class implements the same abstraction but provides its own calculation logic.

When we need to add a new discount type, we can create another class that implements `DiscountStrategy` without modifying the existing `DiscountCalculator` class.

## 4. Design Decisions

During the refactoring process, we made the following changes:

- Introduced the `DiscountStrategy` abstraction to define a common contract.
- Separated each discount calculation into its own class.
- Used polymorphism to allow different discount strategies to provide different behaviors.
- Made `DiscountCalculator` depend on the abstraction instead of checking discount types using `if-else` statements.
- Allowed new discount types to be added without modifying the existing calculator.

## 5. What I Learned

- Existing code should be designed to support new functionality with minimal modifications.
- Abstractions and polymorphism can help implement OCP.
- Separating different behaviors into their own implementations makes code easier to maintain and extend.
- OCP does not mean that existing code can never be modified. Bug fixes and necessary design changes may still require modifications.
- OCP does not require creating abstractions for every possible behavior; they should be introduced when they provide a meaningful benefit.

## 6. Key Takeaway

**Open for extension, closed for modification.**

Following OCP helps build flexible and maintainable code that can accommodate new requirements without unnecessarily changing existing, stable implementations.

---

**Language:** Dart  
**Concepts:** Object-Oriented Programming (OOP), Abstraction, Polymorphism, SOLID Principles
