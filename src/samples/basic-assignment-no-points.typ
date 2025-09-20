// Basic Assignment Sample - Points Hidden
// Demonstrates the show-points: false functionality
//
// This sample shows:
// - Same content as basic-assignment.typ
// - But with points hidden from students
// - Useful for exams where you don't want to reveal point values

#import "../assignly.typ": *

#assignment(
  title: "Introduction to Computer Science - Quiz 1",
  course: "CS 101",
  date: "September 25, 2025",
  author: "Prof. Smith",
  instructions: "Please answer all questions clearly. Show your work where applicable. You have 50 minutes to complete this quiz.",
  show-answers: false,
  show-points: false, // Hide points from students
)[

  #section("Multiple Choice Questions")[
    Choose the best answer for each question.
  ]

  #single-choice(
    "Which of the following is NOT a programming language?",
    ("Python", "Java", "HTML", "C++"),
    2,
    points: 2,
    explanation: "HTML is a markup language, not a programming language.",
  )

  #single-choice(
    "What does CPU stand for?",
    (
      "Central Processing Unit",
      "Computer Processing Unit",
      "Central Program Unit",
      "Computer Program Unit",
    ),
    0,
    points: 2,
    explanation: "CPU stands for Central Processing Unit, the main processor of a computer.",
  )

  #multiple-choice(
    "Which of the following are valid data types in most programming languages? (Select all that apply)",
    ("Integer", "String", "Boolean", "Unicorn", "Float"),
    (0, 1, 2, 4),
    points: 3,
    explanation: "Integer, String, Boolean, and Float are common data types. 'Unicorn' is not a standard data type.",
  )

  #multiple-choice(
    [Which mathematical expressions represent *Big O notation* correctly?],
    (
      [$O(n^2)$ - quadratic complexity],
      [$O(log n)$ - logarithmic complexity],
      [$O(1)$ - constant complexity],
      [$O(n!)$ - factorial complexity],
    ),
    (0, 1, 2, 3), // All are correct
    points: 4,
    explanation: [All these are valid Big O notation examples representing different algorithm complexities.],
  )

  #section("Fill in the Blanks")[
    Complete each sentence by filling in the missing words.
  ]

  #fill-blank(
    "An ___ is a step-by-step procedure for solving a problem, while a ___ is the implementation of an algorithm in a specific programming language.",
    ("algorithm", "program"),
    points: 3,
    explanation: "An algorithm is the logical sequence of steps, and a program is its implementation in code.",
  )

  #fill-blank(
    [The derivative of $f(x) = x^3$ is $f'(x) =$ #fill-blank-space(answer: "3x²", width: "4cm")],
    (), // Content mode
    points: 4,
    explanation: [Using the power rule: $dif/dif x [x^n] = n x^(n-1)$],
  )

  #section("Short Answer Questions")[
    Provide complete answers in the space provided.
  ]

  #short-answer(
    "Explain the difference between compiled and interpreted programming languages.",
    answer: "Compiled languages are translated into machine code before execution, resulting in faster runtime performance but requiring compilation time. Interpreted languages are translated line-by-line during execution, offering more flexibility but slower performance.",
    points: 5,
    answer-lines: 4,
    explanation: "This covers the fundamental difference between compilation and interpretation.",
  )

  #short-answer(
    [Solve the quadratic equation $2x^2 - 5x + 2 = 0$],
    answer: [
      Using the quadratic formula: $x = (5 ± sqrt(25-16))/4 = (5 ± 3)/4$

      So the solutions are: $x = 2$ and $x = 1/2$
    ],
    points: 6,
    answer-lines: 4,
    explanation: [Apply the quadratic formula: $x = (-b ± sqrt(b^2 - 4a c))/(2a)$],
  )

  #section("True/False Questions")[
    Mark each statement as true or false.
  ]

  #true-false(
    "A compiler translates source code into machine code.",
    true,
    points: 2,
    explanation: "Yes, a compiler converts high-level source code into machine language that the processor can execute.",
  )

  #true-false(
    "RAM is a type of permanent storage.",
    false,
    points: 2,
    explanation: "False. RAM (Random Access Memory) is volatile memory that loses its contents when power is removed.",
  )

  #true-false(
    [The time complexity of binary search is $O(log n)$.],
    true,
    points: 3,
    explanation: [Binary search divides the search space in half each time, resulting in logarithmic time complexity.],
  )

]
