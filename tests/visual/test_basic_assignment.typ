// T011: Integration test - Basic assignment creation (quickstart scenario)
// This test validates the complete workflow for creating a basic assignment
// Based on quickstart.md user scenarios

#import "../../src/assignly.typ": *

// Scenario 1: Complete basic assignment with all question types
#assignment(
  title: "Midterm Examination",
  course: "Computer Science 101", 
  author: "Dr. Alice Johnson",
  date: "March 15, 2024",
  show-answers: true,
  instructions: "Please read all instructions carefully. Show all work for full credit."
)[

= Part I: Multiple Choice Questions (20 points)

Choose the best answer for each question.

#single-choice(
  [Which of the following is NOT a programming language?],
  ("Python", "HTML", "Java", "C++"),
  1, // HTML is not a programming language
  explanation: [HTML is a markup language, not a programming language. It's used for structuring web content.],
  points: 2
)

#multiple-choice(
  [Which of the following are object-oriented programming concepts?],
  ("Inheritance", "Encapsulation", "Recursion", "Polymorphism", "Iteration"),
  (0, 1, 3), // Inheritance, Encapsulation, Polymorphism
  explanation: [
    Object-oriented programming core concepts include:
    - Inheritance: Classes can inherit properties from other classes
    - Encapsulation: Data and methods are bundled together
    - Polymorphism: Objects can take multiple forms
    Recursion and iteration are programming techniques, not OOP concepts.
  ],
  points: 3
)

#true-false(
  [The time complexity of binary search is O(log n).],
  true,
  explanation: [Binary search divides the search space in half each time, resulting in O(log n) complexity.],
  points: 2
)

= Part II: Fill in the Blanks (15 points)

Complete the following statements.

#fill-blank(
  "The Big O notation for the worst-case time complexity of quicksort is ___, while the average case is ___.",
  ("O(n²)", "O(n log n)"),
  explanation: [
    Quicksort worst case occurs when the pivot is always the smallest or largest element, leading to O(n²).
    Average case divides the array more evenly, resulting in O(n log n).
  ],
  points: 4
)

#fill-blank(
  "In a binary tree with ___ nodes, the maximum height is ___ and the minimum height is ___.",
  ("n", "n-1", "⌊log₂(n)⌋"),
  explanation: [
    - Maximum height: linear tree (n-1)
    - Minimum height: complete binary tree (⌊log₂(n)⌋)
  ],
  points: 5
)

= Part III: Short Answer Questions (30 points)

Provide detailed explanations for the following questions.

#short-answer(
  [Explain the difference between a stack and a queue data structure. Give one real-world example for each.],
  answer: [
    *Stack (LIFO - Last In, First Out):*
    - Elements are added and removed from the same end (top)
    - Operations: push (add), pop (remove), peek (view top)
    - Example: Browser back button - most recent page is accessed first
    
    *Queue (FIFO - First In, First Out):*
    - Elements are added at one end (rear) and removed from the other (front)  
    - Operations: enqueue (add), dequeue (remove), front (view first)
    - Example: Print job queue - first document sent is printed first
  ],
  points: 8,
  answer-lines: 6
)

#short-answer(
  [Describe the process of resolving a hash collision using chaining. Include advantages and disadvantages.],
  answer: [
    *Chaining Process:*
    1. Each hash table slot contains a pointer to a linked list
    2. When collision occurs, new element is added to the linked list at that slot
    3. Search requires traversing the linked list at the computed hash index
    
    *Advantages:*
    - Simple implementation
    - Dynamic memory usage
    - Hash table never "fills up"
    
    *Disadvantages:*
    - Extra memory overhead for pointers
    - Poor cache performance due to linked list traversal
    - Performance degrades to O(n) if many collisions occur
  ],
  points: 10,
  answer-lines: 8
)

= Part IV: Problem Solving (35 points)

#multi-part(
  [Algorithm Analysis: Consider the following recursive function for computing Fibonacci numbers:],
  (
    ([Write the recurrence relation for this algorithm's time complexity], [T(n) = T(n-1) + T(n-2) + O(1)]),
    ([Solve the recurrence to find the time complexity], [T(n) = O(φⁿ) where φ = (1+√5)/2 ≈ 1.618]),
    ([Suggest an optimization and analyze its time complexity], [Use dynamic programming with memoization: O(n) time, O(n) space]),
    ([Implement the optimized version in pseudocode], [
```
function fib_memo(n, memo):
    if n in memo: return memo[n]
    if n <= 1: return n
    memo[n] = fib_memo(n-1, memo) + fib_memo(n-2, memo)
    return memo[n]
```
    ])
  ),
  points: 20
)

]

// Test compilation to ensure all components work together
// This represents a complete, realistic assignment scenario