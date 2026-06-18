# Factory Method Pattern Example

## Objective

This project demonstrates the implementation of the **Factory Method Design Pattern** in Java.

The Factory Method Pattern defines an interface for creating objects while allowing subclasses to decide which class to instantiate.

---

## Scenario

A document management system needs to create different types of documents such as:

- Word Documents
- PDF Documents
- Excel Documents

Instead of creating objects directly using the `new` keyword, factory classes are responsible for creating the appropriate document objects.

---

## Project Structure

```
FactoryMethodPatternExample
│
├── Document.java
├── WordDocument.java
├── PdfDocument.java
├── ExcelDocument.java
├── DocumentFactory.java
├── WordDocumentFactory.java
├── PdfDocumentFactory.java
├── ExcelDocumentFactory.java
└── FactoryMethodTest.java
```

---

## Components

### Document Interface

Defines the common behavior for all document types.

```java
public interface Document {
    void open();
}
```

### Concrete Documents

- WordDocument
- PdfDocument
- ExcelDocument

These classes implement the `Document` interface.

### DocumentFactory

Abstract factory class that declares the factory method:

```java
public abstract Document createDocument();
```

### Concrete Factories

- WordDocumentFactory
- PdfDocumentFactory
- ExcelDocumentFactory

Each factory creates a specific document type.

---

## Working Principle

1. The client requests a document through a factory.
2. The factory creates the appropriate document object.
3. The client works with the document through the common interface.
4. Object creation is separated from object usage.

