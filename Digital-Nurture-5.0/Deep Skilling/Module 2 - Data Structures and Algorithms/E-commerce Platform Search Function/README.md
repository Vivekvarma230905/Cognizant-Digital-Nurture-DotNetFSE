# E-commerce Platform Search Function

## Overview
Implements and analyzes **Linear Search** and **Binary Search** algorithms for an e-commerce platform's product search. Part of **Algorithms & Data Structures** curriculum.

## Learning Objectives
- Understand **Big O Notation** for algorithm analysis
- Implement **Linear Search** - O(n) sequential search
- Implement **Binary Search** - O(log n) divide-and-conquer
- Compare time complexity and choose the right algorithm
- Work with arrays and objects (data structures)

## Prerequisites
- .NET 8.0 SDK installed
- VS Code or any C# IDE

## Setup & Run
```bash
mkdir EcommerceSearchExample
cd EcommerceSearchExample
dotnet new console -n EcommerceSearchExample
cd EcommerceSearchExample
# Create files: Product.cs, SearchAlgorithms.cs, Program.cs
dotnet build
dotnet run
```

## Project Structure
EcommerceSearchExample/
├── EcommerceSearchExample.csproj
├── Product.cs
├── SearchAlgorithms.cs
├── Program.cs
└── README.md


## Algorithms Comparison

### Time Complexity
| Algorithm | Best | Average | Worst |
|-----------|------|---------|-------|
| Linear Search | O(1) | O(n) | O(n) |
| Binary Search | O(1) | O(log n) | O(log n) |

### Performance (n = 1,000,000)
| Algorithm | Best | Average | Worst |
|-----------|------|---------|-------|
| Linear Search | 1 comparison | 500,000 | 1,000,000 |
| Binary Search | 1 comparison | ~10 | ~20 |

### Key Differences
| Aspect | Linear Search | Binary Search |
|--------|---------------|---------------|
| Sorted Required | No | Yes |
| Data Structure | Any | Array |
| Space | O(1) | O(1) |
| Best For | Small/unsorted | Large/sorted |

## Big O Notation
| Notation | Name | Example |
|----------|------|---------|
| O(1) | Constant | Array index |
| O(log n) | Logarithmic | Binary search |
| O(n) | Linear | Linear search |
| O(n²) | Quadratic | Bubble sort |

**Search Cases:**
- Best Case O(1): Element at first position
- Average Case: Linear = O(n), Binary = O(log n)
- Worst Case: Linear = O(n), Binary = O(log n)

## Algorithm Selection

**Use Linear Search When:**
1. Small dataset (n < 50)
2. Frequently changing data
3. Single search on unsorted data

**Use Binary Search When:**
1. Large dataset (n > 1000)
2. Static or rarely changing data
3. Multiple searches
4. Product catalog

## Best Practice for E-commerce

**Hybrid Strategy:**
1. Store products in sorted array (by ID or name)
2. Use binary search for 99% of lookups
3. Use linear search for category filtering

**Production Options:**
- Hash Tables: O(1) for exact ID lookup
- Database Indexes: B-tree searches
- Elasticsearch: Complex queries

## Key Takeaways
1. Binary Search is 50,000x faster for 1M items (20 vs 1M comparisons)
2. Sorting required for binary search (preprocessing cost)
3. Choose based on context: small/unsorted = linear, large/sorted = binary
4. For e-commerce: Binary search preferred due to large catalogs

---

**Topic:** Algorithms & Data Structures  
**Exercise:** Exercise 2 - Search Function Optimization  
**Language:** C# (.NET 8.0)
