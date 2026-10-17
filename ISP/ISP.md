# Interface Segregation Principle (ISP)

## 1. What is ISP?

The **Interface Segregation Principle (ISP)** is the fourth principle of SOLID.

It states that:

> Clients should not be forced to depend on interfaces they do not use.

In simple words, a class should not be forced to implement methods it does not need. Instead, large interfaces should be divided into smaller, more specific interfaces.

## 2. The Problem

In a device management system, we need to support different types of machines, such as:

- Basic printers that only print documents.
- Scanners that scan documents.
- Fax machines that send documents.
- Multi-function printers that support printing, scanning, and faxing.

If one interface contains all these operations, every class that implements it must provide implementations for all its methods, even if some methods are not relevant to that class.

For example, a basic printer only needs to print documents, but it would also be forced to implement scanning and faxing methods.

This creates unnecessary dependencies and may lead to methods that throw exceptions or have no meaningful implementation.

## 3. Applying ISP

To follow ISP, we divided the large `Machine` interface into smaller, specialized interfaces.

| Class / Interface | Responsibility |
|---|---|
| `Printer` | Defines the contract for printing documents. |
| `Scanner` | Defines the contract for scanning documents. |
| `FaxMachine` | Defines the contract for faxing documents. |
| `BasicPrinter` | Implements only the printing functionality. |
| `MultiFunctionPrinter` | Implements printing, scanning, and faxing. |


Each class implements only the interfaces that match its supported functionality.

When a new device is introduced, we can implement the appropriate interfaces without forcing unrelated devices to support additional operations.

## 4. Design Decisions

During the refactoring process, we made the following changes:

- Split the large `Machine` interface into smaller interfaces: `Printer`, `Scanner`, and `FaxMachine`.
- Assigned each interface a specific responsibility.
- Used Dart's `implements` keyword to allow classes to implement only the interfaces they need.
- Made `BasicPrinter` depend only on the printing interface.
- Allowed `MultiFunctionPrinter` to implement all three interfaces because it supports all three operations.
- Allowed `SmartPrinter` to implement only `Printer` and `Scanner`, since it does not support faxing.
- Avoided forcing classes to implement unnecessary methods.

## 5. What I Learned

- Interfaces should be small, focused, and specific to the functionality they represent.
- Classes should not be forced to implement methods they do not need.
- Splitting large interfaces reduces unnecessary dependencies and makes code easier to maintain.
- In Dart, a class can implement multiple interfaces using the `implements` keyword.
- Adding a new capability should require changes only to the classes that need that capability, rather than forcing unrelated classes to change.
- ISP does not mean that every method must have its own interface. Interfaces should be separated when doing so provides a meaningful design benefit.

## 6. Key Takeaway

**Depend only on the interfaces you actually need.**

Following ISP helps build flexible and maintainable software by preventing classes from depending on unnecessary functionality.

