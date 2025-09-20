// T026 Utility Functions Integration Test
// Test all section and utility functions

#import "../../src/assignly.typ": *

#assignment(
  title: "T026 Utility Functions Test",
  course: "Template Integration 101",
  date: "2025-09-18",
  author: "System Test",
  instructions: "This test validates all utility functions and their integration.",
  show-answers: false,
)[

  #section("Basic Section Test")[
    This is a basic section with standard formatting.

    #single-choice(
      "Which utility function creates sections?",
      ("section()", "create-section()", "make-section()", "new-section()"),
      0,
      explanation: "The section() function creates formatted sections.",
    )
  ]

  #section("Numbered Section", numbered: true)[
    This section demonstrates numbered section functionality.
  ]

  #section("Another Numbered Section", numbered: true)[
    This shows section numbering progression.
  ]

  #separator()

  #section("Answer Space Test")[
    Testing different answer space configurations.

    Standard answer space (3 lines):
    #answer-space()

    Custom answer space (5 lines with custom styling):
    #answer-space(lines: 5, line-height: 2em, line-style: 1pt + blue)
  ]

  #separator(style: 2pt + red)

  #section("Image Figure Test")[
    Testing image figure functionality. (Image testing done separately)

    // Note: Actual image testing is performed in test_image_handling.typ
    Image figures support captions and sizing parameters.
  ]

  #section("Note Box Examples")[
    Different types of note boxes:

    #note-box("This is an informational note.", type: "info")

    #note-box("This is a warning note.", type: "warning")

    #note-box("This is a success note.", type: "success")

    #note-box("This is an error note.", type: "error")
  ]

  #page-break()

  #section("New Page Content")[
    This content appears on a new page thanks to the page-break() function.

    #true-false(
      "Utility functions enhance document organization.",
      true,
      explanation: "Yes, utility functions provide structure and consistency.",
    )
  ]
]
