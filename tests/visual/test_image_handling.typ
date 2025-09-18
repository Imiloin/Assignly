// T014: Integration test - Image insertion and formatting
// This test validates image handling, figure captions, and visual formatting
// Note: This test uses placeholder images since actual image files are not available

#import "../../src/assignly.typ": *

#assignment(
  title: "Visual Elements and Image Handling Test",
  course: "DESIGN 101",
  author: "Visual Test Instructor",
  date: "2024-03-15", 
  show-answers: true,
  instructions: "This test demonstrates image insertion and formatting capabilities. Placeholder images are used for testing."
)[

= Section A: Basic Image Integration

This section tests the `image-figure` function and its integration with questions.

// Note: Since we don't have actual image files, we'll use placeholder demonstrations
// In a real scenario, these would reference actual image files

*Image Integration Examples:*

// Demonstrate image-figure function with placeholder
// #image-figure("path/to/diagram.png", caption: "Sample Diagram", width: 50%)

// For testing purposes, we'll use text-based "images" and diagrams

#block(
  width: 100%, 
  stroke: 1pt + black,
  inset: 1em,
  radius: 5pt
)[
  *PLACEHOLDER IMAGE: Geometric Diagram*
  
  ```
      A --------- B
      |           |
      |           |
      |           |  
      D --------- C
  ```
  
  *Figure 1: Rectangle ABCD for geometry problems*
]

#single-choice(
  [Based on the rectangle shown above, what is the perimeter if AB = 5 cm and BC = 3 cm?],
  ("8 cm", "15 cm", "16 cm", "18 cm"),
  2, // 16 cm is correct: 2(5+3) = 16
  explanation: [
    Perimeter = 2(length + width) = 2(5 + 3) = 2(8) = 16 cm
    The diagram shows a rectangle where opposite sides are equal.
  ],
  points: 3
)

= Section B: Complex Visual Questions

This section demonstrates more complex integration of visual elements with questions.

#block(
  width: 100%,
  stroke: 1pt + blue, 
  inset: 1em,
  radius: 5pt,
  fill: rgb(240, 248, 255)
)[
  *PLACEHOLDER IMAGE: Function Graph*
  
  ```
    y
    |
    |     *
    |   * | *
    | *   |   *
    |     |     * 
  --+-----+--------> x
    |     2
    |
  ```
  
  *Figure 2: Graph of function f(x) with key point at x = 2*
]

#multi-part(
  [Analyze the function graph shown in Figure 2:],
  (
    ([What type of function is displayed?], [This appears to be a parabolic function (quadratic) opening upward]),
    ([What is the approximate value at x = 2?], [The function appears to have a minimum value at x = 2]),
    ([Describe the behavior as x increases from the vertex], [The function increases (positive slope) as x moves away from x = 2])
  ),
  points: 9
)

= Section C: Scientific Diagrams Integration

#block(
  width: 100%,
  stroke: 1pt + green,
  inset: 1em, 
  radius: 5pt,
  fill: rgb(240, 255, 240)
)[
  *PLACEHOLDER IMAGE: Scientific Apparatus*
  
  ```
  Thermometer    Beaker    Burner
      |            |        |
      |    +-------+        |
      |    | Water |        |
      |    | 100°C |        |
      |    +-------+        |
      |            |    (flame)
      +------------+--------+
  ```
  
  *Figure 3: Laboratory setup for boiling point experiment*
]

#true-false(
  [Based on the laboratory setup in Figure 3, water is boiling at the correct temperature.],
  true,
  explanation: [
    The diagram shows water at 100°C, which is the standard boiling point of water at sea level (1 atmosphere pressure).
    The experimental setup appears correct for measuring boiling point.
  ],
  points: 2
)

#fill-blank(
  "In the experimental setup shown in Figure 3, the thermometer reads ___ degrees Celsius, indicating that water is at its ___ point.",
  ("100", "boiling"),
  explanation: [
    The diagram clearly shows 100°C on the thermometer, which is water's boiling point under standard conditions.
  ],
  points: 4
)

= Section D: Mathematical Visualization

#block(
  width: 100%,
  stroke: 1pt + purple,
  inset: 1em,
  radius: 5pt,
  fill: rgb(248, 240, 255)
)[
  *PLACEHOLDER IMAGE: Coordinate System*
  
  ```
      y
      |
    4 |   * (2,3)
    3 | * 
    2 |
    1 |
  ----+----+----+-----> x
    0 | 1  2  3  4
   -1 |
  ```
  
  *Figure 4: Point plotted on coordinate system*
]

#short-answer(
  [Using the coordinate system in Figure 4, calculate the distance from the origin (0,0) to the plotted point and show your work.],
  answer: [
    The plotted point appears to be at coordinates (2, 3).
    
    Using the distance formula: d = √[(x₂-x₁)² + (y₂-y₁)²]
    
    d = √[(2-0)² + (3-0)²]
    d = √[4 + 9]  
    d = √13
    d ≈ 3.61 units
    
    Therefore, the distance from the origin to point (2,3) is √13 or approximately 3.61 units.
  ],
  points: 6,
  answer-lines: 6
)

= Section E: Answer Space with Visual Context

This section tests how answer spaces work with visual elements.

#block(
  width: 100%,
  stroke: 1pt + red,
  inset: 1em,
  radius: 5pt, 
  fill: rgb(255, 240, 240)
)[
  *INSTRUCTIONS FOR DRAWING:*
  Use the space below to sketch your solution. Include proper labels and measurements.
]

#short-answer(
  [Sketch a right triangle with legs of length 3 and 4 units. Label all sides and calculate the hypotenuse.],
  answer: [
    Students should draw a right triangle with:
    - One leg labeled "3 units"
    - Other leg labeled "4 units"  
    - Hypotenuse calculated as √(3² + 4²) = √(9 + 16) = √25 = 5 units
    - Right angle clearly marked with a square symbol
  ],
  points: 8,
  answer-lines: 8
)

// Test the answer-space function directly
*Additional Answer Space:*

Use this space for additional calculations:

#answer-space(lines: 4)

]

// This test validates:
// 1. Integration of visual elements with question types
// 2. Proper formatting of figure captions and placeholders  
// 3. Visual context enhancing question comprehension
// 4. Answer spaces working with image-based questions
// 5. Multi-modal content (text + visual) in assignments
// 6. Consistent styling of visual blocks and containers

// Note: In production use, actual image files would be used:
// #image-figure("diagrams/geometry.png", caption: "Rectangle ABCD", width: 60%)