// T006: Function test for #multiple-choice() rendering
// This test validates the multiple-choice() function contract and rendering

#import "../../src/assignly.typ": *

#assignment(
  title: "Multiple Choice Function Test",
  course: "TEST",
  date: "2024-01-15",
  show-answers: true,
)[

  = Multiple Choice Function Contract Tests

  // Test 1: Basic multiple-choice function contract
  #multiple-choice(
    [Which of the following are programming languages?],
    ("Python", "HTML", "JavaScript", "CSS", "Java"),
    (0, 2, 4), // Python, JavaScript, Java
    explanation: [Programming languages can execute logic, while HTML and CSS are markup/styling languages.],
  )

  // Test 2: Multiple-choice with single correct answer
  #multiple-choice(
    [Which are prime numbers? (Only one correct option group)],
    ("1, 2, 3", "2, 3, 5", "4, 6, 8", "9, 10, 12"),
    (1,), // Only "2, 3, 5" contains only primes
    explanation: [2, 3, and 5 are all prime numbers.],
  )

  // Test 3: Multiple-choice with all options correct
  #multiple-choice(
    [Which are positive integers?],
    ("1", "2", "3", "4"),
    (0, 1, 2, 3), // All are correct
    explanation: [All of these numbers (1, 2, 3, 4) are positive integers.],
  )

  // Test 4: Multiple-choice with custom points
  #multiple-choice(
    [Select all correct mathematical identities:],
    (
      $e^(i pi) = -1$,
      $sin^2(x) + cos^2(x) = 1$,
      $integral_0^infinity e^(-x^2) dif x = sqrt(pi)/2$,
      $sum_(n=1)^infinity 1/n^2 = pi^2/6$,
    ),
    (0, 1, 2, 3), // All are famous mathematical identities
    explanation: [These are Euler's identity, Pythagorean identity, Gaussian integral, and Basel problem solution.],
    points: 10,
  )

  // Test 5: Multiple-choice with complex bilingual content
  #multiple-choice(
    [以下哪些是中国的省份？ Which of these are Chinese provinces?],
    (
      "广东 Guangdong",
      "香港 Hong Kong",
      "北京 Beijing",
      "上海 Shanghai",
      "四川 Sichuan",
    ),
    (0, 4), // Guangdong and Sichuan are provinces; Hong Kong is SAR; Beijing and Shanghai are municipalities
    explanation: [
      广东和四川是省份。Guangdong and Sichuan are provinces.
      香港是特别行政区。Hong Kong is a Special Administrative Region.
      北京和上海是直辖市。Beijing and Shanghai are municipalities.
    ],
  )

]

// Test 6: Student mode (no answers shown)
#assignment(
  title: "Multiple Choice Student Mode Test",
  course: "TEST",
  date: "2024-01-15",
  show-answers: false,
)[

  = Student Version Tests

  #multiple-choice(
    [Student mode question - no correct answers should be highlighted:],
    ("Option A", "Option B", "Option C", "Option D"),
    (1, 3), // B and D are correct
    explanation: [This explanation should not be visible in student mode.],
  )

]
