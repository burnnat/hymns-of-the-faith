\include "hymn.ily"

\header
{
  title = "Christmas Lullaby"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = ""
  meter = "8.6.8.6 D"
}

global =
{
  \time 3/4
  \key g \major
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Come, _ sing the an -- cient lull -- a -- by
    each child of God must hear,
    of God’s own son de -- scend -- ed down,
    the Son of Man brought near;
    of _ ba -- by, moth -- er, world, all lain
    a -- sleep, per -- chance to dream;
    of fears to calm, of wars to cease,
    of pris -- oners to re -- deem.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    From _ years a -- head, we look a -- far
    and see that ho -- ly birth:
    the child con -- soled by Mar -- y, soon
    con -- sol -- ing all the earth.
    A _ sooth -- ing song the Vir -- gin sings,
    a qui -- et lull -- a -- by,
    still as the world’s own com -- fort rings
    with -- in an in -- fant's cry.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    A _ fran -- tic pace of life we keep,
    of toil with -- out re -- lent;
    still, blear -- y -- eyed, we hur -- ry on,
    o -- bliv -- i -- ous and spent.
    A _ thou -- sand lull -- a -- bies we sing
    for sleep till morn -- ing new;
    Lord, may we lull -- a -- bi -- ers find
    our souls’ own rest in You.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Come, _ con -- se -- crate our hu -- man state
    and make our lives Your own:
    by hu -- mans charged, for hu -- mans died,
    of hu -- mans born and grown.
    All _ hail our Lord and King of Kings,
    de -- scend -- ed from on high,
    with His tri -- um -- phal en -- try march
    a sim -- ple lull -- a -- by!
}
>>

soprano =\relative c' {

  d'8 c
  b4. a8 b c
  b4 a g8 fis
  e4. fis8 g e
  d2

  \bar "" \break

  d4
  g4. a8 b g
  a4. b8 c a
  b8 a g4 b
  a2

  \bar "" \break

  d8 c
  b4. a8 b c
  b4 a g8 fis
  e4. fis8 g e
  d2

  \bar "" \break

  g4
  c4. b8 a c
  b4. a8 g b
  a4 e fis8 a
  g2

  \bar "|."
}

alto = \relative c' {

}

tenor = \relative c {

}

bass = \relative c {

}

\include "hymn-template.ily"
