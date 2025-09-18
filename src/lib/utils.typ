// Assignly - Utility Functions
// Common utility functions and helpers used throughout the template

// Question numbering counter
#let question-counter = counter("question")

// Global state for show-answers flag (imported from main assignly.typ)
#let show-answers-state = state("show-answers", false)

// Get current show-answers flag value
#let get-show-answers() = context {
  show-answers-state.get()
}

// Validation helper for array indices
#let validate-index(index, array-length, context-name: "option") = {
  assert(
    index >= 0 and index < array-length,
    message: context-name + " index " + str(index) + " is out of range for " + str(array-length) + " items"
  )
}

// Validation helper for non-empty strings
#let validate-non-empty(text, field-name) = {
  assert(text != "", message: field-name + " cannot be empty")
}

// Format point value display
#let format-points(points) = {
  if points == 1 [
    (1 point)
  ] else [
    (#points points)
  ]
}

#let next-question() = {
  question-counter.step()
  context question-counter.display()
}

// Helper for conditional content display
#let conditional-content(show-condition, content) = {
  if show-condition {
    content
  }
}

// Context management utilities for assignment state
#let with-question-context(question-num, content) = {
  context {
    question-counter.update(question-num)
    content
  }
}

// Validation helpers for fill-blank questions
#let count-blanks(template) = {
  let blank-marker = "___"
  let text-str = str(template)
  let count = 0
  let pos = 0
  
  while pos < text-str.len() {
    let found = text-str.position(blank-marker, start: pos)
    if found != none {
      count += 1
      pos = found + blank-marker.len()
    } else {
      break
    }
  }
  
  count
}

// Validation for multi-part answers alignment
#let validate-blanks-answers(template, answers) = {
  let blank-count = count-blanks(template)
  assert(
    blank-count == answers.len(),
    message: "Number of answers (" + str(answers.len()) + ") must match number of blanks (" + str(blank-count) + ")"
  )
}

// Array validation helpers
#let validate-answer-indices(indices, options-length, context-name: "answer") = {
  for index in indices {
    assert(
      type(index) == int,
      message: context-name + " indices must be integers, got " + type(index)
    )
    assert(
      index >= 0 and index < options-length,
      message: context-name + " index " + str(index) + " is out of range for " + str(options-length) + " options"
    )
  }
}

// Points calculation for multi-part questions
#let calculate-total-points(parts) = {
  let total = 0
  for part in parts {
    if "points" in part {
      total += part.points
    } else {
      total += 1  // Default point value
    }
  }
  total
}

// Text processing utilities
#let replace-blanks-with-answers(template, answers, show-answers: false) = {
  if not show-answers {
    return template
  }
  
  let result = str(template)
  let blank-marker = "___"
  
  for (i, answer) in answers.enumerate() {
    let pos = result.position(blank-marker)
    if pos != none {
      result = result.slice(0, pos) + str(answer) + result.slice(pos + blank-marker.len())
    }
  }
  
  result
}