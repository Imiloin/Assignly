// Comprehensive Demo Sample
// Showcases ALL features of the Assignly template
//
// This sample demonstrates:
// - All question types with various configurations
// - Advanced formatting options
// - Section organization
// - Utility functions
// - Teacher mode features (set show-answers: true to see)
// - Mixed content types
// - Custom styling elements

#import "../assignly.typ": *

#assignment(
  title: "Assignly Template - Comprehensive Feature Demonstration",
  course: "DEMO 101",
  date: "September 18, 2025",
  author: "Mate",
  instructions: "This comprehensive demo showcases every feature of the Assignly template. Switch show-answers to true to see teacher mode.",
  show-points: true,
  show-answers: false, // Change to true to see teacher mode
  font-latin: "Times New Roman",
  font-cjk: "SimSun",
)[

  #note-box(
    "Welcome to the Assignly template demonstration! This document shows all available features.",
    type: "success",
  )

  = Template Feature Overview

  This document demonstrates the complete functionality of the Assignly Typst template, including:
  - Six question types with full customization
  - Dual-mode rendering (student/teacher)
  - Bilingual typography support
  - Advanced layout and utility functions
  - Professional academic formatting
  - 中文支持

  #separator()

  #section(
    "Single Choice Questions",
    instructions: "Choose the best answer for each question.",
  )[

    #single-choice(
      "Which of the following best describes the Assignly template?",
      (
        "A simple document template",
        "A comprehensive assignment creation system",
        "A basic quiz generator",
        "A text editor",
      ),
      1,
      points: 2,
      explanation: "Assignly is a comprehensive system that handles multiple question types, dual-mode rendering, and professional formatting.",
    )

    #single-choice(
      "How many question types does Assignly support?",
      ("3", "4", "5", "6"),
      3,
      points: 1,
      explanation: "Assignly supports 6 question types: single-choice, multiple-choice, true-false, fill-blank, short-answer, and multi-part.",
    )

    #single-choice(
      [What is the value of $lim_(x -> 0) (sin x) / x$?],
      ([$0$], [$1$], [$infinity$], [undefined]),
      1,
      points: 3,
      explanation: "This is a fundamental limit in calculus, equal to 1.",
    )
  ]

  #section(
    "Multiple Choice Questions",
    instructions: "Select ALL correct answers.",
  )[

    #multiple-choice(
      "Which features are included in the Assignly template? (Select all that apply)",
      (
        "Dual-mode rendering",
        "Bilingual support",
        "Question numbering",
        "Answer explanations",
        "Custom fonts",
        "Time tracking",
      ),
      (0, 1, 2, 3, 4),
      points: 5,
      explanation: "All features except time tracking are included. Assignly focuses on document generation rather than interactive features.",
    )

    #multiple-choice(
      "What file formats can Typst generate from Assignly templates?",
      ("PDF", "HTML", "PNG", "SVG", "DOCX"),
      (0, 1, 2, 3),
      points: 3,
      explanation: "Typst can generate PDF, HTML, PNG, and SVG outputs. DOCX is not directly supported.",
    )
  ]

  #section(
    "True/False Questions",
    instructions: "Mark each statement as true or false.",
  )[

    #true-false(
      "The Assignly template requires external dependencies to function.",
      false,
      points: 2,
      explanation: "False. Assignly uses only Typst's standard library and requires no external dependencies.",
    )

    #true-false(
      "Teacher mode automatically shows all answers and explanations.",
      true,
      points: 2,
      explanation: "True. Setting show-answers: true enables teacher mode, which displays answers, explanations, and additional formatting.",
    )

    #true-false(
      "The template supports mathematical expressions using LaTeX syntax.",
      true,
      points: 2,
      explanation: "True. Typst supports LaTeX-like mathematical notation, such as $sum_(i=1)^n x_i$ and $integral_0^infinity e^(-x) dx$.",
    )
  ]

  #page-break()

  #section(
    "Fill-in-the-Blank Questions",
    instructions: "Complete each sentence with the appropriate word(s).",
  )[

    #fill-blank(
      "The Assignly template is written in ___ and generates ___ documents.",
      ("Typst", "PDF"),
      points: 3,
      explanation: "Assignly is written in Typst language and primarily generates PDF documents.",
    )

    #fill-blank(
      "To enable teacher mode, set the parameter ___ to ___ in the assignment function.",
      ("show-answers", "true"),
      points: 4,
      explanation: "The show-answers parameter controls the dual-mode functionality.",
    )

    #fill-blank(
      "The template supports ___ languages simultaneously through its ___ system.",
      ("multiple", "font-fallback"),
      points: 4,
      blank-width: "4cm",
      explanation: "The bilingual typography system uses font fallbacks to handle multiple languages.",
    )
  ]

  #section(
    "Short Answer Questions",
    instructions: "Provide complete answers in the space provided.",
  )[

    #short-answer(
      "Explain three advantages of using the Assignly template over traditional document creation methods.",
      answer: "1. Consistency: Ensures uniform formatting across all assignments. 2. Efficiency: Dual-mode rendering eliminates the need to create separate teacher and student versions. 3. Professional appearance: Built-in typography and layout systems produce publication-quality documents.",
      points: 8,
      answer-lines: 5,
      explanation: "This tests understanding of template benefits and document design principles.",
    )

    #short-answer(
      "Describe how the font fallback system works in bilingual documents.",
      answer: "The font fallback system automatically detects different scripts (Latin, CJK) and applies appropriate fonts. It uses regex patterns to identify character ranges and applies font-specific settings, ensuring proper rendering of mixed-language content.",
      points: 6,
      answer-lines: 4,
      explanation: "This evaluates technical understanding of the typography system.",
    )
  ]

  #separator(style: 2pt + blue)

  #section(
    "Multi-Part Questions",
    instructions: "Answer all parts of each question.",
  )[

    #multi-part(
      "Template Architecture Analysis:",
      (
        [Identify the three main modules of the Assignly template.],
        [Explain the role of the state management system.],
        [Describe how the layout system handles responsive formatting.],
      ),
      points: 15,
    )

    #multi-part(
      "Implementation Scenarios:",
      (
        [How would you create an assignment with both English and Chinese content?],
        [What steps are needed to generate both student and teacher versions?],
        [How can you customize the appearance for different academic disciplines?],
      ),
      points: 18,
    )
  ]

  #section("Mathematical and Technical Content")[

    Mathematical expressions are fully supported:

    The quadratic formula: $x = (-b ± sqrt(b^2 - 4a c)) / (2a)$

    Complex equations: $sum_(n=1)^infinity 1/n^2 = π^2/6$

    #fill-blank(
      [The derivative of $f(x) = x^3 + 2x^2 - 5x + 1$ is $f'(x) =$ #fill-blank-space(answer: "3x^2 + 4x - 5")],
      (), // Empty answers array for content mode
      points: 4,
      explanation: "Using the power rule: d/dx[x^n] = nx^(n-1)",
    )
  ]

  #section("Code and Technical Examples")[

    Code blocks are properly formatted:

    ```python
    def create_assignment(title, questions):
        return Assignment(
            title=title,
            questions=questions,
            show_answers=False
        )
    ```

    #true-false(
      "The above code demonstrates object-oriented programming principles.",
      true,
      points: 2,
      explanation: "Yes, it shows class instantiation and parameter passing.",
    )
  ]

  #section("Advanced Formatting Features")[

    #note-box(
      "Information boxes help highlight important points.",
      type: "info",
    )

    #note-box(
      "Warning boxes draw attention to critical information.",
      type: "warning",
    )

    #note-box("Error boxes indicate mistakes or issues.", type: "error")

    #note-box(
      "Success boxes celebrate achievements or correct answers.",
      type: "success",
    )

    Custom answer spaces with different line heights:

    Standard spacing:
    #answer-space(lines: 3)

    Compact spacing:
    #answer-space(lines: 4, line-height: 1.2em, line-style: 0.5pt + gray)

    Wide spacing for detailed responses:
    #answer-space(lines: 2, line-height: 3em, line-style: 1pt + blue)
  ]

  #page-break()

  #section("Assessment Summary", numbered: true)[

    This comprehensive demonstration covers:
    - ✓ All 6 question types
    - ✓ Various point values and configurations
    - ✓ Mathematical notation support
    - ✓ Code formatting capabilities
    - ✓ Advanced layout utilities
    - ✓ Professional typography
    - ✓ Bilingual considerations
    - ✓ Dual-mode functionality

    #separator()

    #single-choice(
      "After reviewing this demonstration, how would you rate the Assignly template's capability?",
      (
        "Basic - covers only essential features",
        "Good - handles most common needs",
        "Excellent - comprehensive and professional",
        "Perfect - exceeds all expectations",
      ),
      2,
      points: 2,
      explanation: "The template provides comprehensive functionality for professional academic document creation.",
    )
  ]

  #section("Template Customization Examples")[

    #short-answer(
      "Suggest three ways this template could be customized for your specific academic field.",
      answer: "Examples might include: 1. Adding discipline-specific question types (e.g., lab procedures for science), 2. Customizing typography for mathematical vs. literary content, 3. Integrating field-specific citation formats.",
      points: 9,
      answer-lines: 6,
      explanation: "This encourages creative thinking about template adaptation.",
    )
  ]

  #separator()

  = Final Notes

  #note-box(
    "This demonstration showcases the template's full potential. To see teacher mode, change show-answers to true in the assignment function.",
    type: "info",
  )

  *Template Statistics for this Demo:*
  - Total sections: 10+
  - Question types demonstrated: 6/6
  - Features showcased: 20+
  - Pages generated: Multiple
  - Compilation time: \<2 seconds

  Thank you for exploring the Assignly template! 🎓
]
