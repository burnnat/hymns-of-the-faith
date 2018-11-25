\include "hymn.ily"

\header
{
  title = "Christmas Psalm"
  poet = "N. Fielding Burns, 2018"
  composer = "N. Fielding Burns, 2018"
  tune = ""
  meter = "9.9.9.7 9.7.9.9"
}

global =
{
  \time 3/4
  \key f \major
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    O Lord, our Lord, how mar -- vel -- ous is
    Your name a -- bove ev -- ery earth -- ly name! % Psalm 8:1
    Your glo -- ry set in heav -- ens a -- bove, % Psalm 8:1, Psalm 102:25
    the moon and the stars pro -- claim. % Psalm 8:3
    You looked down to earth and heard our cry, % Psalm 102:19
    to set free those doomed to die. % Psalm 102:20
    From north to south, all tell the de -- cree; % Psalm 89:12, Psalm 2:7
    with trem -- bling in awe and joy ex -- claim! % Psalm 2:11
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Of Da -- vid’s line, your cov -- e -- nant stands, % Psalm 89:3
    to bring forth a king to rule a -- gain
    with stead -- fast love and right -- eous -- ness throned, % Psalm 89:14
    and jus -- tice un -- to all men.
    Be -- hold, the a -- noint -- ed Branch of God % Psalm 132:17
    has sprout -- ed from Jes -- se’s rod, % Isaiah 11:1
    with mul -- ti -- tudes of heav -- en -- ly host % Revelation 7:11
    re -- sound -- ing a sev -- en -- fold “a -- men”! % Revelation 7:12

}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Now see man -- kind up -- lift -- ed a -- new % Psalm 8:5
    by pres -- ence of God’s be -- got -- ten Son, % Psalm 2:7
    while low -- ly sheep and cat -- tle at -- tend % Psalm 8:7
    to watch o’er the Ho -- ly One.
    For out of an in -- fant’s mouth ap -- pear % Psalm 8:2
    God’s pow -- er and might brought near;
    cre -- a -- tion’s first -- born, dwell -- ing un -- til % Psalm 89:27
    the Fa -- ther’s sal -- va -- tion work is done. % Psalm 89:26
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Come kiss the Son, the high -- est of kings; % Psalm 2:12, Psalm 89:27
    His new -- writ -- ten song of life pro -- claim! % Psalm 40:3
    Our earth -- ly years thrown off as a robe, % Psalm 102:26
    yet still will His rule re -- main.
    Come wor -- ship Him on His ho -- ly hill, % Psalm 2:6
    whose wit -- ness is shin -- ing still! % Psalm 89:37
    O Lord, our Lord, how mar -- vel -- ous is
    Your name a -- bove ev -- ery earth -- ly name! % Psalm 8:9
}
>>

soprano = \relative c' {

  c4
  f2 c4
  g'2 c,4
  bes'4 a g
  a2

  g4
  a a g
  a2 c4
  c b2
  c

  \bar "" \break

  c,4
  f2 c4
  g'2 c,4
  bes'4 a g
  a2

  f4
  bes a g
  f2 f4
  f2.~ f2

  \bar "" \break

  d4
  g g f
  g2 a4
  bes2 a4
  g2

  f4
  a bes c
  bes2 a4
  g2.~ g2

  \bar "" \break

  c,4
  f2 c4
  g'2 c,4
  bes'4 a g
  a2

  f4
  bes a g
  f2 f4
  a g2
  f2

  \bar "|."
}

alto = \relative c' {

}

tenor = \relative c {

}

bass = \relative c {

}

\include "hymn-template.ily"
