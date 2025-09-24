// T007: Function test for #true-false() rendering
// This test validates the true-false() function contract and rendering

#import "../../src/assignly.typ": *

#assignment(
  title: "True/False Function Test",
  course: "TEST",
  due-date: "2024-01-15",
  show-answers: true,
)[

  = True/False Function Contract Tests

  // Test 1: Basic true/false function contract - true answer
  #true-false(
    [The Earth is approximately spherical.],
    true,
    explanation: [The Earth is indeed approximately spherical, though slightly flattened at the poles.],
  )

  // Test 2: Basic true/false function contract - false answer
  #true-false(
    [Water freezes at 0°F.],
    false,
    explanation: [Water freezes at 32°F (0°C) under standard atmospheric pressure.],
  )

  // Test 3: True/false with minimal parameters (no explanation)
  #true-false(
    [The speed of light is constant in vacuum.],
    true,
  )

  // Test 4: True/false with custom points
  #true-false(
    [This complex physics statement is worth more points.],
    false,
    explanation: [This tests custom point assignment for true/false questions.],
    points: 3,
  )

  // Test 5: True/false with mathematical content
  #true-false(
    [The derivative of $sin(x)$ is $cos(x)$.],
    true,
    explanation: [
      By definition, $dif/(dif x) sin(x) = cos(x)$.
      This is a fundamental calculus identity.
    ],
  )

  // Test 6: True/false with bilingual content
  #true-false(
    [中国的首都是北京。The capital of China is Beijing.],
    true,
    explanation: [
      北京是中华人民共和国的首都。
      Beijing is the capital of the People's Republic of China.
    ],
  )

  // Test 7: True/false with complex scientific content
  #true-false(
    [In quantum mechanics, the position and momentum of a particle can be measured simultaneously with perfect accuracy.],
    false,
    explanation: [
      This violates Heisenberg's Uncertainty Principle, which states that
      the more precisely one measures position, the less precisely momentum can be known.
    ],
  )

]

// Test 8: Student mode (no answers shown)
#assignment(
  title: "True/False Student Mode Test",
  course: "TEST",
  due-date: "2024-01-15",
  show-answers: false,
)[

  = Student Version Tests

  #true-false(
    [Student mode question - correct answer should not be highlighted:],
    true,
    explanation: [This explanation should not be visible in student mode.],
  )

  #true-false(
    [Another student question:],
    false,
    explanation: [This explanation is also hidden.],
  )

]
