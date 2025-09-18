// Bilingual Assignment Sample (English/Chinese)
// 双语作业示例（英文/中文）
//
// This sample demonstrates:
// - Bilingual content rendering
// - Mixed language typography
// - Cultural context considerations
// - Font fallback system

#import "../assignly.typ": *

#assignment(
  title: "Language and Culture Studies - 语言与文化研究",
  course: "LING 201 / 语言学 201", 
  date: "2025年9月25日 / September 25, 2025",
  author: "Prof. Wang / 王教授",
  instructions: "Please answer in the language specified for each question. 请用每题指定的语言作答。",
  show-answers: false,
  font-cjk: "SimSun"
)[

  #section("Section I: English Questions / 第一部分：英语题目")[
    Answer the following questions in English. / 请用英语回答以下问题。
  ]

  #single-choice(
    "Which of the following is a tonal language? / 以下哪种语言是声调语言？",
    ("English", "Spanish", "Mandarin Chinese", "German"),
    2,
    points: 2,
    explanation: "Mandarin Chinese is a tonal language where pitch changes can alter the meaning of words. / 中文普通话是声调语言，音调变化会改变词汇含义。"
  )

  #true-false(
    "The English alphabet has 26 letters. / 英语字母表有26个字母。",
    true,
    points: 2,
    explanation: "Yes, the English alphabet contains 26 letters from A to Z. / 是的，英语字母表包含从A到Z的26个字母。"
  )

  #section("第二部分：中文题目 / Section II: Chinese Questions")[
    请用中文回答以下问题。/ Please answer the following questions in Chinese.
  ]

  #single-choice(
    "中国有多少个省级行政区？/ How many provincial-level administrative divisions does China have?",
    ("22个", "23个", "34个", "35个"),
    2,
    points: 2,
    explanation: "中国共有34个省级行政区，包括23个省、5个自治区、4个直辖市和2个特别行政区。"
  )

  #fill-blank(
    "汉语中\'您好\'的英文是___，而\'谢谢\'的英文是___。",
    ("Hello", "Thank you"),
    points: 3,
    explanation: "这是基本的中英文对照词汇。"
  )

  #section("Section III: Mixed Language / 第三部分：混合语言")[
    Questions may contain both languages. / 题目可能包含两种语言。
  ]

  #multiple-choice(
    "Which of the following are common greetings? 以下哪些是常见的问候语？",
    ("Hello / 你好", "Goodbye / 再见", "Thank you / 谢谢", "How are you? / 你好吗？"),
    (0, 3),
    points: 4,
    explanation: "Hello/你好 and How are you?/你好吗？ are greetings, while Goodbye/再见 is a farewell and Thank you/谢谢 is gratitude."
  )

  #true-false(
    "Both English and Chinese can express past, present, and future tenses. / 英语和中文都能表达过去、现在和将来时态。",
    true,
    points: 3,
    explanation: "While the grammatical structures differ, both languages have ways to express temporal relationships. / 尽管语法结构不同，但两种语言都有表达时间关系的方式。"
  )

  #section("Translation Practice / 翻译练习")[
    Translate between English and Chinese. / 进行中英文互译。
  ]

  #short-answer(
    "Translate to Chinese / 翻译成中文: \"The library is open from 9 AM to 5 PM.\"",
    answer: "图书馆从上午9点到下午5点开放。",
    points: 5,
    answer-lines: 2,
    explanation: "This tests basic translation skills and time expression. / 这考查基础翻译技能和时间表达。"
  )

  #short-answer(
    "Translate to English / 翻译成英文：\'我正在学习中文和英文。\'",
    answer: "I am studying Chinese and English.",
    points: 5,
    answer-lines: 2,
    explanation: "This tests present continuous tense translation. / 这考查现在进行时态的翻译。"
  )

  #section("Cultural Understanding / 文化理解")[
    Demonstrate knowledge of both cultures. / 展示对两种文化的了解。
  ]

  #multi-part(
    "Compare and contrast educational systems / 比较教育系统:",
    ([Name one difference between American and Chinese educational systems. / 说出美国和中国教育系统的一个差异。], [What is a common value shared by both cultures regarding education? / 两种文化在教育方面有什么共同价值观？], [How might language differences affect learning approaches? / 语言差异如何影响学习方法？]),
    points: 12
  )

  #separator()

  #section("Mathematical Expressions / 数学表达")[
    Mathematics transcends language barriers. / 数学超越语言障碍。
  ]

  #fill-blank(
    "The quadratic formula is $x = (-b ± sqrt(b^2 - 4ac)) / (2a)$. In Chinese, we call this ___公式.",
    ("二次方程",),
    points: 2,
    explanation: "The quadratic formula is called 二次方程公式 in Chinese."
  )

  #note-box("Remember to pay attention to cultural context when translating. / 翻译时要注意文化语境。", type: "warning")

  #note-box("Both languages have their unique beauty and complexity. / 两种语言都有其独特的美感和复杂性。", type: "info")
]