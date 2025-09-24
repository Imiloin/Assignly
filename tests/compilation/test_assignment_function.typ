// T004: Function test for #assignment() basic document structure
// This test validates the assignment() function contract and basic rendering

#import "../../src/assignly.typ": *

// Test 1: Basic assignment function contract
// Should create document with title, course, date
#assignment(
  title: "Test Assignment",
  course: "CS 101",
  due-date: "2024-01-15",
)[
  This is test content to verify basic document structure.
]

// Test 2: Assignment with optional parameters
#assignment(
  title: "Advanced Test",
  course: "MATH 200",
  due-date: "2024-01-16",
  author: "Dr. Smith",
  instructions: "Please show all work.",
  show-answers: false,
)[
  Content with optional parameters test.
]

// Test 3: Assignment with answer visibility
#assignment(
  title: "Teacher Version Test",
  course: "PHY 101",
  due-date: "2024-01-17",
  show-answers: true,
)[
  Content to test answer visibility mode.
]

// Test 4: Bilingual font support test
#assignment(
  title: "双语测试 Bilingual Test",
  course: "LANG 101",
  due-date: "2024-01-18",
  font-latin: "Times New Roman",
  font-cjk: "SimSun",
)[
  English text mixed with 中文文本 to test font fallback system.
]

// NOTE: Validation tests (empty title, etc.) should be in separate error test files
