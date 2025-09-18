// Assignly - Utility Functions
// Common utility functions and helpers used throughout the template

// Get the current show-answers context from document metadata
#let get-show-answers() = context {
  // Search for metadata containing show-answers flag
  let metadata-state = query(metadata)
  if metadata-state.len() > 0 {
    let last-metadata = metadata-state.last()
    if type(last-metadata.value) == dictionary and "show-answers" in last-metadata.value {
      last-metadata.value.show-answers
    } else {
      false  // Default to hiding answers
    }
  } else {
    false  // Default to hiding answers
  }
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

// Generate question numbering
#let question-counter = counter("question")

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