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
  
  // Set global document context
  show-answers-state.update(show-answers)
  
  // Configure page and typography
  set page(
    margin: (x: 2.5cm, y: 2cm),
    header: [
      #set text(size: 10pt)
      #course #h(1fr) #date
    ],
    footer: [
      #set text(size: 10pt)
      #h(1fr) Page #context counter(page).display() #h(1fr)
    ]
  )
  
  // Configure fonts for bilingual support
  set text(
    font: (font-latin, font-cjk),
    size: 11pt,
    lang: "en"
  )
  
  set par(leading: 0.65em, justify: true)
  
  // Document header
  align(center)[
    #text(size: 16pt, weight: "bold")[#title] \
    #text(size: 12pt)[#course] \
    #if author != "" { text(size: 10pt)[Instructor: #author] }
    #v(0.5em)
    #text(size: 10pt)[#date]
  ]
  
  // Instructions if provided
  if instructions != "" {
    v(1em)
    [*Instructions:* #instructions]
    v(1em)
  } else {
    v(1.5em)
  }
  
  // Main content
  body
}

// Utility functions
#let section(title, instructions: "", body) = {
  v(1.5em)
  text(size: 13pt, weight: "bold")[#title]
  if instructions != "" [
    #v(0.5em)
    #text(style: "italic")[#instructions]
  ]
  v(0.8em)
  body
}

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

#let answer-space(lines: 3) = {
  for i in range(lines) {
    v(1.2em)
    line(length: 100%, stroke: 0.5pt + gray)
  }
  v(0.5em)
}

// Export all functions for external use
// (Functions from imported modules are automatically available)