#import "../src/assignly.typ": *

#assignment(
  title: "Question Types Test",
  course: "CS 101",
  instructor: "Dr. Test",
  due-date: "2024-01-15",
  show-answers: true,
)[

  = Section 1: Basic Question Types

  #single-choice(
    [What is 2 + 2?],
    ("3", "4", "5", "6"),
    1, // Index of correct answer (0-based)
    explanation: [The correct answer is 4 because 2 + 2 = 4.],
  )

  #multiple-choice(
    [Which of the following are prime numbers?],
    ("2", "3", "4", "5"),
    (0, 1, 3), // Indices of correct answers
    explanation: [Prime numbers are 2, 3, and 5. The number 4 is composite.],
  )

  #true-false(
    [The earth is round.],
    true,
    explanation: [The Earth is approximately spherical in shape.],
  )

  #fill-blank(
    "The capital of France is ___.",
    ("Paris",),
    explanation: "Paris is the capital and largest city of France.",
  )

  #short-answer(
    [Explain the concept of recursion in programming.],
    answer: [Recursion is a programming technique where a function calls itself to solve smaller subproblems until it reaches a base case.],
    answer-lines: 3,
  )

  = Section 2: Multi-part Question

  #multi-part(
    [Solve the following system of equations:],
    (
      ([Find the value of x:], [x = 2]),
      ([Find the value of y:], [y = 3]),
      (
        [Verify your solution:],
        [Substituting x=2, y=3 into both equations confirms the solution.],
      ),
    ),
  )

]
