// T020: Content Type Support Test
// Comprehensive test for new content type functionality in questions
// Tests math formulas, formatting, and mixed content types

#import "../../src/assignly.typ": *

#assignment(
  title: "Content Type Support - Feature Test",
  course: "MATH-CS",
  date: "2025-09-18",
  show-answers: true,
)[

  = Content Type Question Support Tests

  #note-box(
    [
      This test validates the new content type support that enables:
      - Mathematical formulas in questions: $f(x) = x^2 + 2x + 1$
      - *Bold*, _italic_, and `code` formatting
      - Mixed content with legacy string mode compatibility
    ],
    type: "info",
  )

  == Single Choice with Content Types

  // Test 1: Math formulas in question and options
  #single-choice(
    [What is the limit $lim_(x -> 0) (sin x) / x$?],
    ([$0$], [$1$], [$infinity$], [undefined]),
    1,
    points: 3,
    explanation: [This is a fundamental limit: $lim_(x -> 0) (sin x) / x = 1$],
  )

  // Test 2: Formatting in questions
  #single-choice(
    [Which statement about *Typst* is correct?],
    (
      [It uses _LaTeX_ syntax for everything],
      [It has *modern* typography features],
      [It requires `external` dependencies],
      [It only supports _basic_ formatting],
    ),
    1,
    points: 2,
    explanation: [Typst has modern typography while being self-contained.],
  )

  == Multiple Choice with Content Types

  #multiple-choice(
    [Which mathematical expressions are *correct*? (Select all)],
    (
      [$e^(i π) + 1 = 0$ (Euler's identity)],
      [$sum_(n=1)^infinity 1/n^2 = π^2/6$ (Basel problem)],
      [$integral_(-infinity)^infinity e^(-x^2) d x = sqrt(π)$ (Gaussian integral)],
      [$lim_(n -> infinity) (1 + 1/n)^n = π$ (incorrect)],
    ),
    (0, 1, 2), // First three are correct
    points: 6,
    explanation: [The fourth option is incorrect; the limit equals $e$, not $π$.],
  )

  == Fill-in-the-Blank with Content Types

  // Test 3: Content mode with math
  #fill-blank(
    [The quadratic formula is $x =$ #fill-blank-space(answer: "(-b ± sqrt(b^2 - 4a c)) / (2a)", width: "8cm")],
    (), // Empty for content mode
    points: 5,
    explanation: [Solves $a x^2 + b x + c = 0$ for any quadratic equation.],
  )

  // Test 4: Multiple blanks in content mode
  #fill-blank(
    [
      Newton's second law: $F =$ #fill-blank-space(answer: "ma", width: "2cm"),
      and kinetic energy: $E_k =$ #fill-blank-space(answer: "½mv²", width: "3cm")
    ],
    (), // Empty for content mode
    points: 4,
    explanation: [Basic physics formulas: Force and kinetic energy.],
  )

  // Test 5: Legacy string mode (backward compatibility)
  #fill-blank(
    "The derivative of sin(x) is ___ and the integral is ___.",
    ("cos(x)", "-cos(x) + C"),
    points: 3,
    explanation: "String mode still works for simple cases.",
  )

  == Short Answer with Content Types

  #short-answer(
    [Solve the system: $ cases(2x + 3y = 7, x - y = 1) $],
    answer: [
      From the second equation: $x = y + 1$

      Substitute into first: $2(y + 1) + 3y = 7$

      Simplify: $2y + 2 + 3y = 7 => 5y = 5 => y = 1$

      Therefore: $x = 1 + 1 = 2$

      Solution: $(x, y) = (2, 1)$
    ],
    points: 8,
    answer-lines: 6,
    explanation: [Use substitution method to solve the linear system.],
  )

  == True/False with Content Types

  #true-false(
    [The equation $integral_0^π sin x d x = 2$ is correct.],
    true,
    points: 3,
    explanation: [
      $integral_0^π sin x d x = [-cos x]_0^π = -cos π - (-cos 0) = -(-1) - (-1) = 2$
    ],
  )

  == Mixed Content and Legacy Support

  #section("Compatibility Tests")[

    // Test 6: String questions still work
    #single-choice(
      "What is 2 + 2?",
      ("3", "4", "5"),
      1,
      points: 1,
      explanation: "Legacy string mode compatibility test.",
    )

    // Test 7: Content questions with simple text
    #single-choice(
      [What is 3 + 3?],
      ([5], [6], [7]),
      1,
      points: 1,
      explanation: [Content mode for simple questions also works.],
    )
  ]

]

// Student Mode Test
#assignment(
  title: "Content Type Support - Student Mode",
  course: "MATH-CS",
  date: "2025-09-18",
  show-answers: false,
)[

  = Student Mode - Content Type Test

  #note-box(
    "In student mode, formulas should render but answers should be hidden.",
    type: "warning",
  )

  // Math should render, answers should be hidden
  #single-choice(
    [What is $integral_0^1 x^2 d x$?],
    ([$1/4$], [$1/3$], [$1/2$]),
    1,
    points: 3,
    explanation: [This should be hidden in student mode.],
  )

  // Fill-blank in content mode - student version
  #fill-blank(
    [The derivative of $f(x) = x^3$ is $f'(x) =$ #fill-blank-space(answer: "3x²", width: "4cm")],
    (),
    points: 4,
    explanation: [Using power rule - hidden in student mode.],
  )

  // Short answer with math - student version
  #short-answer(
    [Prove that $sum_(n=1)^infinity 1/n^2 = π^2/6$],
    answer: [This proof involves Fourier series and complex analysis...],
    points: 10,
    answer-lines: 8,
    explanation: [This is the famous Basel problem solution.],
  )

]
