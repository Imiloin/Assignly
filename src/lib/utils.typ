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