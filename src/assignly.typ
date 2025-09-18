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

// Enhanced section function with better formatting and numbering support
#let section(title, instructions: "", body, numbered: false) = {
  if numbered {
    counter("section").step()
    let section-num = context counter("section").display()
    section-header(title: [#section-num. #title], instructions: instructions)
  } else {
    section-header(title: title, instructions: instructions)
  }
  body
}

// Enhanced image figure with better error handling and layout
#let image-figure(
  path,
  caption: "",
  width: auto,
  height: auto,
  alt-text: ""
) = {
  figure(
    image(path, width: width, height: height, alt: alt-text),
    caption: if caption != "" { caption } else { none }
  )
}

// Enhanced answer space with customizable styling
#let answer-space(lines: 3, line-height: 1.5em, line-style: 0.5pt + gray) = {
  block(
    above: 0.8em,
    below: 0.8em
  )[
    #for i in range(lines) [
      #v(if i == 0 { 0.3em } else { line-height })
      #line(length: 100%, stroke: line-style)
    ]
    #v(0.5em)
  ]
}

// Additional utility: Page break helper
#let page-break() = {
  pagebreak()
}

// Additional utility: Horizontal separator
#let separator(style: 1pt + gray) = {
  v(0.8em)
  line(length: 100%, stroke: style)
  v(0.8em)
}

// Additional utility: Note box for special instructions
#let note-box(content, type: "info") = {
  let (fill-color, stroke-color, icon) = if type == "warning" {
    (rgb(255, 250, 205), rgb(255, 193, 7), "⚠️")
  } else if type == "error" {
    (rgb(255, 235, 238), rgb(220, 53, 69), "❌")
  } else if type == "success" {
    (rgb(212, 237, 218), rgb(40, 167, 69), "✅")
  } else {
    (rgb(217, 237, 247), rgb(23, 162, 184), "ℹ️")
  }
  
  v(0.8em)
  rect(
    width: 100%,
    fill: fill-color,
    stroke: 1pt + stroke-color,
    radius: 4pt,
    inset: 10pt
  )[
    #text(weight: "bold")[#icon Note:] #content
  ]
  v(0.8em)
}

// Export all functions for external use
// (Functions from imported modules are automatically available)