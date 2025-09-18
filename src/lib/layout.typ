// Assignly - Layout and Typography System
// Handles page layout, spacing, typography, and visual formatting

// Import utility functions
#import "utils.typ": get-show-answers

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