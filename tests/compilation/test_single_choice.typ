// T005: Function test for #single-choice() rendering
// This test validates the single-choice() function contract and rendering

#import "../../src/assignly.typ": *

#assignment(
  title: "Single Choice Function Test",
  course: "TEST",
  date: "2024-01-15",
  show-answers: true
)[

= Single Choice Function Contract Tests

// Test 1: Basic single-choice function contract
#single-choice(
  [What is 2 + 2?],
  ("3", "4", "5", "6"),
  1, // Correct answer index
  explanation: [Basic arithmetic test.]
)

// Test 2: Single-choice with minimal parameters (no explanation)
#single-choice(
  [Which is a programming language?],
  ("HTML", "Python", "CSS"),
  1
)

// Test 3: Single-choice with custom points
#single-choice(
  [Complex question worth more points:],
  ("Option A", "Option B", "Option C", "Option D"),
  2,
  explanation: [This tests custom point values.],
  points: 5
)

// Test 4: Single-choice with many options (boundary test)
#single-choice(
  [Choose the correct option from many choices:],
  ("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"),
  7, // Answer is "H"
  explanation: [Tests rendering with many options.]
)

// Test 5: Single-choice with complex content (math, formatting)
#single-choice(
  [What is the value of $integral_0^1 x^2 d x$?],
  ([$1/4$], [$1/3$], [$1/2$], [$2/3$]),
  1, // Answer is 1/3
  explanation: [
    $integral_0^1 x^2 d x = [x^3/3]_0^1 = 1/3 - 0 = 1/3$
  ]
)

// Test 6: NEW - Content type with mixed formatting
#single-choice(
  [Which statement about *Einstein's* theory is correct?],
  (
    [The equation is $E = m c^2$],
    [The equation is $E = m c^3$], 
    [The equation is $E^2 = m c^2$],
    [The equation is $E = m^2 c$]
  ),
  0, // First option is correct
  explanation: [Einstein's mass-energy equivalence: $E = m c^2$],
  points: 3
)

// Test 7: NEW - String mode (legacy) still works
#single-choice(
  "What is the capital of Japan?",
  ("Tokyo", "Osaka", "Kyoto", "Nagoya"),
  0,
  explanation: "Tokyo is the capital and largest city of Japan.",
  points: 2
)

]

// Test 8: Student mode (no answers shown)
#assignment(
  title: "Single Choice Student Mode Test",
  course: "TEST",
  date: "2024-01-15", 
  show-answers: false
)[

= Student Version Tests

#single-choice(
  [Student mode question - no answers should be visible:],
  ("Option 1", "Option 2", "Option 3"),
  1,
  explanation: [This explanation should not be visible.]
)

]