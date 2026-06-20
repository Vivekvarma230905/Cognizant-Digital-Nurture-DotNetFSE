# Financial Forecasting Tool

## Overview
A financial forecasting tool that predicts future values based on past data using **recursive algorithms**. Part of **Algorithms & Data Structures** curriculum focusing on recursive problem-solving.

## Learning Objectives
- Understand **recursion** concept and how it simplifies problems
- Implement **recursive algorithms** for financial forecasting
- Calculate future values with **compound growth**
- Analyze **time complexity** of recursive solutions
- Optimize recursive algorithms using **memoization**

## Prerequisites
- .NET 8.0 SDK installed
- VS Code or any C# IDE

---

## Setup & Run
```bash
mkdir FinancialForecastingExample
cd FinancialForecastingExample
dotnet new console -n FinancialForecastingExample
cd FinancialForecastingExample
# Create files: FinancialForecast.cs, Program.cs
dotnet build
dotnet run
```
## Project Structure
```
FinancialForecastingExample/
├── FinancialForecastingExample.csproj
├── FinancialForecast.cs
├── Program.cs
└── README.md
```


---

## Key Features

### 1. Basic Recursive Forecasting
```csharp
// Calculate future value with fixed growth rate
double result = FinancialForecast.CalculateFutureValueRecursive(
    10000, 0.05, 5  // $10,000, 5% growth, 5 years
);
// Result: $12,762.82
```

### 2. Memoized (Optimized) Recursive
```csharp
// Optimized with memoization to avoid recomputation
double result = FinancialForecast.CalculateFutureValueMemoized(
    10000, 0.05, 5
);
```

### 3. Variable Growth Rates
```csharp
// Forecast with different growth rates each year
double[] rates = { 0.03, 0.05, 0.07, 0.04, 0.06 };
double result = FinancialForecast.CalculateFutureValueVaryingRatesRecursive(
    10000, rates, 5
);
```

### 4. Direct Formula (Non-recursive)
```csharp
// Most efficient approach: O(1) time and space
double result = FinancialForecast.CalculateFutureValueFormula(
    10000, 0.05, 5
);
```

---

## Algorithms Implemented

| Method | Purpose | Complexity |
|--------|---------|------------|
| `CalculateFutureValueRecursive` | Basic compound growth | O(n) time, O(n) space |
| `CalculateFutureValueMemoized` | Optimized with memoization | O(n) time, O(n) space |
| `CalculateFutureValueFormula` | Direct mathematical formula | O(1) time, O(1) space |
| `CalculateVaryingRatesRecursive` | Variable growth rates | O(n) time, O(n) space |
| `GenerateForecastHistory` | Year-by-year breakdown | O(n) time, O(n) space |

---

## Recursion Concept

### What is Recursion?
Recursion is a technique where a method calls itself to solve smaller instances of the same problem.

### Key Components
1. **Base Case**: Condition when recursion stops (prevents infinite loops)
2. **Recursive Case**: Method calls itself with modified parameters
3. **Recursive Call**: The actual call to the same method

### Formula for Financial Forecasting

---

```
F(n) = F(n-1) * (1 + growthRate)
F(0) = initialValue // Base case
```


---

## Time Complexity Analysis

### Basic Recursive
- **Time**: O(n) - makes n recursive calls
- **Space**: O(n) - call stack depth of n levels

### Memoized Recursive
- **Time**: O(n) - avoids recomputation with dictionary
- **Space**: O(n) - call stack + memoization dictionary

### Direct Formula
- **Time**: O(1) - single mathematical operation
- **Space**: O(1) - no call stack

### Performance Comparison (n = 1000)
| Approach | Operations |
|----------|------------|
| Basic Recursive | ~1000 stack operations |
| Memoized | ~1000 dictionary operations |
| Formula | 1 mathematical operation |

---

## Optimization Techniques

### 1. Memoization
- Store results of previous calculations
- Avoid recomputing same values
- Reduces time for repeated subproblems

### 2. Convert to Iterative
- Replace recursion with loops
- Eliminates call stack overhead
- Better space complexity: O(1)

### 3. Use Direct Formula
- F(n) = F(0) * (1 + r)^n
- Most efficient: O(1) time and space
- Best for compound interest calculations

### 4. Tail Recursion
- Rewrite to be tail-recursive
- Some compilers optimize tail recursion
- Reduces stack space usage

---

## When to Use Each Approach

### Use **Recursive** When:
- Variable growth rates (each year different)
- Educational purposes (understanding recursion)
- Complex dependency on previous values

### Use **Direct Formula** When:
- Fixed growth rate (standard compound interest)
- Production use (most efficient)
- Large forecast periods (n > 1000)

---

## Example Usage

### Basic Forecast
```csharp
double initialValue = 10000;
double growthRate = 0.05;
int years = 5;

double futureValue = FinancialForecast.CalculateFutureValueFormula(
    initialValue, growthRate, years
);

Console.WriteLine($"Future Value: ${futureValue:F2}");
// Output: Future Value: $12,762.82
```

### Forecast Breakdown
```csharp
FinancialForecast.DisplayForecastBreakdown(10000, 0.05, 5);

// Output:
// Year 1: $10,500.00
// Year 2: $11,025.00
// Year 3: $11,576.25
// Year 4: $12,155.06
// Year 5: $12,762.82
```

### Variable Rates
```csharp
double[] rates = { 0.03, 0.05, 0.07, 0.04, 0.06 };
double result = FinancialForecast.CalculateFutureValueVaryingRatesRecursive(
    10000, rates, 5
);
Console.WriteLine($"Result: ${result:F2}");
```

---

## Key Takeaways

1. **Recursion** breaks complex problems into simpler sub-problems
2. **Basic recursive** forecast: O(n) time and space complexity
3. **Memoization** optimizes repeated calculations
4. **Direct formula** is best for production: O(1) time and space
5. **Choose based on context**: 
   - Learning = recursive
   - Production = formula
   - Variable rates = recursive with memoization

---

## Test Cases Included

Simple compound growth (fixed rate)  
Higher growth rate scenarios  
Long-term forecasts (20 years)  
Variable growth rates per year  
Memoized vs basic recursive comparison  
Large dataset with variable rates  
Year-by-year forecast breakdown  

---

## Real-World Applications

- **Investment Planning**: Predict future portfolio value
- **Business Forecasting**: Estimate revenue growth
- **Retirement Planning**: Calculate savings growth
- **Loan Analysis**: Project compound interest
- **Economic Modeling**: GDP growth predictions

---

**Topic**: Algorithms & Data Structures  
**Exercise**: Exercise 7 - Financial Forecasting  
**Language**: C# (.NET 8.0)  
**Focus**: Recursive Algorithms, Time Complexity, Optimization
