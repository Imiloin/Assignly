// T013: Integration test - Student vs Teacher mode rendering
// This test validates the dual rendering mode functionality (show-answers flag)

#import "../../src/assignly.typ": *

// TEACHER VERSION: All answers and explanations visible
#assignment(
  title: "Mode Comparison Test - TEACHER VERSION",
  course: "MODE TEST 101",
  author: "Test Instructor",
  date: "2024-03-15",
  show-answers: true,
  instructions: "This is the TEACHER version with all answers visible.",
)[

  *TEACHER MODE FEATURES DEMONSTRATED:*
  - All correct answers are highlighted
  - All explanations are visible
  - Answer keys are shown for fill-in-blanks
  - Sample answers are provided for short questions
  - Multi-part sub-answers are displayed

  = Section A: Multiple Choice with Answers

  #single-choice(
    [What should be visible in teacher mode?],
    (
      "Nothing special",
      "Correct answer highlighted",
      "Only the question",
      "Student instructions",
    ),
    1, // "Correct answer highlighted" should be bold/marked
    explanation: [
      In teacher mode, the correct answer should be visually highlighted (bold + checkmark).
      This explanation should also be visible to teachers.
    ],
    points: 2,
  )

  #multiple-choice(
    [Which items should be highlighted in teacher mode?],
    (
      "All correct answers",
      "Wrong answers",
      "Correct answers only",
      "No highlighting",
    ),
    (0, 2), // Both "All correct answers" and "Correct answers only" are correct
    explanation: [
      In teacher mode, only the correct answers should be highlighted.
      This helps teachers quickly identify the right answers for grading.
    ],
    points: 3,
  )

  = Section B: True/False with Explanations

  #true-false(
    [Teachers can see explanations in teacher mode.],
    true,
    explanation: [
      This explanation should be visible in teacher mode.
      It helps teachers understand the reasoning behind the correct answer.
    ],
    points: 2,
  )

  = Section C: Fill-in-Blanks with Answer Keys

  #fill-blank(
    "In teacher mode, the answers ___ and ___ should be visible in the blanks.",
    ("ANSWER1", "ANSWER2"),
    explanation: [
      The correct answers should appear in the blanks in teacher mode,
      replacing the empty lines shown to students.
    ],
    points: 4,
  )

  = Section D: Short Answer with Sample Solutions

  #short-answer(
    [Explain what teachers should see in teacher mode for short answer questions.],
    answer: [
      Teachers should see:
      1. A sample answer or answer key (like this one)
      2. The answer area should be filled with the sample response
      3. This helps teachers evaluate student responses against the expected answer
      4. The explanation box should also be visible
    ],
    explanation: [This explanation should also be visible to teachers.],
    points: 5,
    answer-lines: 4,
  )

  = Section E: Multi-Part with Sub-Answers

  #multi-part(
    [Multi-part questions should show all sub-answers in teacher mode:],
    (
      (
        [What should part (a) show?],
        [The answer to part (a) should be visible here],
      ),
      (
        [What should part (b) show?],
        [The answer to part (b) should be visible here],
      ),
      (
        [How are answers formatted?],
        [Answers should be in colored boxes or highlighted sections],
      ),
    ),
    points: 9,
  )

]

#pagebreak()

// STUDENT VERSION: All answers and explanations hidden
#assignment(
  title: "Mode Comparison Test - STUDENT VERSION",
  course: "MODE TEST 101",
  author: "Test Instructor",
  date: "2024-03-15",
  show-answers: false,
  instructions: "This is the STUDENT version with all answers hidden.",
)[

  *STUDENT MODE FEATURES DEMONSTRATED:*
  - No correct answers are highlighted
  - No explanations are visible
  - Empty blanks for fill-in questions
  - Empty answer spaces for short questions
  - No sub-answers shown for multi-part questions

  = Section A: Multiple Choice (Student View)

  #single-choice(
    [What should be visible in teacher mode?],
    (
      "Nothing special",
      "Correct answer highlighted",
      "Only the question",
      "Student instructions",
    ),
    1, // This should NOT be highlighted in student mode
    explanation: [
      This explanation should NOT be visible in student mode.
      Students should not see the answer explanations.
    ],
    points: 2,
  )

  #multiple-choice(
    [Which items should be highlighted in teacher mode?],
    (
      "All correct answers",
      "Wrong answers",
      "Correct answers only",
      "No highlighting",
    ),
    (0, 2), // These should NOT be highlighted in student mode
    explanation: [
      This explanation should be hidden from students.
      Students need to think through the answer themselves.
    ],
    points: 3,
  )

  = Section B: True/False (Student View)

  #true-false(
    [Teachers can see explanations in teacher mode.],
    true,
    explanation: [
      This explanation should NOT be visible in student mode.
      Students should work out the reasoning themselves.
    ],
    points: 2,
  )

  = Section C: Fill-in-Blanks (Student View)

  #fill-blank(
    "In teacher mode, the answers ___ and ___ should be visible in the blanks.",
    ("ANSWER1", "ANSWER2"),
    explanation: [
      Students should see empty blanks here, not the actual answers.
      This explanation should also be hidden.
    ],
    points: 4,
  )

  = Section D: Short Answer (Student View)

  #short-answer(
    [Explain what teachers should see in teacher mode for short answer questions.],
    answer: [
      Students should NOT see this sample answer.
      Instead, they should see empty lines for writing their own response.
    ],
    explanation: [Students should not see this explanation either.],
    points: 5,
    answer-lines: 4,
  )

  = Section E: Multi-Part (Student View)

  #multi-part(
    [Multi-part questions should show all sub-answers in teacher mode:],
    (
      ([What should part (a) show?], [Students should NOT see this answer]),
      (
        [What should part (b) show?],
        [Students should NOT see this answer either],
      ),
      (
        [How are answers formatted?],
        [Students should only see empty answer lines],
      ),
    ),
    points: 9,
  )

]

// This test validates:
// 1. show-answers: true reveals all correct answers and explanations
// 2. show-answers: false hides all answers and explanations
// 3. Visual differentiation between teacher and student modes
// 4. Consistent behavior across all question types
// 5. Proper answer space formatting in both modes
