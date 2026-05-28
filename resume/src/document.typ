#import "@preview/zebra:0.1.0": qrcode

#set list(indent: 0.5em)

#show heading: set block(spacing: 1em)
#show "--": "–"

#let line = line(length: 100%, stroke: 0.5pt)
#let fill = v(1fr)

#let period(..components) = datetime(..components.named()).display("[year].[month]")

#let entry(props, ..bodies) = [
  #set par(spacing: 0.5em)

  #block(spacing: 1.25em)[
    #upper(props.location) #h(1fr) #{
      let duration = props.at("duration", default: none)
      if (duration != none) {
        duration
      }
    }

    #text(weight: "semibold")[#props.title]
  ]

  #for body in bodies.pos() [
    #body
  ]
]

#grid(
  columns: (1fr, auto),
  align: auto,
  [
    #[
      #set text(weight: "regular", size: 1.1em)
      #show heading: set text(weight: "regular", size: 1.2em)
      #show heading: set block(above: 0em, below: 0.333em)

      = Dovidas Zablockis
      #smallcaps[Software engineer]
    ]
    #[
      #set image(height: 1em)

      #let icon(path) = box[#image("assets/icons/" + path + ".svg")]

      #let https(destination) = link("https://" + destination)[#destination]
      #let mailto(destination) = link("mailto:" + destination)[#destination]

      #grid(
        columns: 2,
        gutter: 0.35em,
        align: horizon,
        icon("linkedin"), https("linkedin.com/in/dovidas-zablockis"),
        icon("github"), https("github.com/dovias"),
        icon("envelope"), mailto("dovio@proton.me") 
      )
    ]
  ],
  [
    #let portfolio(destination) = link(destination)[#qrcode(destination, height: 3cm)]
    #portfolio("https://github.com/dovias")
  ]
)

#line
#fill
== Work experience
#entry((
  location: "Companial, Vilnius",
  duration: [#period(year: 2025, month: 7, day: 14) -- #period(year: 2025, month: 8, day: 8)],
  title: link("https://github.com/Dovias/dovias/blob/main/certificates/companial.pdf")[Microsoft Dynamics F&SCM Developer internship]
))[
  - Developed and maintained solutions within *Microsoft Dynamics 365 F&SCM* platform using *X++* and *.NET* related technologies.
  - Collaborated in designing and implementing business logic enhancements and workflows aligned with *ERP* system requirements.
  ]
#entry((
  location: "Cognizant Lithuania, Vilnius",
  duration: [#period(year: 2024, month: 3, day: 1) -- #period(year: 2024, month: 5, day: 1)
  ],
  title: link("https://github.com/Dovias/dovias/blob/main/certificates/cognizant.jpg")[Full-stack application development internship]
))[
  - Built a responsive, modular apartment booking UI using *React.js*, *TypeScript*, and *TailwindCSS*.
  - Designed and deployed robust *RESTful* endpoints using *Spring Boot* and *PostgreSQL* to manage user accounts and reservation lifecycles.
  - Containerized application components using *Docker* and integrated them into a automated *CI/CD* pipeline to streamline deployment.
]
#entry((
  location: "Accenture Baltics, Vilnius",
  duration: [#period(year: 2023, month: 7, day: 1) -- #period(year: 2023, month: 9, day: 1)
  ],
  title: link("https://github.com/Dovias/dovias/blob/main/certificates/accenture.pdf")[Full-stack application development internship]
))[
  - Developed *RESTful* backend services for a movie search application using *Java*, *Spring*, and *Jakarta*.
  - Authored clean, semantic front-end code using vanilla *JavaScript*, *HTML*, and *CSS*.
  - Participated in a *CTF* hackathon focused on web security and applied common vulnerability exploitation techniques in practical challenges.
]
== Skills
  - Communication: *English (C1)*, *Lithuanian (native)*
  - Languages: *Java*, *C\#*, *PHP*, *JavaScript/TypeScript*, *SQL*, *Bash*, *X++*
  - Frameworks: *Spring*, *.NET*, *Laravel*, *React.js*, *Vue.js*, *Astro*,
  - Tools: *Linux*, *Docker*, *Git*, *Gradle*, *Maven*, *Jenkins*,  

== Education
#entry((
  location: "Vilnius Gediminas Technical University",
  duration: [#period(year: 2027, month: 7, day: 1) (Expected)],
  title: "Bachelor’s degree in Software Engineering"
))
#fill
#line
*About me.* I am a software engineering student with hands-on experience building backend systems, as well as full-stack web applications. I enjoy working across the stack, developing reliable, maintainable software systems. I am currently focusing entirely on professional industry experience and available for immediate, *full-time employment*.
