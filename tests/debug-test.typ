#import "../src/assignly.typ": *

#assignment(
  title: "Debug Test",
  course: "DEBUG",
  date: "2024-01-15",
  show-answers: true,
)[

  Debug: checking show-answers value

  #context [
    State value: #show-answers-state.get()
  ]

]
