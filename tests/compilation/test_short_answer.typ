// T009: Function test for #short-answer() rendering
// This test validates the short-answer() function contract and rendering

#import "../../src/assignly.typ": *

#assignment(
  title: "Short Answer Function Test",
  course: "TEST",
  due-date: "2024-01-15",
  show-answers: true,
)[

  = Short Answer Function Contract Tests

  // Test 1: Basic short-answer function contract
  #short-answer(
    [Explain the concept of recursion in programming.],
    answer: [Recursion is a programming technique where a function calls itself to solve smaller subproblems until it reaches a base case.],
    explanation: [This is a fundamental concept in computer science and mathematics.],
  )

  // Test 2: Short-answer with minimal parameters (no answer, default lines)
  #short-answer(
    [What is your favorite programming language and why?],
  )

  // Test 3: Short-answer with custom answer lines
  #short-answer(
    [Write a brief essay about the importance of algorithms (5 lines):],
    answer: [
      Algorithms are step-by-step procedures for solving problems.
      They form the foundation of computer science and programming.
      Efficient algorithms can dramatically improve software performance.
      Understanding algorithms helps in problem-solving and logical thinking.
      They are essential for data processing, optimization, and automation.
    ],
    answer-lines: 5,
  )

  // Test 4: Short-answer with custom points
  #short-answer(
    [Describe the process of photosynthesis in detail.],
    answer: [
      Photosynthesis is the process by which green plants convert sunlight,
      carbon dioxide, and water into glucose and oxygen. It occurs in chloroplasts
      and involves light-dependent and light-independent reactions.
    ],
    explanation: [This is a complex biological process worth more points.],
    points: 10,
    answer-lines: 4,
  )

  // Test 5: NEW - Short-answer with mathematical content
  #short-answer(
    [Solve the differential equation: $dif y / dif x = 2x + 1$],
    answer: [
      To solve $dif y / dif x = 2x + 1$:
      Integrate both sides: $y = integral (2x + 1) d x = x^2 + x + C$
      Therefore, $y = x^2 + x + C$ where $C$ is the constant of integration.
    ],
    explanation: [This tests mathematical notation in short-answer questions.],
    points: 6,
    answer-lines: 4,
  )

  // Test 6: NEW - String mode (legacy) still works
  #short-answer(
    "Explain the water cycle using simple terms.",
    answer: "Water evaporates from oceans and lakes, forms clouds, then falls as precipitation, and flows back to water bodies.",
    explanation: "This tests backward compatibility with string questions.",
    points: 5,
    answer-lines: 3,
  )

  // Test 5: Short-answer with mathematical content
  #short-answer(
    [Derive the quadratic formula from $a x^2 + b x + c = 0$.],
    answer: [
      Starting with $a x^2 + b x + c = 0$:
      1. Divide by $a$: $x^2 + (b/a)x + c/a = 0$
      2. Complete the square: $(x + b/(2a))^2 = b^2/(4a^2) - c/a$
      3. Simplify: $(x + b/(2a))^2 = (b^2 - 4 a c)/(4a^2)$
      4. Take square root: $x + b/(2a) = plus.minus sqrt(b^2 - 4 a c)/(2a)$
      5. Solve for $x$: $x = (-b plus.minus sqrt(b^2 - 4 a c))/(2a)$
    ],
    explanation: [This derivation shows the algebraic steps to obtain the quadratic formula.],
    answer-lines: 8,
  )

  // Test 6: Short-answer with bilingual content
  #short-answer(
    [用中文解释什么是人工智能。Explain artificial intelligence in Chinese.],
    answer: [
      人工智能（AI）是计算机科学的一个分支，旨在创造能够执行通常需要人类智能的任务的机器。
      这包括学习、推理、问题解决、感知和语言理解等能力。
      AI技术广泛应用于机器学习、自然语言处理、计算机视觉等领域。
    ],
    explanation: [
      This tests bilingual support in short answer questions.
      这测试简答题中的双语支持。
    ],
    answer-lines: 6,
  )

  // Test 7: Short-answer with very long answer (stress test)
  #short-answer(
    [Write a comprehensive analysis of climate change (10 lines):],
    answer: [
      Climate change refers to long-term shifts in global temperatures and weather patterns.
      Human activities, particularly greenhouse gas emissions, are the primary cause.
      Rising temperatures lead to melting ice caps, rising sea levels, and extreme weather.
      The impacts include threats to ecosystems, agriculture, and human settlements.
      Mitigation strategies include renewable energy adoption and carbon reduction.
      Adaptation measures help communities cope with unavoidable climate impacts.
      International cooperation through agreements like the Paris Accord is crucial.
      Individual actions such as energy conservation also contribute to solutions.
      Technology innovations in clean energy and carbon capture show promise.
      Urgent action is needed to prevent catastrophic environmental consequences.
    ],
    answer-lines: 10,
  )

]

// Test 8: Student mode (no answers shown)
#assignment(
  title: "Short Answer Student Mode Test",
  course: "TEST",
  due-date: "2024-01-15",
  show-answers: false,
)[

  = Student Version Tests

  #short-answer(
    [Student mode: The sample answer should not be visible here.],
    answer: [This answer should be hidden from students.],
    explanation: [This explanation should also be hidden.],
    answer-lines: 3,
  )

  #short-answer(
    [Another question with blank lines for student responses:],
    answer: [Hidden sample answer.],
    answer-lines: 5,
  )

]
