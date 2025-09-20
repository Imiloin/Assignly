# Assignly - Professional Course Assignment Template for Typst

[![Typst](https://img.shields.io/badge/Typst-0.11%2B-239DAD)](https://typst.app/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Assignly is a comprehensive Typst template for creating professional academic assignments and quizzes. It provides a dual-mode system that generates both student and teacher versions from a single source, supports multiple question types, and handles bilingual content with advanced typography.

## ✨ Features

- **🎯 Six Question Types**: Single-choice, multiple-choice, true/false, fill-in-the-blank, short answer, and multi-part questions
- **👥 Dual-Mode Rendering**: Generate student and teacher versions with a single parameter
- **🧮 Math Formula Support**: Questions support both string and content types for rich formatting and mathematical expressions
- **🌐 Bilingual Support**: Advanced font fallback system for mixed Latin/CJK content
- **📐 Professional Typography**: Optimized layout and spacing for academic documents
- **🎨 Customizable Styling**: Configurable fonts, colors, and formatting options
- **⚡ Fast Compilation**: Optimized for quick document generation (<2 seconds)
- **📝 Rich Formatting**: Support for mathematical expressions, code blocks, and images
- **🔧 Modular Architecture**: Clean, maintainable codebase with separated concerns
- **👁️ Points Visibility Control**: Option to show or hide question point values

## 🚀 Quick Start

### Installation

1. Install [Typst](https://typst.app/) (version 0.11 or later)
2. Download or clone this repository
3. Import the template in your Typst document

### Basic Usage

```typst
```typst
#import "src/assignly.typ": *

#assignment(
  title: "Mathematics Quiz 1",
  course: "MATH 101", 
  date: "September 18, 2025",
  author: "Dr. Smith",
  instructions: "Answer all questions. Show your work.",
  show-answers: false,  // Set to true for teacher version
  show-points: true     // Set to false to hide point values
)[
  
  #single-choice(
    "What is 2 + 2?",
    ("3", "4", "5", "6"),
    1,  // Index of correct answer (0-based)
    points: 2,
    explanation: "Basic arithmetic: 2 + 2 = 4"
  )
  
  #true-false(    "The Earth is flat.",
    false,
    points: 1,
    explanation: "The Earth is approximately spherical."
  )
  
  #short-answer(
    "Explain the Pythagorean theorem.",
    answer: "In a right triangle, the square of the hypotenuse equals the sum of squares of the other two sides: a² + b² = c²",
    points: 5,
    answer-lines: 3
  )
]
```

### Compile Your Document

```bash
# Generate student version
typst compile --root . assignment.typ student-version.pdf

# Generate teacher version (change show-answers to true in your file)
typst compile --root . assignment-teacher.typ teacher-version.pdf
```

## 📚 Documentation

### Main Function: `assignment()`

The main template function that sets up your document structure.

```typst
#assignment(
  title: "Your Assignment Title",           // Required
  course: "Course Code",                   // Optional
  date: "Date",                           // Optional  
  author: "Instructor Name",               // Optional
  instructions: "General instructions",    // Optional
  show-answers: false,                     // Boolean: student (false) or teacher (true) mode
  show-points: true,                       // Boolean: show (true) or hide (false) point values
  font-latin: "Times New Roman",          // Latin font family
  font-cjk: "SimSun",                     // CJK font family
  // ... content goes here
)
```

### Question Types

#### Single Choice Questions

```typst
#single-choice(
  "Question text",
  ("Option A", "Option B", "Option C", "Option D"),
  2,  // Index of correct answer (0-based)
  points: 3,
  explanation: "Why this answer is correct"
)
```

#### Multiple Choice Questions

```typst
#multiple-choice(
  "Question text",
  ("Option A", "Option B", "Option C", "Option D"),
  (0, 2),  // Indices of correct answers
  points: 4,
  explanation: "Explanation of correct answers"
)
```

#### True/False Questions

```typst
#true-false(
  "Statement to evaluate",
  true,  // Correct answer
  points: 2,
  explanation: "Why this is true/false"
)
```

#### Fill-in-the-Blank

**String Mode (Legacy):**

```typst
#fill-blank(
  "The capital of France is ___.",
  ("Paris",),  // Array of acceptable answers
  points: 2,
  blank-width: "3cm",  // Optional: customize blank width
  explanation: "Paris is the capital and largest city of France."
)
```

**Content Mode (NEW - supports math & formatting):**

```typst
#fill-blank(
  [The derivative of $f(x) = x^2$ is $f'(x) = $ #fill-blank-space(answer: "2x")],
  (), // Empty answers array for content mode
  points: 3,
  explanation: "Using the power rule"
)
```

#### Short Answer Questions

```typst
#short-answer(
  "Explain the water cycle.",
  answer: "The water cycle involves evaporation, condensation, and precipitation...",
  points: 10,
  answer-lines: 5,  // Number of lines for student response
  explanation: "Look for mention of key processes and their sequence."
)
```

#### Multi-Part Questions

```typst
#multi-part(
  "Main question prompt:",
  (
    [Part a) First sub-question],
    [Part b) Second sub-question], 
    [Part c) Third sub-question]
  ),
  points: 15  // Total points for all parts
)
```

### Utility Functions

#### Section Headers

```typst
#section("Section Title", instructions: "Section-specific instructions")[
  // Section content
]
```

#### Answer Spaces

```typst
#answer-space(
  lines: 5,
  line-height: 2em,
  line-style: 0.5pt + gray
)
```

#### Note Boxes

```typst
#note-box("Important information", type: "info")    // Blue info box
#note-box("Warning message", type: "warning")       // Yellow warning box  
#note-box("Error message", type: "error")           // Red error box
#note-box("Success message", type: "success")       // Green success box
```

#### Image Figures

```typst
#image-figure(
  "path/to/image.png",
  caption: "Figure caption",
  width: 80%
)
```

#### Separators

```typst
#separator()                    // Default separator
#separator(style: 2pt + blue)   // Colored separator
```

## 🌐 Bilingual Support

Assignly automatically detects and handles multiple languages:

```typst
#assignment(
  title: "语言学习测试 / Language Learning Test",
  font-latin: "Times New Roman",
  font-cjk: "SimSun",
  show-answers: false
)[
  #single-choice(
    "Which is correct? 哪个是正确的？",
    ("Hello 你好", "Goodbye 再见", "Thank you 谢谢", "Sorry 对不起"),
    0,
    points: 2,
    explanation: "Hello 你好 is the standard greeting in both languages."
  )
]
```

## 📁 Project Structure

```
Assignly/
├── src/
│   ├── assignly.typ           # Main template file
│   ├── lib/
│   │   ├── utils.typ          # Utility functions and state management
│   │   ├── layout.typ         # Typography and layout system  
│   │   └── questions.typ      # Question type implementations
│   └── samples/
│       ├── basic-assignment.typ      # Basic usage example
│       ├── basic-assignment-no-points.typ  # Example with hidden points
│       ├── bilingual-assignment.typ  # Bilingual example
│       └── comprehensive-demo.typ    # Complete feature demo
├── tests/                     # Test files (for development)
└── README.md
```

## 🎯 Examples

### Complete Assignment Example

See `src/samples/basic-assignment.typ` for a comprehensive example with all question types:

```bash
typst compile --root . src/samples/basic-assignment.typ basic-example.pdf
```

### Bilingual Assignment

See `src/samples/bilingual-assignment.typ` for mixed-language content:

```bash
typst compile --root . src/samples/bilingual-assignment.typ bilingual-example.pdf
```

### Feature Demonstration  

See `src/samples/comprehensive-demo.typ` for all features:

```bash
typst compile --root . src/samples/comprehensive-demo.typ comprehensive-demo.pdf
```

## ⚙️ Configuration Options

### Font Configuration

The template supports custom font configuration:

```typst
#assignment(
  font-latin: "Times New Roman",    // For Latin text
  font-cjk: "SimSun",              // For Chinese/Japanese/Korean
  // Other parameters...
)
```

### Answer Display Modes

- **Student Mode** (`show-answers: false`): Hides answers and explanations
- **Teacher Mode** (`show-answers: true`): Shows answers, explanations, and additional formatting

### Styling Customization

Individual components can be customized:

```typst
// Custom answer space
#answer-space(lines: 3, line-height: 1.5em, line-style: 1pt + blue)

// Custom note box styles  
#note-box("Custom message", type: "success")

// Custom section formatting
#section("Custom Section", numbered: true, instructions: "Special instructions")
```

## 🔧 Advanced Usage

### Mathematical Content

Full LaTeX-style math support:

```typst
#single-choice(
  "What is the derivative of $f(x) = x^2$?",
  ("$2x$", "$x$", "$2$", "$x^2$"),
  0,
  points: 3,
  explanation: "Using the power rule: $d/dx[x^n] = n x^(n-1)$"
)
```

### Code Integration

```typst
#short-answer(
  [
    Consider this Python code:
    ```python
    def factorial(n):
        return 1 if n <= 1 else n * factorial(n-1)
    ```
    Explain how this function works.
  ],
  answer: "This is a recursive implementation of factorial...",
  points: 8,
  answer-lines: 4
)
```

### Custom Question Layouts

For complex formatting needs, combine basic functions:

```typst
#section("Problem Set")[
  #grid(
    columns: 2,
    gutter: 1em,
    [
      #single-choice("Question 1", ("A", "B"), 0, points: 2)
    ],
    [  
      #single-choice("Question 2", ("X", "Y"), 1, points: 2)
    ]
  )
]
```

## 🐛 Troubleshooting

### Common Issues

**Font Warnings**: If you see font family warnings, install the fonts or update the font configuration:

```typst
#assignment(
  font-latin: "Arial",  // Use system-available font
  font-cjk: "Microsoft YaHei",  // Alternative CJK font
  // ...
)
```

**Import Errors**: Make sure to use the correct root path:

```bash
typst compile --root . your-assignment.typ output.pdf
```

**Compilation Errors**: Check for:

- Unclosed brackets or parentheses
- Missing commas in arrays
- Incorrect parameter types

### Getting Help

1. Check the sample files in `src/samples/` for working examples
2. Review the test files in `tests/` for additional usage patterns  
3. Ensure you're using Typst 0.11 or later
4. Verify all imports are correctly structured

## 🤝 Contributing

This template is designed to be extensible. To add new features:

1. Add utility functions to `src/lib/utils.typ`
2. Extend layout options in `src/lib/layout.typ`
3. Create new question types in `src/lib/questions.typ`
4. Update the main template in `src/assignly.typ`
5. Add tests and samples for new features

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with [Typst](https://typst.app/), the modern markup-based typesetting system
- Inspired by LaTeX document classes and modern web frameworks
- Designed for educators and students worldwide

---

Happy Assignment Creating! 🎓

For more examples and updates, visit the project repository.
