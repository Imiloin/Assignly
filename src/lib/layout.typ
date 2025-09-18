// Assignly - Layout and Typography System
// Handles page layout, spacing, typography, and visual formatting

// Import utility functions
#import "utils.typ": get-show-answers

// Page setup and document initialization
#let setup-page(
  margins: (left: 2.5cm, right: 2.5cm, top: 2cm, bottom: 2cm),
  paper: "a4"
) = {
  set page(
    paper: paper,
    margin: margins,
    header: [],
    footer: []
  )
}

// Typography configuration
#let setup-typography(
  font-latin: "Times New Roman",
  font-cjk: "SimSun",
  base-size: 11pt,
  line-height: 1.2
) = {
  set text(
    font: (font-latin, font-cjk),
    size: base-size
  )
  
  set par(
    leading: base-size * (line-height - 1),
    justify: true
  )
  
  // Heading styles
  show heading.where(level: 1): it => {
    set align(center)
    set text(size: 16pt, weight: "bold")
    block(above: 1em, below: 0.8em, it.body)
  }
  
  show heading.where(level: 2): it => {
    set text(size: 14pt, weight: "bold")
    block(above: 0.8em, below: 0.6em, it.body)
  }
  
  show heading.where(level: 3): it => {
    set text(size: 12pt, weight: "bold")
    block(above: 0.6em, below: 0.4em, it.body)
  }
}

// Assignment header layout
#let assignment-header(
  title: "",
  course: "",
  date: "",
  author: "",
  show-answers: false
) = {
  block(
    width: 100%,
    stroke: (bottom: 1.5pt + black),
    inset: (bottom: 0.8em)
  )[
    #align(center)[
      #text(size: 18pt, weight: "bold")[#title]
    ]
    
    #v(0.5em)
    
    #if author == "" {
      grid(
        columns: (1fr, 1fr),
        column-gutter: 1em,
        align: (left, center),
        [*Course:* #course],
        [*Date:* #date]
      )
    } else {
      grid(
        columns: (1fr, 1fr, 1fr),
        column-gutter: 1em,
        align: (left, center, right),
        [*Course:* #course],
        [*Date:* #date],
        [*Instructor:* #author]
      )
    }
    
    #if show-answers [
      #v(0.3em)
      #align(center)[
        #rect(
          fill: rgb(255, 200, 200),
          stroke: 1pt + red,
          inset: 5pt,
          radius: 3pt
        )[
          #text(weight: "bold", fill: red)[ANSWER KEY - INSTRUCTOR VERSION]
        ]
      ]
    ]
  ]
}

// Section header layout
#let section-header(title: "", instructions: "") = {
  block(
    width: 100%,
    above: 1.5em,
    below: 1em
  )[
    #text(size: 14pt, weight: "bold")[#title]
    
    #if instructions != "" [
      #v(0.4em)
      #text(size: 10pt, style: "italic")[#instructions]
    ]
  ]
}

// Question styling and spacing
#let question-block(number, content, points: 1) = {
  block(
    width: 100%,
    inset: (top: 0.8em, bottom: 0.5em)
  )[
    #grid(
      columns: (1fr, auto),
      column-gutter: 1em,
      [*#number.* #content],
      [#text(size: 9pt, fill: gray)[#if points == 1 [(1 point)] else [(#points points)]]]
    )
  ]
}

// Option list formatting (for multiple choice questions)
#let option-list(options, correct-indices: (), style: "letters", show-answers: false) = {
  let markers = if style == "letters" {
    ("A", "B", "C", "D", "E", "F", "G", "H")
  } else {
    range(1, options.len() + 1).map(str)
  }

  for (i, option) in options.enumerate() {
    let is-correct = i in correct-indices
    let marker = if i < markers.len() { markers.at(i) } else { str(i + 1) }
    
    block(inset: (left: 1.5em, top: 0.3em))[
      #if is-correct and show-answers {
        text(weight: "bold")[#marker. #option] + text(fill: green)[(✓)]
      } else [
        #marker. #option
      ]
    ]
  }
}

// Answer highlighting for teacher mode
#let highlight-answer(content, show-answer: false) = {
  if show-answer {
    rect(
      fill: rgb(255, 255, 0, 50),  // Light yellow highlight
      stroke: none,
      inset: 2pt,
      radius: 2pt
    )[#content]
  } else {
    content
  }
}

// Blank line generation for fill-in answers
#let blank-line(width: 3cm, answer: none, show-answer: false) = {
  if show-answer and answer != none [
    #highlight-answer(answer, true)
  ] else [
    #box(
      width: width,
      stroke: (bottom: 0.8pt + black),
      height: 1.2em
    )
  ]
}

// Explanation box for answers
#let explanation-box(explanation, show-explanation: false) = {
  if show-explanation and explanation != "" {
    v(0.5em)
    rect(
      width: 100%,
      fill: rgb(240, 240, 240),
      stroke: 0.5pt + gray,
      inset: 8pt,
      radius: 3pt
    )[
      #text(size: 9pt, style: "italic")[
        *Explanation:* #explanation
      ]
    ]
  }
}

// Answer lines for short answer questions
#let answer-lines(count: 3, line-spacing: 2em) = {
  for i in range(count) {
    v(if i == 0 { 0.5em } else { line-spacing })
    line(
      length: 100%,
      stroke: 0.5pt + gray
    )
  }
  v(0.5em)
}

// Point display formatting
#let points-display(points, align-right: true) = {
  let content = text(size: 9pt, fill: gray)[
    #if points == 1 [(1 point)] else [(#points points)]
  ]
  
  if align-right {
    align(right, content)
  } else {
    content
  }
}