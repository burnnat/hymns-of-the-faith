\include "hymn.ily"

\header
{
  title = "Christmas Lullaby"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Berceuse"
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
  e4. fis8 g a
  b2

  \bar "" \break

  g4
  c4. b8 a c
  b4. a8 g b
  a4 e fis8 a
  g2

  \bar "|."
}

alto = \relative c' {
  fis4
  g4. g8 g g
  g4 e d8 d
  d4 c c8 c
  a2

  b4
  b4. d8 d d
  e4. e8 fis fis
  d8 d d4 e
  fis2

  a4
  g4. g8 g g
  g4 fis d8 d
  c4. d8 e e
  dis2

  e4
  e4. e8 d fis
  d4. d8 d d
  e4 c c8 c
  b2
}

tenor = \relative c {
  d'4
  d4. c8 d e
  d4 c b8 g
  g4 g g8 g
  g4( fis)

  g8 fis
  g4. b8 g b
  a4 c c8 c
  b8 b b4 g
  a2

  d4
  d4. c8 d e
  d4 c g8 g
  g4. g8 g g
  fis2

  e4
  a4. g8 fis a
  g4. g8 g g
  c4 a a8 fis
  g2
}

bass = \relative c {
  d4
  g4. g8 g g
  g4 g g8 b,
  c4 c a8 a
  d2

  g8 fis
  e4. e8 d d
  c4 a d8 d
  g fis e4 cis
  d2

  fis4
  g4. g8 g g
  g4 g b,8 b
  c4. c8 c c
  b2

  e4
  a,4. a8 d d
  g4. g8 b, b
  c4 c d8 d
  g,2
}

\include "hymn-template.ily"
