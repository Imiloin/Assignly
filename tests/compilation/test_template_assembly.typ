// T023 Main Template Assembly Verification Test
// Test document initialization, metadata handling, and mode switching

#import "../../src/assignly.typ": *

// Test 1: Basic assignment with all parameters
#assignment(
  title: "T023 Template Assembly Test",
  course: "Software Engineering 101",
  date: "2025-09-18",
  author: "Test Instructor",
  instructions: "This test verifies the complete integration of all template components.",
  show-answers: false,
)[

  #section("Core Template Features")[
    This assignment tests the main template assembly functionality.
  ]

  #single-choice(
    "Which component handles document initialization?",
    (
      "Utils module",
      "Layout module",
      "Main assignment function",
      "Questions module",
    ),
    2,
    explanation: "The main assignment function in src/assignly.typ handles document initialization and configuration.",
  )

  #section("Metadata Integration")[
    Testing metadata handling and display.
  ]

  #true-false(
    "The template supports bilingual typography.",
    true,
    explanation: "Yes, the template uses font fallback for Latin and CJK text.",
  )

  #section("Mode Switching Test")[
    This section tests the dual-mode functionality.
  ]

  #fill-blank(
    "The show-answers parameter controls ___ mode rendering.",
    ("dual",),
    explanation: "The show-answers parameter switches between student and teacher modes.",
  )

  #answer-space(lines: 2)

  // Note: Image functionality tested in separate image handling test
]
