# Singleton Pattern Example

## Objective

This project demonstrates the implementation of the **Singleton Design Pattern** in Java.

The Singleton Pattern ensures that a class has only one instance throughout the application lifecycle and provides a global point of access to that instance.

---

## Scenario

A logging utility is required in an application. To maintain consistent logging and avoid creating multiple logger objects, the `Logger` class is implemented as a Singleton.

---

## Project Structure

```
SingletonPatternExample
│
├── Logger.java
├── SingletonPatternTest.java
└── README.md
```

---

## Components

### Logger Class

The `Logger` class is designed as a Singleton.

Features:

- Private static instance variable
- Private constructor
- Public static `getInstance()` method
- Logging method for displaying messages

### SingletonPatternTest Class

The test class verifies that:

- Multiple calls to `getInstance()` return the same object.
- Only one instance of `Logger` exists throughout the application.

---

## Singleton Pattern Implementation

### Private Static Instance

```java
private static Logger instance;
```

Stores the single instance of the class.

### Private Constructor

```java
private Logger() {
}
```

Prevents direct object creation from outside the class.

### Global Access Method

```java
public static Logger getInstance() {
    if (instance == null) {
        instance = new Logger();
    }
    return instance;
}
```

Creates the object only once and returns the same instance whenever requested.

---

## Working Principle

1. The first request for the Logger object creates a new instance.
2. The instance is stored in a static variable.
3. Every subsequent request returns the same stored instance.
4. This guarantees that only one Logger object exists in memory.
