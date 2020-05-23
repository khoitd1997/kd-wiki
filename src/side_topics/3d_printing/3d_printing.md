# 3D Printing

Got an Ender 3 in May 2020 because it's one of the cheapest while also having one of the biggest communities.

## Mods and Enhancements

### Completed

- Octo Print(as well as Cura integration)
- New Marlin firmware

### To be Done

## Troubleshooting

[This page][4] is an excellent tool for visual diagnostic.

[Another page][6] pairing symptoms with solutions.

The Ender 3 has some serious problems with stringing as shown [here][12]. The video mentions that the slicer has a huge impact as well as to enable/disable z-hop depending on the situation.

List of good test prints:

- [Fast Stringing Test][8]: Good for fast test, but _the probably won't get rid of all string_.
- [More Commonly Used Stringing Test][11]: Should use this for ease of comparison with people like youtubers. Proper config should get rid of all string on this one. Can be used for rapid testing if printing partially.
- [Cat Print][16]: A more elaborate test that is shorter to print compared to Benchy.
- [Poly Peal Tower][17]: A tough test that is less time than Benchy but more than Cat, should probably use this instead of Benchy.
- [All-in-one Test][9]: Take awhile to print so probably do this last.

## Calibrations and Settings

The _Cura_ profiles are stored in the same directory as this file.

[Bed Leveling Script][13] gotten from [this video][14]. Load the script into the SD card and every time it's done with one corner, press the button(won't work if done through octoprint).

[This video][3] has a pretty thorough list of things to check.

[Belt Tensioning][15] _VERY IMPORTANT_.

There are not that many things, and they are to be done:

- [Extruder Steps(esteps)][1]
- [Temperature][2]: Not exactly necessary, do it if have time or suspecting temperature issue.
- Flow rate: Use the string test and adjust the flow rate until satisfaction. The test that uses caliper to measure 4 sides is not that accurate since caliper measurement changes depending on how hard you press the caliper.

[Good video about not calibrating too many things][7]

[1]: https://www.youtube.com/watch?v=X3A9Ir2SreI
[2]: https://hobbyhoarder.net/temperature-tower/
[3]: https://www.youtube.com/watch?v=qddYsbHawno&feature=youtu.be
[4]: https://www.simplify3d.com/support/print-quality-troubleshooting/
[6]: https://support.3dverkstan.se/article/23-a-visual-ultimaker-troubleshooting-guide
[7]: https://www.youtube.com/watch?v=Mbn1ckR86Z8
[8]: https://www.thingiverse.com/thing:2219103
[9]: https://www.thingiverse.com/thing:2656594/files
[10]: https://all3dp.com/2/cura-retraction-settings-how-to-avoid-stringing/
[11]: https://www.thingiverse.com/thing:2766430
[12]: https://www.youtube.com/watch?v=_QRb54zVPfQ
[13]: https://www.thingiverse.com/download:5649391
[14]: https://www.youtube.com/watch?v=_EfWVUJjBdA&t=304s
[15]: https://www.youtube.com/watch?time_continue=251&v=PTvUSPapnuE&feature=emb_logo
[16]: https://www.thingiverse.com/thing:1545913
[17]: https://www.thingiverse.com/thing:2064029
