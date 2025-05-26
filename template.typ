#let emergency_state = state("emergency", false)

#let checklist(
  aircraft: none,
  emergency: false,
  margin: (x: 0.5cm, y: 0.7cm),
  body,
) = {
  set page("a5", margin: margin, columns: 2)
  set columns(gutter: 0pt)
  set text(font: "Helvetica Neue", size: 9pt)
  set par(spacing: 0pt)

  emergency_state.update(emergency)

  let checklist = if emergency { "Emergency" } else { "Checklist" }

  let color1 = if emergency { rgb("e33e3c") } else { rgb("205C92") }
  let color2 = if emergency { rgb("e33e3c") } else { rgb("54BCFF") }

  let header(aircraft) = {
    place(
      top + center,
      scope: "parent",
      float: true,
      text(size: 1.9em, style: "italic", weight: "black", tracking: .3pt, [
        #text(fill: color1, aircraft)
        #text(fill: color2, checklist)
      ]),
    )
  }

  header(aircraft)
  body
}

#let section(title, color: rgb("aaaaaa"), line-height: 1.5em, body) = {
  set par(leading: line-height - 1em)

  let stroke = .5pt
  let inset = 4pt

  block(breakable: false)[
    #block(width: 100%, stroke: stroke, inset: inset, fill: color, align(center)[
      #text(fill: rgb("fff"), weight: "bold", tracking: 1pt, upper(title))
    ])
    #block(width: 100%, stroke: stroke, inset: inset, body)
  ]
}

#let step(a, b) = {
context {
  let color = if emergency_state.get() {
    rgb("e33e3c")
  } else {
    luma(0%)
  }

  show emph: it => {
    text(size: 0.9em, fill: color, it.body)
  }

  if a != "" {
    text(weight: "light", a)
    " "
  }
  box(width: 1fr, repeat[.])
  if b != "" {
    " "
    text(weight: "medium", b)
  }
  linebreak()}
}

#let comment(body) = {
  context {
    let color = if emergency_state.get() {
      rgb("e33e3c")
    } else {
      rgb("54BCFF")
    }

    box(width: 100%, align(center, text(size: 0.9em, fill: color, body)))
  }
}
