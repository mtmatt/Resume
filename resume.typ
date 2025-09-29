#import "@preview/showybox:2.0.4": showybox
#import "@preview/cetz:0.3.4"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#import "@preview/theorion:0.3.3": *
#import cosmos.clouds: *
#show: show-theorion
#import "@preview/fontawesome:0.6.0": *
// #import cosmos.simple: *
// #show: show-theorion

#let author = "ShangJhe Li"
#let email = "b12902033@csie.ntu.edu.tw"
// #let email = "mtmattqq@gmail.com"

#set page(
  paper: "us-letter",
  // paper: "a4",
  margin: (x: 2cm, y: 2cm),
  numbering: "1",
  header: [
    #h(1fr)
    #text(10pt, style: "italic")[Last Updated: #datetime.today().display()]
  ],
  footer: context [
    #box(fill: black, width: 100%, height: 1pt)
    #author
    #h(1fr)
    #counter(page).display("1")
  ],
)

#set text(
  font: (
    // (name: "CMU serif", covers: "latin-in-cjk"),
    (name: "Libertinus Serif"),
    // (name: "New Computer Modern"),
  ),
  size: 11pt,
  cjk-latin-spacing: auto,
)
#set par(justify: true)
#set list(indent: 1em, marker: box(height: 0.6em, align(horizon, text(size: 1em)[◦])))

#let line(width: 100%) = {
  box(fill: black, width: width, height: 1pt)
}

#let section(title) = {
  align(left, par(justify: false)[
    #text(12pt)[*#title*]
    #line()
  ])
}

#let education-item(school: str, degree: str, period: str, details: array) = {
  box()[
    #text(10pt)[*#school*]
    #text(10pt, style: "italic")[#h(1fr) #period] \
    #text(10pt)[#degree]
    #for detail in details {
      text(10pt)[
        - #detail
      ]
    }
  ]
}

#let experience-item(title: str, location: str, company: str, period: str, details: array) = {
  box()[
    #text(10pt)[*#title* #h(1fr) #location] \
    #text(10pt, style: "italic")[#company #h(1fr) #period]
    #for detail in details {
      text(10pt)[
        - #detail
      ]
    }
  ]
}

#let project-item(title: str, link-url: str, period: str, details: array) = {
  box()[
    #text(10pt)[*#title* #h(1fr) #link(link-url)[#text(blue)[Github Link #fa-link()]]]
    #for detail in details {
      text(10pt)[
        - #detail
      ]
    }
  ]
}

#align(center, text(24pt)[
  * #author *\
  #text(10pt)[
    #fa-map-marker-alt() `Taiwan `
    #fa-envelope() #link(email)[#raw(email)` `]
    #fa-phone() #link("tel:+886 900-630-777")[`+886 900-630-777 `]
    #fa-linkedin-in() #link("https://www.linkedin.com/in/shangjhe-li-0963aa32b/")[`shangjhe-li `]
    #fa-github() #link("https://github.com/mtmatt")[`mtmatt`]
  ]
])

#section("Education")

#education-item(
  school: "National Taiwan University",
  degree: "BS in Computer Science and Information Engineering (Junior)",
  period: "Sep 2023 - Present",
  details: ("GPA: 4.05/4.3", "Coursework: System Programming, Computer Security, Machine Learning"),
)


#section("Experience")

#experience-item(
  title: "Secure Systems Researcher",
  location: "Taipei, Taiwan",
  company: "NTU CSIE",
  period: "July 2025 - Present",
  details: (
    "Read and analyze 10+ papers about system security, reliability, and fault tolerance.",
  ),
)

#experience-item(
  title: "Teaching Assistant (Data Structures and Algorithms)",
  location: "Taipei, Taiwan",
  company: "NTU CSIE",
  period: "March 2025 - June 2025",
  details: (
    "Prepare the last programming problem for Homework 2. (Simulate bicycle parking slots as a tree)",
    "Help students with their programming assignments.",
  ),
)


#section("Projects")

#project-item(
  title: "Owo Judge (Backend Developer)",
  link-url: "https://github.com/mtmatt/OwoJudge",
  details: (
    "Developed a containerized, multi-language backend for a competitive programming platform, featuring a decoupled architecture and MongoDB.",
    "Tools Used: TypeScript, Node.js, MongoDB, ioi/isolate, Docker",
    "Weakness: This is an ongoing project."
  )
)

#project-item(
  title: "Challenge2025",
  link-url: "https://github.com/CSIE-Challenge/Challenge2025",
  details: (
    "Design the game for high school students to write python agents and learn how to collaborate with a medium-sized team (13 people).",
    "Tools Used: Godot, Git, Python",
    "Weakness: We use socket programming to implement the communication between the game server and the agents, which cause the performance and reliability issue."
  )
)

#project-item(
  title: "PseudoCode Interpreter",
  link-url: "https://github.com/mtmatt/PseudoCodeInterpreter",
  details: (
    "Implemented a pseudo-code interpreter with a recursive abstract syntax tree (AST) and polymorphism.",
    "Tools Used: C++, Object-Oriented Programming, Data Structures.",
    "Weakness: The use of string instead of enum for the type field causes the performance issue."
  )
)


#section("Technical Skills")

- Languages: C/C++, Python, TypeScript, Rust
- Technologies: Unix System Programming, Object-Oriented Programming, Data Structures, Algorithms

// #section("Certifications")
