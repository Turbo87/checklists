#let colors = (
  aircraft: rgb("205c92"),
  checklist: rgb("54bcff"),
  neutral: rgb("aaaaaa"),
  preflight: rgb("e3a21e"),
  engine: rgb("a16bcf"),
  takeoff: rgb("3bc821"),
  landing: rgb("245d90"),
  parking: rgb("7fa5c2"),
  emergency: rgb("e33e3c"),
)

#let emergency_state = state("emergency", false)

#let checklist(
  aircraft: none,
  emergency: false,
  body,
) = {
  set page("a5", margin: (x: 7mm, y: 7mm), columns: 2)
  set columns(gutter: 4pt)
  set text(font: "Helvetica Neue", size: 9pt)
  set par(spacing: 0pt)

  emergency_state.update(emergency)

  let checklist = if emergency { "Emergency" } else { "Checklist" }

  let color1 = if emergency { colors.emergency } else { colors.aircraft }
  let color2 = if emergency { colors.emergency } else { colors.checklist }

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

#let section(title, color: none, line-height: 1.5em, body) = {
  set par(leading: line-height - 1em)

  let stroke = .5pt
  let inset = (top: 2pt, bottom: 6pt, rest: 4pt)

  let color = if color != none {
    color
  } else {
    colors.neutral
  }

  block(breakable: false)[
    #block(width: 100%, stroke: stroke, inset: 4pt, fill: color, align(center)[
      #text(fill: rgb("fff"), weight: "bold", tracking: 1pt, upper(title))
    ])
    #block(width: 100%, stroke: stroke, inset: inset, body)
  ]
}

#let step(a, b) = {
context {
  let color = if emergency_state.get() {
    colors.emergency
  } else {
    colors.checklist
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
    let color = if emergency_state.get() { colors.emergency } else { colors.checklist }

    box(width: 100%, inset: (top: 2pt), align(center, text(size: 0.9em, fill: color, weight: "medium", body)))
  }
}
