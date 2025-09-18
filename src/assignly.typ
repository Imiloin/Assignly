// Assignly - Typst Course Assignment Template
// Main entry point for the template system
//
// This template provides comprehensive functionality for creating course assignments
// with support for multiple question types, bilingual content, and dual rendering modes.
//
// Usage:
//   #import "assignly.typ": *
//   
//   #assignment(title: "Quiz 1", course: "MATH 101", date: "2025-09-25")[
//     // Assignment content here
//   ]

// Import core modules
#import "lib/utils.typ": *
#import "lib/layout.typ": *  
#import "lib/questions.typ": *

// Global state for show-answers flag
#let show-answers-state = state("show-answers", false)

// Main assignment function - document initialization and configuration
#let assignment(
  // Required parameters
  title: "",
  course: "",
  date: "",
  
  // Optional configuration
  show-answers: false,
  font-latin: "Times New Roman",
  font-cjk: "SimSun", 
  author: "",
  instructions: "",
  
  // Content body
  body
) = {
  // Validate required parameters
  assert(title != "", message: "Assignment title is required")
  assert(course != "", message: "Course name is required") 
  assert(date != "", message: "Assignment date is required")
  
  // Set global show-answers state
  show-answers-state.update(show-answers)
  
  // Initialize page setup
  setup-page()
  
  // Configure typography with bilingual font support
  setup-typography(
    font-latin: font-latin,
    font-cjk: font-cjk,
    base-size: 11pt,
    line-height: 1.2
  )
  
  // Page headers and footers
  set page(
    header: [
      #set text(size: 10pt)
      #course #h(1fr) #date
      #if show-answers [
        #h(1fr) #text(fill: red, weight: "bold")[ANSWER KEY]
      ]
    ],
    footer: [
      #set text(size: 10pt)
      #h(1fr) Page #context counter(page).display() #h(1fr)
    ]
  )
  
  // Reset question counter for this assignment
  counter("question").update(0)
  
  // Render assignment header
  assignment-header(
    title: title,
    course: course,
    date: date,
    author: author,
    show-answers: show-answers
  )
  
  // Instructions section if provided
  if instructions != "" {
    v(1em)
    block(
      width: 100%,
      fill: rgb(248, 248, 248),
      stroke: 0.5pt + gray,
      radius: 3pt,
      inset: 12pt
    )[
      #text(weight: "bold")[Instructions:] #instructions
    ]
    v(1em)
  } else {
    v(1.5em)
  }
  
  // Main content body
  body
}

// Utility functions for document structure

// Section function for organizing content
#let section(title, instructions: "", body) = {
  section-header(title: title, instructions: instructions)
  body
}

// Image figure with proper formatting and captions
#let image-figure(
  path,
  caption: "",
  width: auto,
  height: auto
) = {
  figure(
    image(path, width: width, height: height),
    caption: if caption != "" { caption } else { none }
  )
}

// Answer space for written responses
#let answer-space(lines: 3) = {
  answer-lines(count: lines)
}

// Export all functions for external use
// (Functions from imported modules are automatically available)