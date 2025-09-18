// Assignly - Question Types Implementation
// Functions for different question types: single-choice, multiple-choice, 
// true/false, fill-in-the-blank, short answer, and multi-part

#import "utils.typ": *
#import "layout.typ": *

// Single-choice question (multiple choice with one correct answer)
#let single-choice(
  question,
  options,
  answer,
  explanation: "",
  points: 1
) = context {
  // Validation
  validate-non-empty(question, "Question")
  assert(options.len() >= 2, message: "Single choice must have at least 2 options")
  validate-index(answer, options.len(), context-name: "Answer")
  
  let show-answers = show-answers-state.get()
  let question-num = next-question()
  
  question-block(question-num, question, points: points)
  
  option-list(options, correct-indices: if show-answers { (answer,) } else { () }, show-answers: show-answers)
  
  explanation-box(explanation, show-explanation: show-answers)
  
  v(0.5em)
}

// Multiple-choice question (multiple correct answers)
#let multiple-choice(
  question,
  options, 
  answers,
  explanation: "",
  points: 1
) = context {
  // Validation  
  validate-non-empty(question, "Question")
  assert(options.len() >= 2, message: "Multiple choice must have at least 2 options")
  assert(answers.len() >= 1, message: "Must have at least 1 correct answer")
  
  for answer in answers {
    validate-index(answer, options.len(), context-name: "Answer")
  }
  
  let show-answers = show-answers-state.get()
  let question-num = next-question()
  
  question-block(question-num, question, points: points)
  
  text(size: 9pt, style: "italic")[Select all correct answers:]
  v(0.3em)
  
  option-list(options, correct-indices: if show-answers { answers } else { () }, show-answers: show-answers)
  
  explanation-box(explanation, show-explanation: show-answers)
  
  v(0.5em)
}

// True/False question
#let true-false(
  question,
  answer,
  explanation: "",
  points: 1
) = context {
  // Validation
  validate-non-empty(question, "Question")
  assert(type(answer) == bool, message: "True/false answer must be true or false")
  
  let show-answers = show-answers-state.get()
  let question-num = next-question()
  
  question-block(question-num, question, points: points)
  
  let options = ("True", "False")
  let correct-index = if answer { 0 } else { 1 }
  
  option-list(options, correct-indices: if show-answers { (correct-index,) } else { () }, show-answers: show-answers)
  
  explanation-box(explanation, show-explanation: show-answers)
  
  v(0.5em)
}

// Fill-in-the-blank question
#let fill-blank(
  template,
  answers,
  explanation: "",
  points: 1,
  blank-width: "3cm"
) = context {
  // Validation
  validate-non-empty(template, "Question template")
  
  let blanks = template.split("___")
  let blank-count = blanks.len() - 1
  
  assert(blank-count > 0, message: "Template must contain blank markers (___)")
  assert(answers.len() == blank-count, 
    message: "Number of answers (" + str(answers.len()) + ") must match number of blanks (" + str(blank-count) + ")")
  
  let show-answers = show-answers-state.get()
  let question-num = next-question()
  
  question-block(question-num, "", points: points)
  
  // Reconstruct question with blanks or answers
  let content = blanks.first()
  
  for i in range(blank-count) {
    if show-answers {
      content += text(weight: "bold", fill: blue)[*#answers.at(i)*]
    } else {
      content += box(width: eval(blank-width), height: 1.2em, stroke: (bottom: 0.5pt))[]
    }
    content += blanks.at(i + 1)
  }
  
  block(inset: (left: 1.5em))[#content]
  
  explanation-box(explanation, show-explanation: show-answers)
  
  v(0.5em)
}

// Short answer question
#let short-answer(
  question,
  answer: "",
  explanation: "",
  points: 1,
  answer-lines: 3
) = context {
  // Validation
  validate-non-empty(question, "Question")
  assert(answer-lines > 0, message: "Answer lines must be positive")
  
  let show-answers = show-answers-state.get()
  let question-num = next-question()
  
  question-block(question-num, question, points: points)
  
  if show-answers and answer != "" {
    block(
      fill: rgb(240, 255, 240),
      stroke: 0.5pt + green,
      width: 100%,
      radius: 3pt,
      inset: 8pt
    )[
      *Sample Answer:* #answer
    ]
  } else {
    // Provide blank space for student answers
    block(inset: (left: 1.5em, top: 0.5em))[
      #v(answer-lines * 1.5em + 0.5em)
    ]
  }
  
  explanation-box(explanation, show-explanation: show-answers)
  
  v(0.5em)
}

// Multi-part question (contains other questions)
#let multi-part(
  title,
  parts,
  points: auto
) = context {
  // Validation
  validate-non-empty(title, "Multi-part title")
  assert(parts.len() >= 1, message: "Multi-part question must have at least 1 part")
  
  let show-answers = show-answers-state.get()
  let question-num = next-question()
  
  // Calculate total points if not specified
  let total-points = if points == auto {
    // This would ideally extract points from each part question function
    // For now, assume 1 point per part as fallback
    parts.len()
  } else {
    points
  }
  
  question-block(question-num, title, points: total-points)
  
  // Render each part with sub-numbering
  for (i, part) in parts.enumerate() {
    let part-letter = ("a", "b", "c", "d", "e", "f", "g", "h").at(i)
    
    block(inset: (left: 1.5em, top: 0.5em))[
      *#part-letter)* #part
    ]
  }
  
  v(0.5em)
}