# 3D Printing

Got an Ender 3 in May 2020 because it's one of the cheapest while also having one of the biggest communities and big print bed.

## Mods and Enhancements

### Completed

- Octo Print with:
  - Cura integration
  - PrintTimeGenius
- New Marlin firmware
- SKR Mini E3 v1.2
- [Raspberry Pi Pin Cover][28]
- [LCD Cover][29]
- [Knob][30]: Very convenient for replacing filament.
- [Cable Clips][31]: Nice for organizing cables.
- [Filament Guide][32]: Can be a pain to set up, but DO NOT DO LONG PRINT WITHOUT THIS.
- [Bowden Tube Tensioner][33]: Not sure if it helps but do it just to be sure.
- [Raspberry Pi 3 Case][35]
- [Ender 3 Tray][36]
- [Tool Holder][37]

### Planned

- Replacing the electronics and extruder fan and maybe the fan ducts: With the SKR upgrade, the fan is now the loudest component. The fan size is 4010, but a 4020 would still work, [this][23] is a good one(or any that is 24V, ~7 CFM, ~20db), remember to order 2 next time buying at Digikey. For fanduct, [Hero Me][24] is a good one, although the print takes a lot of post-processing.
- [Hotend chainlinks][34]: Do it if have time but there are some concerns like the thing not staying on or making noise.

### Situational

- [Damping Feet][26]: Print this if have time and want to reduce noise.
- [Aluminum Extruder][25]: Lots of people swear by this, but it others say that with the filament guide, this shouldn't happen.
- Replace printbed: [Comparision Video][18], doesn't seem necessary now as the default print bed does its job well. Also check out [PEI Sheet][19].
- Change power supply: [This one][20] is compatible, if upgrading the PSU, should probably change the fan too([guide here][21]). The fan runs at _24V_ so need either a power converter or a fan that supports that natively. Doesn't seem necessary for now but the PSU is a pretty bad one so if safety is a concern then this is probably essential.
- Add BLTouch: Be really careful with which instruction to follow due to changing firmware resulting in different recommended places to plug the BLTouch in, [here][22] is a pretty recent guide. The bed is still pretty level after a couple of prints now(even when heavy scraping was used to remove those prints) so this is fairly unnecessary, also manual bed leveling in Marlin is a breeze.
- Replacing part fan: Blower style, aka radial style. The fan size is 5015, most of the fans on Amazon is pretty bad and the blower doesn't seem to make a lot of noise so if the machine is still loud after the extruder and electronics fans are replaced then do this.

## Calibrations

[This page][4] is an excellent tool for visual diagnostic. Although it may not always be accurate.

[This video][3] has a pretty thorough list of things to check.

[Belt Tensioning][15] _VERY IMPORTANT_.

For bed leveling, use the corner leveling(using the knobs) and then manual bed leveling built into Marlin, it uses 9 point leveling and the process is pretty quick and painless. This Ender 3 tends to under-extrude, so when leveling, stop when you feel barely any friction in the paper.

Calibrations _PER MATERIAL_:

- Temperature: Do [temperature tower][2] when other issues are already sorted out.
- Flow rate

[Good video about not calibrating too many things][7]

List of good test prints:

- [Fast Stringing Test][8]: Good for fast test, but _some some strings will still remain_. The best profile so far still has string on top but they are easy to remove.
- [More Commonly Used Stringing Test][11]: Should use this for ease of comparison with people like youtubers. Proper config should get rid of all string on this one. Can be used for rapid testing if printing partially.
- [Cat Print][16]: A more elaborate test that is shorter to print compared to Benchy.
- [Poly Peal Tower][17]: A tough test that is less time than Benchy but more than Cat, should probably use this instead of Benchy.
- [For Testing Support][27]
- [All-in-one Test][9]: Take awhile to print so probably do this last.

## Settings

### Printer

NOTE: The SKR Mini has some kind of bug, even if the LCD shows Stealthchop is enabled, use M569 to make sure it's in Stealthchop, currently, the jumper on the board is on SpreadCycle by default and Stealthchop is enabled using firmware.

Printer settings are either enabled through the LCD and saved into EEPROM or enabled during compilation.

EEPROM:

- [Extruder Steps Calibration(esteps)][1]: 98.9 steps/mm.
- Stealthchop: On for all axis
- Bed leveling: On

Compile Time:

- Disable Hybrid Threshold: Mostly because the z axis moves pretty loudly, this is probably a bug so check back later.

### Cura

The profiles for each material are stored in the same directory as this file. However, variation of the profile is probably necessary sometimes. General guidelines:

- Infill > 50% for things that will be manhandled. Around 20% is good for things that is usually not touched.
- Print speed 40-60 and layer height < 0.2 for things that need to look pretty.
- Wall count of 7 for things that need to be strong.
- Temperature nozzle > 200 and bed = 60 for fast print or strong print.

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
[25]: https://www.reddit.com/r/ender3/comments/b37y32/ender_3_fix_aluminum_extruder_upgrade/
[26]: https://www.thingiverse.com/thing:2913473
[27]: https://www.thingiverse.com/thing:3064242
[28]: https://www.thingiverse.com/thing:1874648/files
[29]: https://www.thingiverse.com/thing:3004849/files
[30]: https://www.thingiverse.com/thing:3176144/files
[31]: https://www.thingiverse.com/thing:2960375/files
[32]: https://www.thingiverse.com/thing:3052488
[33]: https://www.thingiverse.com/thing:936611/files
[34]: https://www.thingiverse.com/thing:3132855
[35]: https://www.thingiverse.com/thing:3016364
[36]: https://www.thingiverse.com/thing:2957317/files
[37]: https://www.thingiverse.com/thing:2886395
