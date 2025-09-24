// T012: Integration test - Bilingual assignment
// This test validates bilingual typography and mixed language content handling

#import "../../src/assignly.typ": *

// Test bilingual assignment with Chinese and English content
#assignment(
  title: "双语数学测验 Bilingual Mathematics Quiz",
  course: "数学 101 / MATH 101",
  author: "张教授 Prof. Zhang",
  due-date: "2024年3月15日 / March 15, 2024",
  show-answers: true,
  font-latin: "Times New Roman",
  font-cjk: "SimSun",
  instructions: "请仔细阅读所有说明。请用中文或英文回答。Please read all instructions carefully. You may answer in Chinese or English.",
)[

  = 第一部分：选择题 Part I: Multiple Choice Questions

  请选择最佳答案。Choose the best answer.

  #single-choice(
    [什么是圆的面积公式？What is the formula for the area of a circle?],
    ("A = πr", "A = πr²", "A = 2πr", "A = πd²"),
    1, // πr² is correct
    explanation: [
      圆的面积公式是 A = πr²，其中 r 是半径。
      The area formula for a circle is A = πr², where r is the radius.
    ],
    points: 3,
  )

  #multiple-choice(
    [以下哪些是质数？Which of the following are prime numbers?],
    ("2 二", "3 三", "4 四", "5 五", "6 六", "7 七"),
    (0, 1, 3, 5), // 2, 3, 5, 7 are primes
    explanation: [
      质数只能被1和自己整除。Prime numbers are only divisible by 1 and themselves.
      - 2, 3, 5, 7 是质数 are prime numbers
      - 4 = 2×2, 6 = 2×3 是合数 are composite numbers
    ],
    points: 4,
  )

  #true-false(
    [毕达哥拉斯定理：a² + b² = c² 适用于所有三角形。Pythagorean theorem: a² + b² = c² applies to all triangles.],
    false,
    explanation: [
      毕达哥拉斯定理只适用于直角三角形。The Pythagorean theorem only applies to right triangles.
      对于其他三角形，我们使用余弦定理：c² = a² + b² - 2ab cos(C)
      For other triangles, we use the law of cosines: c² = a² + b² - 2ab cos(C)
    ],
    points: 2,
  )

  = 第二部分：填空题 Part II: Fill in the Blanks

  完成以下句子。Complete the following sentences.

  #fill-blank(
    "一个正方形的周长是 ___ 厘米，如果它的边长是 ___ 厘米。The perimeter of a square is ___ cm if its side length is ___ cm.",
    ("4s", "s", "4s", "s"),
    explanation: [
      正方形周长公式：P = 4s，其中 s 是边长。
      Square perimeter formula: P = 4s, where s is the side length.
    ],
    points: 4,
  )

  #fill-blank(
    "函数 f(x) = sin(x) 的导数是 ___，积分是 ___。The derivative of f(x) = sin(x) is ___, and the integral is ___.",
    ("cos(x)", "-cos(x) + C", "cos(x)", "-cos(x) + C"),
    explanation: [
      这是基本三角函数的微积分规则。These are basic calculus rules for trigonometric functions.
      - 导数 derivative: d/dx[sin(x)] = cos(x)
      - 积分 integral: ∫sin(x)dx = -cos(x) + C
    ],
    points: 5,
  )

  = 第三部分：简答题 Part III: Short Answer Questions

  请用中文或英文详细回答。Please provide detailed answers in Chinese or English.

  #short-answer(
    [
      解释等差数列的概念，并给出通项公式。请举一个实际生活中的例子。

      Explain the concept of an arithmetic sequence and provide the general term formula. Give a real-life example.
    ],
    answer: [
      *中文答案 Chinese Answer:*

      等差数列是一个数列，其中相邻两项的差值是常数（称为公差）。

      通项公式：aₙ = a₁ + (n-1)d
      - aₙ: 第n项
      - a₁: 首项
      - d: 公差
      - n: 项数

      生活例子：每月存款。如果第一个月存100元，之后每月多存50元：
      100, 150, 200, 250, ... (公差d = 50)

      *English Answer:*

      An arithmetic sequence is a sequence where the difference between consecutive terms is constant (called the common difference).

      General term formula: aₙ = a₁ + (n-1)d
      - aₙ: nth term
      - a₁: first term
      - d: common difference
      - n: term number

      Real-life example: Monthly savings. If you save \$100 in the first month and increase by \$50 each month:
      100, 150, 200, 250, ... (common difference d = 50)
    ],
    points: 8,
    answer-lines: 10,
  )

  = 第四部分：综合题 Part IV: Complex Problems

  #multi-part(
    [
      几何综合题：已知一个圆的半径为5厘米。
      Geometry Problem: Given a circle with radius 5 cm.
    ],
    (
      (
        [计算圆的周长。Calculate the circumference.],
        [
          周长 C = 2πr = 2π × 5 = 10π ≈ 31.42 厘米 cm
        ],
      ),
      (
        [计算圆的面积。Calculate the area.],
        [
          面积 A = πr² = π × 5² = 25π ≈ 78.54 平方厘米 cm²
        ],
      ),
      (
        [如果将半径增加到8厘米，新的面积是原来的多少倍？If the radius is increased to 8 cm, how many times larger is the new area?],
        [
          新面积 New area = π × 8² = 64π
          倍数 Ratio = 64π ÷ 25π = 64/25 = 2.56 倍 times
        ],
      ),
      (
        [用中文和英文解释面积变化的数学原理。Explain the mathematical principle of area change in both languages.],
        [
          中文：面积与半径的平方成正比，所以半径增加 8/5 = 1.6 倍时，面积增加 (1.6)² = 2.56 倍。
          English: Area is proportional to the square of radius, so when radius increases by 8/5 = 1.6 times, area increases by (1.6)² = 2.56 times.
        ],
      ),
    ),
    points: 15,
  )

  // Test mathematical formulas in both languages
  #single-choice(
    [二次方程 ax² + bx + c = 0 的求根公式是什么？What is the quadratic formula for ax² + bx + c = 0?],
    (
      $x = (-b ± sqrt(b^2 - 4 a c)) / (2a)$,
      $x = (-b ± sqrt(b^2 + 4 a c)) / (2a)$,
      $x = (b ± sqrt(b^2 - 4 a c)) / (2a)$,
      $x = (-b ± sqrt(b^2 - 4 a c)) / a$,
    ),
    0, // First option is correct
    explanation: [
      这是标准的二次方程求根公式。This is the standard quadratic formula.
      当判别式 Δ = b² - 4ac > 0 时，方程有两个实根。
      When discriminant Δ = b² - 4ac > 0, the equation has two real roots.
    ],
    points: 3,
  )

]

// This test validates:
// 1. Proper bilingual font rendering (Latin + CJK)
// 2. Mixed language content in questions and answers
// 3. Mathematical formulas with bilingual explanations
// 4. Complex formatting with both languages
// 5. Cultural and educational context integration
