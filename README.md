# scarlatti-sonatas-k141-k150

[LilyPond](https://lilypond.org/) engraving source files used to create Scarlatti's sonatas (and a toccata) K141 through K150.

## Creating the PDF and MIDI files

(I highly recommend the [Frescobaldi](https://github.com/frescobaldi/frescobaldi) IDE for LilyPond. It makes all the following much easier.)

PDF and MIDI files can be created by compiling an `ly` file with LilyPond, that is, for instance, issuing the following command (assuming you have `lilypond` in your PATH variable):

        lilypond sonata-k142.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click sonata-k142.ly

You can also [download the latest release](https://github.com/ksnortum/scarlatti-sonatas-k141-k150/releases/latest) to get the compiled PDF and MIDI files.

### Two-sided printing

The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding. If you don't want this, open the file `globals.ily`, find the `\paper` block (near the top) and set `two-sided = ##f`.

### Bar numbering

If you want to print bar numbers over the first measure of every system, open the file `globals.ily` and comment out or remove the line `\omit BarNumber`.

### Warnings

I suppressed warnings in the file `sonata-k145.ly` that are caused by the `articulate.ly` script when a piece begins with grace notes.

## Copyright of Sonata K142 and K144

The scores for sonatas K142 and K144 were not available from my regular editor whose work in now in the public domain, so I used a source under the Creative Commons Attribution-ShareAlike 4.0 International license (the same one I use, see [License](#license) below).  Here is what I believe to be the appropriate attribution of these works:

Editor: Pierre Gouin (<pierre.gouin@videotron.ca>). Publisher: © Les Éditions Outremontaises, 2013.  The original works can be seen [here](https://ks15.imslp.org/files/imglnks/usimg/7/78/IMSLP302577-PMLP472726-Scarlatti_Sonate_K.142.pdf) and [here](https://ks15.imslp.org/files/imglnks/usimg/e/ec/IMSLP303212-PMLP473130-Scarlatti_Sonate_K.144.pdf).  The editor is not affiliated with my work.

### Changes

* Layout and formatting
* The titles were changed
* Added a metronome markings to the tempi
* No bar numbers were printed, but see [Bar numbering](#bar-numbering) above
* Minor changes are noted in the source material

## Thanks

Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org) for all the help getting LilyPond to do what I wanted.

## License

Copyright © 2026 by <a href="https://github.com/ksnortum/">Knute Snortum</a>, licensed under <a href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a><img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;">

If you use this work, please attribute it to Knute Snortum (<https://github.com/ksnortum/>).
