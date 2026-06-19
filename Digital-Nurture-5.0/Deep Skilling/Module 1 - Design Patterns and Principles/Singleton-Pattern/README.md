```markdown
# Singleton Pattern Example (.NET / C#)

## Objective

This project demonstrates the implementation of the **Singleton Design Pattern** in a .NET (C#) application.

The Singleton Pattern ensures that a class has only one instance throughout the application lifecycle and provides a global point of access to that instance.

---

## Scenario

A logging utility is required in an application. To maintain consistent logging and avoid creating multiple logger objects, the `Logger` class is implemented as a Singleton in C#.

---

## Project Structure

SingletonPatternExample  
│  
├── Logger.cs  
├── Program.cs  
└── README.md  

---

## Components

### Logger Class

The `Logger` class is designed as a Singleton.

**Features:**

- Private static instance variable  
- Private constructor  
- Public static `Instance` property  
- Logging method for displaying messages  
- Optional thread-safe implementation  

---

### Program Class

The test class verifies that:

- Multiple calls to `Logger.Instance` return the same object  
- Only one instance of `Logger` exists throughout the application  
- Logging works consistently across the application  

---

## Singleton Pattern Implementation

### Private Static Instance

    private static Logger instance;

Stores the single instance of the class.

---

### Private Constructor

    private Logger()
    {
    }

Prevents direct object creation from outside the class.

---

### Global Access Property

    public static Logger Instance
    {
        get
        {
            if (instance == null)
            {
                instance = new Logger();
            }
            return instance;
        }
    }

Creates the object only once and returns the same instance whenever requested.

---

### Example Logger Method

    public void Log(string message)
    {
        Console.WriteLine($"Log: {message}");
    }

---

### Usage Example

    class Program
    {
        static void Main(string[] args)
        {
            Logger logger1 = Logger.Instance;
            Logger logger2 = Logger.Instance;

            logger1.Log("First message");
            logger2.Log("Second message");

            Console.WriteLine(object.ReferenceEquals(logger1, logger2));
        }
    }

---

## Working Principle

1. The first call to `Logger.Instance` creates a new instance.  
2. The instance is stored in a static variable.  
3. Every subsequent call returns the same instance.  
4. This ensures only one Logger object exists in memory.

---

## Optional Improvement (Thread-Safe Version)

    private static readonly object lockObj = new object();

    public static Logger Instance
    {
        get
        {
            lock (lockObj)
            {
                if (instance == null)
                {
                    instance = new Logger();
                }
            }
            return instance;
        }
    }

---

## Summary

This project demonstrates how the Singleton Pattern ensures a single shared instance of a class in a .NET application. It is commonly used for logging, configuration management, caching, and other shared services where only one instance should exist.
```
