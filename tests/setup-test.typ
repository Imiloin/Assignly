#import "../src/assignly.typ": *

// Basic setup test - verify template can be imported and basic functions work

#assignment(
  title: "Setup Test",
  course: "TEST 001",
  due-date: "2025-09-18",
  show-answers: false,
)[
  This is a basic test to verify the template setup is working correctly.

  #section("Test Section")[
    This section tests the basic layout functionality.
  ]

  If you can see this document, the basic setup is working!
]
