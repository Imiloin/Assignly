// T008: Function test for #fill-blank() rendering
// This test validates the fill-blank() function contract and rendering

#import "../../src/assignly.typ": *

#assignment(
  title: "Fill-in-the-Blank Function Test",
  course: "TEST",
  date: "2024-01-15",
  show-answers: true,
)[

  = Fill-in-the-Blank Function Contract Tests

  // Test 1: Basic fill-blank function contract - single blank
  #fill-blank(
    "The capital of France is ___.",
    ("Paris",),
    explanation: [Paris is the capital and largest city of France.],
  )

  // Test 2: Fill-blank with multiple blanks
  #fill-blank(
    "The formula for water is ___ and it boils at ___ degrees Celsius.",
    ("H₂O", "100"),
    explanation: [Water has the chemical formula H₂O and boils at 100°C at standard pressure.],
  )

  // Test 3: Fill-blank with minimal parameters (no explanation)
  #fill-blank(
    "The largest planet in our solar system is ___.",
    ("Jupiter",),
  )

  // Test 4: Fill-blank with custom points and blank width
  #fill-blank(
    "Complete this complex equation: ___ + ___ = ___",
    ("E = mc²", "F = ma", "Physical Laws"),
    explanation: [This tests custom formatting for fill-in-the-blank questions.],
    points: 5,
    blank-width: 4cm,
  )

  // Test 5: Fill-blank with mathematical content
  #fill-blank(
    "The derivative of $sin(x)$ is ___ and the integral of $cos(x)$ is ___.",
    ("cos(x)", "sin(x) + C"),
    explanation: [
      These are fundamental calculus identities:
      - $dif/(dif x) sin(x) = cos(x)$
      - $integral cos(x) dif x = sin(x) + C$
    ],
  )

  // Test 6: Fill-blank with bilingual content
  #fill-blank(
    "中国的首都是___，英语是___。The capital of China is ___, in English it is ___.",
    ("北京", "Beijing", "北京", "Beijing"),
    explanation: [
      中国首都北京的英文名称是Beijing。
      The English name for China's capital 北京 is Beijing.
    ],
  )

  // Test 7: Fill-blank with many blanks (stress test)
  #fill-blank(
    "Fill in the sequence: ___, ___, ___, ___, ___",
    ("1", "2", "3", "4", "5"),
    explanation: [This is a simple counting sequence: 1, 2, 3, 4, 5.],
  )

  // Test 8: NEW - Content type with math formulas
  #fill-blank(
    [The quadratic formula is $x =$ #fill-blank-space(answer: "(-b ± sqrt(b^2 - 4a c)) / (2a)", width: "8cm")],
    (), // Empty for content mode
    explanation: [The quadratic formula solves equations of the form $a x^2 + b x + c = 0$],
    points: 5,
  )

  // Test 9: NEW - Content type with formatting
  #fill-blank(
    [The *bold* text has emphasis and _italic_ text shows #fill-blank-space(answer: "style", width: "3cm")],
    (), // Empty for content mode
    explanation: [This tests rich text formatting in fill-blank questions],
    points: 2,
  )

  // Test 10: NEW - Mixed content and string types
  #fill-blank(
    "Legacy string mode still works with ___.",
    ("blanks",),
    explanation: [Backward compatibility is maintained],
  )

]

// Test 11: Student mode (no answers shown)
#assignment(
  title: "Fill-in-the-Blank Student Mode Test",
  course: "TEST",
  date: "2024-01-15",
  show-answers: false,
)[

  = Student Version Tests

  #fill-blank(
    "Student mode: The answer ___ should not be visible.",
    ("HIDDEN",),
    explanation: [This explanation should also not be visible.],
  )

  #fill-blank(
    "Multiple blanks test: ___ and ___ should show as blank lines.",
    ("Answer1", "Answer2"),
    explanation: [Both blanks should appear as empty lines for students to fill in.],
  )

  // Test 12: NEW - Content type in student mode
  #fill-blank(
    [Content mode with math $f'(x) =$ #fill-blank-space(answer: "2x", width: "4cm") should show blank space],
    (), // Empty for content mode
    explanation: [Math formulas should render properly even when answer is hidden],
    points: 3,
  )

]
