\include "hymn.ily"

\header
{
  title = "Eternal God, Whose Power Upholds"
  poet = \markup \poet "Henry Hallam Tweedy, 1929"
  composer = \markup \composer "Ralph Vaughan Williams, 1906"
}

\paper {
  top-margin = 0.4\in
  bottom-margin = 0.2\in
}

global =
{
  \time 4/4
  \key f \major
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    E -- ter -- nal God, whose power _ up -- _ holds
    both flower and _ flam -- ing star,
    to whom there is no here _ nor _ there,
    no time, no _ near nor far,
    no _ a -- lien race, _ no _ for -- _ eign _ shore,
    no child un -- sought, un -- known,
    O send us forth, Thy pro -- _ phets _ true,
    to make all _ lands Thine own!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    O God of love, whose Spir -- _ it _ wakes
    in ev -- ery _ hu -- man breast,
    whom love, and love a -- lone, _ can _ know,
    in whom all _ hearts find rest:
    help _ us to spread _ Thy _ gra -- _ cious _ reign
    till greed and hate shall cease,
    and kind -- ness dwell in hu -- _ man _ hearts,
    and all the _ earth find peace!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    O God of truth, whom sci -- _ ence _ seeks
    and rev -- erent _ souls a -- dore,
    who light -- est ev -- ery earn -- _ est _ mind
    of ev -- ery _ clime and shore,
    dis -- _ pel the gloom _ of _ err -- _ or’s _ night,
    of ig -- nor -- ance and fear,
    un -- til true wis -- dom from _ a -- _ bove
    shall make life’s _ path -- way clear!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    O God of beau -- ty, oft _ re -- _ vealed
    in dreams of _ hu -- man art,
    in speech that flows to me -- _ lo -- _ dy,
    in ho -- li -- _ ness of heart:
    teach _ us to turn _ from _ sin -- _ ful -- _ ness
    that shuts our hearts to Thee,
    till all shall know the love -- _ li -- _ ness
    of lives made _ fair and free!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    O God of righ -- teous -- ness _ and _ grace,
    seen in the _ Christ, Thy Son,
    whose life and death re -- veal _ Thy _ face,
    by whom Thy _ will was done:
    in -- _ spire Thy her -- _ alds _ of _ good _ news
    to live Thy life di -- vine,
    till Christ has formed in all _ man -- _ kind
    and ev -- ery _ land is Thine!
  }
>>

soprano = \relative c' {
  c4
  f f f g
  a8 g a bes c4 a
  bes a8 f g4 g
  f2.

  \linebreak

  c4
  f f f g
  a8 g a bes c4 a
  bes a8 f g4 g
  f2.

  \linebreak

  f8 a
  c4. d8 c bes a g
  f g a bes c4 c,
  f a g f
  c2.

  \linebreak

  c4
  f f f g
  a8 g a bes c4 a
  bes a8 f g4 g
  f2.
}

alto = \relative c' {
  c4
  c d c d8 e
  f4 f e d
  d f f e
  c2.

  c4
  c d c d8 e
  f4 f8 g a4 f
  d f f e
  c2.

  f8 a
  c4 e, d c
  c f e c
  c c bes a8 bes
  c2.

  c4
  c d c d8 e
  f4 f e8 d d c
  d e f4 f e
  c2.
}

tenor = \relative c' {
  g4
  a bes c bes
  c f, g f
  bes c d c8 bes
  a2.

  g4
  a bes c bes
  c d e d
  bes c d c8 bes
  a2.

  f8 a
  c4 g f bes
  a f g e
  f f d8 e f4
  g( e f)

  g4
  a bes c bes
  a f g f
  f f c' c8 bes
  a2.
}

bass = \relative c {
  e4
  f bes a g
  f d c d
  g, a bes c
  f2.

  e4
  f bes a g
  f d a d
  g, a bes c
  f2.

  f8 a
  c4 c, d e
  f d c c8 bes
  a4 f bes d
  e( c d)

  e4
  f bes a g
  f d c f,
  bes8 c d4 c c
  f2.
}

\include "hymn-template.ily"