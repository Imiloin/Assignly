// T010: Function test for #multi-part() rendering
// This test validates the multi-part() function contract and rendering

#import "../../src/assignly.typ": *

#assignment(
  title: "Multi-Part Function Test", 
  course: "TEST",
  date: "2024-01-15",
  show-answers: true
)[

= Multi-Part Function Contract Tests

// Test 1: Basic multi-part function contract
#multi-part(
  [Solve the following system of equations:],
  (
    ([Find the value of x in: 2x + 3y = 7], [x = 2 when y = 1]),
    ([Find the value of y using your result from part (a)], [y = 1]),
    ([Verify your solution by substitution], [2(2) + 3(1) = 4 + 3 = 7 ✓])
  )
)

// Test 2: Multi-part with minimal structure (no answers)
#multi-part(
  [Analysis of a Literary Work:],
  (
    ([Identify the main theme],),
    ([Discuss the author's writing style],),
    ([Compare with another work by the same author],)
  )
)

// Test 3: Multi-part with custom points  
#multi-part(
  [Comprehensive Physics Problem:],
  (
    ([Calculate the initial velocity], [v₀ = 15 m/s]),
    ([Find the maximum height reached], [h_max = 11.25 m]),
    ([Determine the total flight time], [t_total = 3.06 s]),
    ([Sketch the trajectory graph], [Parabolic curve opening downward])
  ),
  points: 20
)

// Test 4: Multi-part with many sub-questions (stress test)
#multi-part(
  [Complete Mathematical Analysis:],
  (
    ([Define the function], [f(x) = x² + 2x - 3]),
    ([Find the domain], [All real numbers, (-∞, ∞)]),  
    ([Calculate the derivative], [f'(x) = 2x + 2]),
    ([Find critical points], [x = -1]),
    ([Determine intervals of increase/decrease], [Decreasing on (-∞, -1), increasing on (-1, ∞)]),
    ([Find the minimum value], [f(-1) = -4]),
    ([Sketch the graph], [Parabola opening upward with vertex at (-1, -4)]),
    ([Find the x-intercepts], [x = -3, x = 1])
  )
)

// Test 5: Multi-part with mathematical content
#multi-part(
  [Calculus Integration Problem:],
  (
    ([Set up the integral for the area], [$integral_0^2 (4 - x^2) dif x$]),
    ([Evaluate the integral], [$[4x - x^3/3]_0^2 = 8 - 8/3 = 16/3$]),
    ([Interpret the result geometrically], [The area under the curve from x=0 to x=2 is 16/3 square units])
  )
)

// Test 6: Multi-part with bilingual content
#multi-part(
  [双语数学问题 Bilingual Math Problem:],
  (
    ([计算周长 Calculate the perimeter], [P = 2π × 5 = 10π cm]),
    ([计算面积 Calculate the area], [A = π × 5² = 25π cm²]),
    ([用英语解释结果 Explain the results in English], [The circle with radius 5 cm has perimeter 10π cm and area 25π cm²])
  )
)

]

// Test 7: Student mode (no answers shown)
#assignment(
  title: "Multi-Part Student Mode Test",
  course: "TEST",
  date: "2024-01-15",
  show-answers: false  
)[

= Student Version Tests

#multi-part(
  [Student mode problem - answers should not be visible:],
  (
    ([First part of the question], [Hidden answer 1]),
    ([Second part of the question], [Hidden answer 2]),
    ([Third part requiring analysis], [Hidden detailed explanation])
  )
)

#multi-part(
  [Another multi-part question for students:],
  (
    ([Part A: Basic calculation], [Should not show this answer]),
    ([Part B: Apply the result from Part A], [Should not show this either])
  ),
  points: 15
)

]