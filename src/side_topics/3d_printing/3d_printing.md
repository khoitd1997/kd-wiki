# 3D Printing

Got an Ender 3 in May 2020 because it's one of the cheapest while also having one of the biggest communities and big print bed.

## Mods and Enhancements

### Completed

- Octo Print(as well as Cura integration)
- New Marlin firmware
- SKR Mini E3 v1.2

### Planned

- Replacing the electronics and extruder fan and maybe the fan ducts: With the SKR upgrade, the fan is now the loudest component. The fan size is 4010, but a 4020 would still work, [this][23] is a good one(or any that is 24V, ~7 CFM, ~20db), remember to order 2 next time buying at Digikey. For fanduct, [Hero Me][24] is a good one, although the print takes a lot of post-processing.

### Situational

- Replace printbed: [Comparision Video][18], doesn't seem necessary now as the default print bed does its job well. Also check out [PEI Sheet][19].
- Change power supply: [This one][20] is compatible, if upgrading the PSU, should probably change the fan too([guide here][21]). The fan runs at _24V_ so need either a power converter or a fan that supports that natively. Doesn't seem necessary for now but the PSU is a pretty bad one so if safety is a concern then this is probably essential.
- Add BLTouch: Be really careful with which instruction to follow due to changing firmware resulting in different recommended places to plug the BLTouch in, [here][22] is a pretty recent guide. The bed is still pretty level after a couple of prints now(even when heavy scraping was used to remove those prints) so this is fairly unnecessary, also manual bed leveling in Marlin is a breeze.
- Replacing part fan: Blower style, aka radial style. The fan size is 5015, most of the fans on Amazon is pretty bad and the blower doesn't seem to make a lot of noise so if the machine is still loud after the extruder and electronics fans are replaced then do this.

## Troubleshooting

[This page][4] is an excellent tool for visual diagnostic.

[Another page][6] pairing symptoms with solutions.

The Ender 3 has some serious problems with stringing as shown [here][12]. The video mentions that the slicer has a huge impact as well as to enable/disable z-hop depending on the situation.

List of good test prints:

- [Fast Stringing Test][8]: Good for fast test, but _some some strings will still remain_. The best profile so far still has string on top but they are easy to remove.
- [More Commonly Used Stringing Test][11]: Should use this for ease of comparison with people like youtubers. Proper config should get rid of all string on this one. Can be used for rapid testing if printing partially.
- [Cat Print][16]: A more elaborate test that is shorter to print compared to Benchy.
- [Poly Peal Tower][17]: A tough test that is less time than Benchy but more than Cat, should probably use this instead of Benchy.
- [All-in-one Test][9]: Take awhile to print so probably do this last.

## Calibrations and Settings

The _Cura_ profiles are stored in the same directory as this file.

For bed leveling, use the manual bed leveling built into Marlin, it uses 9 point leveling and the process is pretty quick and painless.

[This video][3] has a pretty thorough list of things to check.

[Belt Tensioning][15] _VERY IMPORTANT_.

Estep: 98.9 steps/mm.

There are not that many things, and they are to be done _PER MATERIAL_:

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
[15]: https://www.youtube.com/watch?time_continue=251&v=PTvUSPapnuE&feature=emb_logo
[16]: https://www.thingiverse.com/thing:1545913
[17]: https://www.thingiverse.com/thing:2064029
[18]: https://www.youtube.com/watch?v=baVA5G8HH04&app=desktop
[19]: https://www.amazon.com/Gizmo-Dorks-Printer-Surface-Adhesive/dp/B074XLD5QH
[20]: https://www.amazon.com/LRS-350-24-Switching-Supply-350-4W-115Vac/dp/B07RF38JXK
[21]: https://www.thingiverse.com/thing:2967389
[22]: https://www.youtube.com/watch?v=l0kCD02BzzY
[23]: https://www.digikey.com/product-detail/en/sunon-fans/MF40202V2-1000U-A99/259-1801-ND/6198739
[24]: https://www.thingiverse.com/thing:3092044
