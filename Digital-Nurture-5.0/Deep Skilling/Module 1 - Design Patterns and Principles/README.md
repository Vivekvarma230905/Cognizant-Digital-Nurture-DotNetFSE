# Design Patterns Implementation in .NET (C#)

## Objective

This repository contains implementations of various software design patterns in C#. The objective is to understand and demonstrate the practical application of creational, structural, behavioral, and architectural design patterns using the .NET platform.

---

# Exercises Implemented

## Exercise 1: Singleton Pattern

### Scenario
A logging utility class should have only one instance throughout the application lifecycle.

### Components
- Logger
- Program

### Key Concept
Ensures a class has only one instance and provides a global access point.

---

## Exercise 2: Factory Method Pattern

### Scenario
A document management system creates different types of documents such as Word, PDF, and Excel.

### Components
- IDocument
- WordDocument
- PdfDocument
- ExcelDocument
- DocumentFactory
- WordDocumentFactory
- PdfDocumentFactory
- ExcelDocumentFactory

### Key Concept
Creates objects without specifying their exact classes.

---

## Exercise 3: Builder Pattern

### Scenario
A computer system requires creation of complex objects with optional configurations.

### Components
- Computer
- ComputerBuilder

### Key Concept
Constructs complex objects step-by-step.

---

## Exercise 4: Adapter Pattern

### Scenario
A payment system integrates multiple third-party payment gateways with different interfaces.

### Components
- IPaymentProcessor
- PayPalGateway
- StripeGateway
- PayPalAdapter
- StripeAdapter

### Key Concept
Converts one interface into another expected by clients.

---

## Exercise 5: Decorator Pattern

### Scenario
A notification system supports Email, SMS, and Teams notifications.

### Components
- INotifier
- EmailNotifier
- SMSNotifierDecorator
- TeamsNotifierDecorator

### Key Concept
Adds behavior dynamically without modifying existing classes.

---

## Exercise 6: Proxy Pattern

### Scenario
An image viewer application loads images from a remote server using lazy loading and caching.

### Components
- IImage
- RealImage
- ProxyImage

### Key Concept
Controls access to another object and improves performance through lazy initialization.

---

## Exercise 7: Observer Pattern

### Scenario
A stock market application notifies multiple clients whenever stock prices change.

### Components
- IObserver
- ISubject
- StockMarket
- MobileApp
- WebApp

### Key Concept
Defines a one-to-many dependency between objects.

---

## Exercise 8: Strategy Pattern

### Scenario
A payment system supports multiple payment methods selected at runtime.

### Components
- IPaymentStrategy
- CreditCardPayment
- PayPalPayment
- PaymentContext

### Key Concept
Encapsulates interchangeable algorithms.

---

## Exercise 9: Command Pattern

### Scenario
A home automation system issues commands to control devices.

### Components
- ICommand
- Light
- LightOnCommand
- LightOffCommand
- RemoteControl

### Key Concept
Encapsulates requests as objects.

---

## Exercise 10: MVC Pattern

### Scenario
A student management application separates data, presentation, and control logic.

### Components
- Student (Model)
- StudentView (View)
- StudentController (Controller)

### Key Concept
Separates application into Model, View, and Controller layers.

---

## Exercise 11: Dependency Injection

### Scenario
A customer service depends on a customer repository.

### Components
- ICustomerRepository
- CustomerRepository
- CustomerService

### Key Concept
Injects dependencies externally to reduce coupling.

---

# Design Pattern Categories

## Creational Patterns

1. Singleton Pattern
2. Factory Method Pattern
3. Builder Pattern

### Purpose
Responsible for object creation mechanisms.

---

## Structural Patterns

1. Adapter Pattern
2. Decorator Pattern
3. Proxy Pattern

### Purpose
Concerned with object composition and relationships.

---

## Behavioral Patterns

1. Observer Pattern
2. Strategy Pattern
3. Command Pattern

### Purpose
Define communication and responsibility among objects.

---

## Architectural Patterns

1. MVC Pattern
2. Dependency Injection

### Purpose
Provide higher-level application structure and dependency management.

---

# Benefits of Design Patterns

- Improved code reusability
- Better maintainability
- Reduced coupling
- Increased flexibility
- Enhanced scalability
- Easier testing and debugging

---

# Technologies Used

- C#
- .NET 8
- Object-Oriented Programming (OOP)
- Visual Studio Code
- .NET SDK

---

# How to Run

```bash
dotnet build
dotnet run
```

---

# Conclusion

This project demonstrates the implementation of eleven commonly used design patterns in .NET (C#). Each pattern addresses specific software design challenges and promotes best practices for building maintainable, scalable, and reusable applications.
