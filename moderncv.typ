/*
 * Customizations on this template:
 *
 * - headings (h1..h4)
 *
 * - `datebox` function: provides content with stacked year above (big) and month below (tinier)
 *
 * - `daterange` function: two `datebox`es separated by an em dash
 *
 * - `xdot`: function, adds a trailing dot to a string only if it's not already present
 *
 * - `cvgrid`: basic layout function that wraps a grid. Controlled by two parameters `left_column_size` (default: 25%)
 *    and `grid_column_gutter` (default: 8pt) which control the left column size and the column gutter respectively.
 *
 * - `cvcol`: used to write in the rightmost column only. Builds on `cvgrid`
 *
 * - `cventry`: used to write a CV entry. Builds on `cvgrid`
 *
 * - `cvlangauge`: used to write a language entry. Builds on `cvgrid`
 *
 */

#let left_column_size = 3.5cm
#let grid_column_gutter = 4pt

#let main_color = rgb(147, 14, 14)
#let heading_color = main_color
#let job_color = rgb("#737373")

#let project(
  title: "",
  author: [],
  phone: "",
  email: "",
  github: "",
  left_column_size: left_column_size,
  grid_column_gutter: grid_column_gutter,
  main_color: main_color,
  heading_color: heading_color,
  job_color: job_color,
  body
) = {
  let main_color = main_color
  set document(author: author, title: author + " - " + title)
  set page(numbering: none)
  set text(font: "Latin Modern Sans", lang: "fr", fallback: true, size: 10pt)
  show math.equation: set text(weight: 400)

  /*
   * How headings are used:
   * - h1: section (colored, prominent, with colored rectangle, spans two columns)
   * - h2: role (bold)
   * - h3: place (italic)
   * - h4: generic heading (normal, colored)
   */
  show heading.where(level: 1): element => block(inset: (bottom: 0.2em))[
    #v(0em)
    #box(
      inset: (right: grid_column_gutter, bottom: 0.1em),
      rect(fill: main_color, width: left_column_size, height: 0.25em)
    )
    #text(element.body, fill: heading_color, weight: 400)
  ]

  show heading.where(level: 2): box
  show heading.where(level: 2): set text(size: 0.9em)

  show heading.where(level: 3): box
  show heading.where(level: 3): set text(size: 1em, weight: "regular", style: "italic")

  show heading.where(level: 4): element => block[
    #text(element.body, size: 1em, weight: 400, fill: heading_color)
  ]

  set grid.vline(stroke: (thickness: 0.12em, paint: main_color))

  set par(spacing: 01em)

  set list(
    marker: box(
      circle(radius: 0.2em, stroke: heading_color),
      inset: (top: 0.15em)
    )
  )

  set enum(numbering: (n) => text(fill: heading_color, [#n.]))

  grid(
    columns: (1fr, 1fr),
    box[
      // Author information.
      #text([#author], weight: 400, 2.5em)

      #v(-1.2em)

      // Title row.
      #block(text(weight: 400, 1.5em, title, style: "italic", fill: job_color))
    ],
    align(right + top)[
      // Contact information
      #set block(below: 0.5em)

      #if github != "" {
        align(top)[
          #box(height: 1em, baseline: 20%)[#pad(right: 0.4em)[#image("icons/github.svg")]]
          #link("https://github.com/" + github)[#github]
        ]
      }

      #if phone != "" {
        align(top)[
          #box(height: 1em, baseline: 20%)[#pad(right: 0.4em)[#image("icons/phone-solid.svg")]]
          #link("tel:" + phone)[#phone]
        ]
      }

      #if email != "" {
        align(top)[
          #box(height: 1em, baseline: 20%)[#pad(right: 0.4em)[#image("icons/envelope-regular.svg")]]
          #link("mailto:" + email)
        ]
      }
    ]
  )

  // Main body.

  body
}

#let isempty(something) = {
  if something == none {
    return true
  }
  if type(something) == str and something.len() == 0 {
    return true
  }
  if type(something) == array and something.len() == 0 {
    return true
  }
  if type(something) == content {
    if something.has("text") and something.text.len() == 0 {
      return true
    }
    if something.has("children") and something.children.len() == 0 {
      return true
    }
  }

  return false
}

#let datebox(year: []) = box(
  text(size: 1em, [#year], weight: "bold")
)

#let daterange(start: [], end: none, duration: []) = {
  if not end == none {
    let items = (datebox(year: start), [--], datebox(year: end))
  } else {
    let items = (datebox(year: start))
  }
  box(
    stack(dir: ttb, spacing: 0.5em,
      stack(dir: ltr,
        spacing: 0.5em,
        items
      ),
      text(size: 1em, [#duration])
    )
  )
}

#let cvgrid(sepline: false, cell_left, ..cells) = pad(bottom: 0em)[#grid(
  columns: (left_column_size, 0em, auto),
  row-gutter: 0em,
  column-gutter: grid_column_gutter,
  cell_left,
  none,
  ..cells,
  if sepline {
    grid.vline(x: 1)
  },
)]

#let cvcol(content) = cvgrid([], content)


#let xdot(prev, ..nexts) = {
  if isempty(prev) {
    return
  }

  if type(prev) == content {
    if prev.at("text", default: "").ends-with(".") {
      return
    }
    if prev.has("children") {
      if prev.children.len() == 0 {
        return
      }
    }
  }
  if type(prev) == str {
    if prev.ends-with(".") or prev.len() == 0 {
      return
    }
  }
  if not isempty(nexts.pos().join()) {
    return
  }
  "."
}

#let cventry(
  description,
  start: none,
  end: none,
  duration: none,
  role: none,
  place: none,
  city: none,
  grade: none,
  sepline: false,
) = cvgrid(
  sepline: sepline,
  inset: (bottom: -0.1em),
  align(right, daterange(start: start, end: end, duration: duration)),
  [
    #if not isempty(role) {
      [== #role#if not isempty(place) { "," }#xdot(role, place, city)]
    }
    #if not isempty(place) {
      [=== #place#if not isempty(city) { "," }#xdot(place, city)]
    }
    #if not isempty(city) {
      [#city#xdot(city)]
    }
    #if not (isempty(role) and isempty(place) and isempty(city)) {
      linebreak()
    }
    #description
  ]
)

#let cvlanguage(
  language: [],
  description: [],
  certificate: [],
) = cvgrid(
  align(right, language),
  [#description #h(1fr) #text(style: "italic", certificate)],
)
