# Factory Method Pattern Example (.NET / C#)

## Objective

This project demonstrates the implementation of the **Factory Method Design Pattern** in a .NET (C#) application.

The Factory Method Pattern defines an interface for creating objects but allows subclasses to decide which class to instantiate. It helps promote loose coupling and flexibility in object creation.

---

## Scenario

A document management system needs to create different types of documents such as Word, PDF, and Excel documents. Instead of directly creating objects using constructors, factory classes are used to create the required document objects.

---

## Project Structure

```
FactoryMethodPatternExample
│
├── Program.cs
│
├── Documents
│   ├── IDocument.cs
│   ├── WordDocument.cs
│   ├── PdfDocument.cs
│   └── ExcelDocument.cs
│
├── Factories
│   ├── DocumentFactory.cs
│   ├── WordDocumentFactory.cs
│   ├── PdfDocumentFactory.cs
│   └── ExcelDocumentFactory.cs
│
└── README.md
```

---

## Components

### IDocument Interface

The `IDocument` interface defines a common operation that all document types must implement.

**Method:**

```csharp
void Open();
```

---

### Concrete Document Classes

The following classes implement the `IDocument` interface:

- WordDocument
- PdfDocument
- ExcelDocument

Each class provides its own implementation of the `Open()` method.

Example:

```csharp
public class WordDocument : IDocument
{
    public void Open()
    {
        Console.WriteLine("Word Document Opened");
    }
}
```

---

### DocumentFactory Abstract Class

The `DocumentFactory` class declares the Factory Method.

```csharp
public abstract class DocumentFactory
{
    public abstract IDocument CreateDocument();
}
```

---

### Concrete Factory Classes

Each factory creates a specific type of document.

#### WordDocumentFactory

```csharp
public class WordDocumentFactory : DocumentFactory
{
    public override IDocument CreateDocument()
    {
        return new WordDocument();
    }
}
```

#### PdfDocumentFactory

```csharp
public class PdfDocumentFactory : DocumentFactory
{
    public override IDocument CreateDocument()
    {
        return new PdfDocument();
    }
}
```

#### ExcelDocumentFactory

```csharp
public class ExcelDocumentFactory : DocumentFactory
{
    public override IDocument CreateDocument()
    {
        return new ExcelDocument();
    }
}
```

---

## Program Class

The test class demonstrates the creation of different document types using factory classes.

```csharp
class Program
{
    static void Main(string[] args)
    {
        DocumentFactory wordFactory = new WordDocumentFactory();
        IDocument wordDoc = wordFactory.CreateDocument();
        wordDoc.Open();

        DocumentFactory pdfFactory = new PdfDocumentFactory();
        IDocument pdfDoc = pdfFactory.CreateDocument();
        pdfDoc.Open();

        DocumentFactory excelFactory = new ExcelDocumentFactory();
        IDocument excelDoc = excelFactory.CreateDocument();
        excelDoc.Open();
    }
}
```

---

## Working Principle

1. The client requests a document from a factory.
2. The factory creates the appropriate document object.
3. The client uses the object through the `IDocument` interface.
4. The client remains independent of the concrete document classes.
5. New document types can be added without modifying existing client code.

---

## Expected Output

```text
Word Document Opened
PDF Document Opened
Excel Document Opened
```

---

## Advantages of Factory Method Pattern

- Promotes loose coupling between client and product classes.
- Simplifies object creation.
- Supports the Open/Closed Principle.
- Improves maintainability and scalability.
- Makes it easy to add new document types.

---

## Applications

The Factory Method Pattern is commonly used in:

- Document Management Systems
- Database Drivers
- GUI Frameworks
- Reporting Tools
- File Processing Applications

---

## Summary

This project demonstrates the Factory Method Pattern in a .NET application. Different document objects are created through specialized factory classes rather than direct instantiation, resulting in a flexible, maintainable, and extensible design.
