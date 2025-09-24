// Content Type Feature Showcase
// Demonstrates the new math formula and rich formatting support
//
// This sample specifically showcases:
// - Content type questions with math formulas
// - Rich text formatting in questions
// - Backward compatibility with string questions
// - Mixed usage patterns

#import "../assignly.typ": *

#assignment(
  title: "Content Type Feature Showcase",
  course: "MATH 101 + CS 101",
  due-date: "September 18, 2025",
  author: "Assignly Development Team",
  instructions: "This assignment demonstrates the new content type support in Assignly questions. Math formulas and rich formatting are now fully supported!",
  show-answers: false, // Set to true to see teacher mode
  font-latin: "Times New Roman",
  font-cjk: "SimSun",
)[

  #note-box(
    [
      *NEW FEATURE*: Questions now support content types!
      Use `[...]` instead of `"..."` for math formulas and formatting.
    ],
    type: "success",
  )

  = Mathematical Content Support

  #section("Calculus Questions")[

    #single-choice(
      [What is the derivative of $f(x) = x^3 - 2x^2 + 5x - 1$?],
      (
        [$f'(x) = 3x^2 - 4x + 5$],
        [$f'(x) = 3x^2 - 2x + 5$],
        [$f'(x) = x^2 - 4x + 5$],
        [$f'(x) = 3x^3 - 4x^2 + 5x$],
      ),
      0,
      points: 4,
      explanation: [Using the power rule: $dif/dif x [x^n] = n x^(n-1)$],
    )

    #fill-blank(
      [
        The fundamental theorem of calculus states:
        $integral_a^b f(x) d x =$ #fill-blank-space(
          answer: "F(b) - F(a)",
          width: "6cm",
        )
        where $F(x)$ is an antiderivative of $f(x)$.
      ],
      (), // Empty for content mode
      points: 5,
      explanation: [This connects differentiation and integration as inverse operations.],
    )

    #short-answer(
      [Evaluate the limit: $lim_(x -> 0) (e^x - 1) / x$],
      answer: [
        This is a $0/0$ indeterminate form. Using L'Hôpital's rule:
        $lim_(x -> 0) (e^x - 1) / x = lim_(x -> 0) e^x / 1 = e^0 = 1$

        Alternatively, this follows from the definition of $e^x$ derivative.
      ],
      points: 6,
      answer-lines: 4,
      explanation: [Standard limit related to the exponential function derivative.],
    )

  ]

  #section("Linear Algebra")[

    #multiple-choice(
      [Which statements about matrix operations are correct? (Select all)],
      (
        [Matrix multiplication is *commutative*: $A B = B A$],
        [Matrix multiplication is *associative*: $(A B) C = A (B C)$],
        [The *transpose* of a product: $(A B)^T = B^T A^T$],
        [The *determinant* of a product: $det(A B) = det(A) det(B)$],
      ),
      (1, 2, 3), // Only first is incorrect
      points: 6,
      explanation: [Matrix multiplication is NOT commutative in general, but the other properties hold.],
    )

    #true-false(
      [If $A$ is a $3 times 3$ matrix and $det(A) = 0$, then $A$ is *not invertible*.],
      true,
      points: 3,
      explanation: [A matrix is invertible if and only if its determinant is non-zero.],
    )

  ]

  #page-break()

  = Computer Science Content

  #section("Algorithms and Complexity")[

    #single-choice(
      [What is the time complexity of the following algorithm?

        ```python
        for i in range(n):
            for j in range(i, n):
                print(i, j)
        ```
      ],
      (
        [$O(n)$ - linear],
        [$O(n^2)$ - quadratic],
        [$O(n log n)$ - linearithmic],
        [$O(2^n)$ - exponential],
      ),
      1,
      points: 4,
      explanation: [The nested loops execute approximately $n^2/2$ times, which is $O(n^2)$.],
    )

    #fill-blank(
      [
        The master theorem for recurrence $T(n) = a T(n/b) + f(n)$ compares
        $f(n)$ with $n^(log_b a)$. For $T(n) = 2T(n/2) + n$, we have
        $log_2 2 =$ #fill-blank-space(answer: "1", width: "2cm"), so the solution is
        #fill-blank-space(answer: "O(n log n)", width: "4cm").
      ],
      (), // Content mode
      points: 5,
      explanation: [This is case 2 of the master theorem since $f(n) = n = n^1$.],
    )

  ]

  = Rich Text Formatting Support

  #section("Formatting Examples")[

    #single-choice(
      [Which of the following demonstrate *proper* formatting in technical writing?],
      (
        [Use _italics_ for emphasis and *bold* for strong emphasis],
        [Use `monospace` for code and formulas for math],
        [Combine *bold* and _italics_ when needed],
        [All of the above are correct],
      ),
      3,
      points: 2,
      explanation: [All these formatting choices follow good technical writing practices.],
    )

    #true-false(
      [The `Big O` notation $O(n^2)$ describes the *worst-case* complexity.],
      false,
      points: 3,
      explanation: [Big O describes an upper bound, not specifically worst-case. It's about growth rate.],
    )

  ]

  = Backward Compatibility

  #note-box(
    "String-based questions (legacy mode) continue to work exactly as before!",
    type: "info",
  )

  #section("Legacy String Mode")[

    #single-choice(
      "What is 2 + 2?", // String mode
      ("3", "4", "5", "6"),
      1,
      points: 1,
      explanation: "Basic arithmetic - this question uses the original string format.",
    )

    #fill-blank(
      "The capital of France is ___ and the capital of Germany is ___.", // String mode
      ("Paris", "Berlin"),
      points: 2,
      explanation: "Geography question using legacy string format with blanks.",
    )

    #short-answer(
      "Explain why backward compatibility is important in software design.", // String mode
      answer: "Backward compatibility ensures existing code continues to work when systems are updated, reducing maintenance costs and user frustration.",
      points: 4,
      answer-lines: 3,
      explanation: "This tests understanding of software engineering principles.",
    )

  ]

  = Usage Guidelines

  #note-box(
    [
      *When to use Content Type `[...]`:*
      - Questions with math formulas: $integral f(x) d x$
      - Rich formatting needed: *bold*, _italic_, `code`
      - Complex layouts with multiple elements

      *When to use String Type `"..."`:*
      - Simple text-only questions
      - Existing code (automatic compatibility)
      - Quick prototyping
    ],
    type: "info",
  )

  #separator()

  #single-choice(
    [After exploring these examples, how would you rate the content type feature?],
    (
      [Useful for basic questions only],
      [Good for math-heavy courses],
      [Excellent for mixed STEM content],
      [*Revolutionary* for academic typesetting],
    ),
    3,
    points: 2,
    explanation: [The content type support significantly enhances Typst's academic document capabilities.],
  )

]
