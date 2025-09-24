// T023 Teacher Mode Test
// Test mode switching functionality in the main template

#import "../../src/assignly.typ": *

// Test assignment in teacher mode
#assignment(
  title: "T023 Teacher Mode Test",
  course: "Software Engineering 101",
  due-date: "2025-09-18",
  author: "Test Instructor",
  instructions: "This test verifies teacher mode functionality with answer visibility.",
  show-answers: true, // Enable teacher mode
)[

  #section("Answer Visibility Test")[
    In teacher mode, all answers should be visible.
  ]

  #single-choice(
    "Which mode is this document rendered in?",
    ("Student mode", "Teacher mode", "Draft mode", "Preview mode"),
    1,
    explanation: "This is teacher mode as indicated by show-answers: true",
  )

  #multiple-choice(
    "Which features are visible in teacher mode? (Select all)",
    (
      "Correct answers marked",
      "Explanations shown",
      "Answer key header",
      "Sample answers",
    ),
    (0, 1, 2, 3),
    explanation: "All these features are visible in teacher mode.",
  )

  #fill-blank(
    "Teacher mode displays ___ instead of blank lines.",
    ("answers",),
    explanation: "Correct answers are shown highlighted in teacher mode.",
  )

  #short-answer(
    "Explain the benefit of dual-mode rendering.",
    answer: "Dual-mode rendering allows the same template to generate both student worksheets and teacher answer keys, reducing duplication and ensuring consistency.",
    explanation: "This feature saves time and prevents discrepancies between versions.",
  )
]
