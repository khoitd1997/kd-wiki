# PCB and Mechanical Design

## Mechanical

- Surveys of various free Mechanical CAD:
  - _Fusion360_: The online version is super bare-bone, recommend setting up a VM with GPU passthrough, free for hobbyist use, `the one to use`.
  - FreeCAD: FOSS but seems fairly immature and has weird workflow.
  - OnShape: Very similar to Solidworks and also fully online, not sure how stable it is though.

## PCB

- Surveys of various free Electrical CAD:
  - _KiCAD_: FOSS and got some pretty big investments, `the one to use`.
  - Eagle: Heard their pricing tiers have gotten really complicated so the free tier is even more stripped down, but probably use it if designing enclosure in conjunction with Fusion360.
  - CircuitStudio and Upverter: Both fully online CAD by Altium, they honestly kind of compete against each other. Show that Altium strategy is lacking focus.
- [KiCad Push and Shove Router][3]
- [CadLab for visual diff on PCB][4]

### PCB Milling

While this is certainly convenient and capable of SMD, milling tends to be a mess and FR4(PCB material) contains fiberclass that while not cancerous is also not good for your lungs so milling PCB requires a fair amount of safety equipment and space. The toolchain flow is also complicated and not very polished, double sided PCB is a pain. _Recommend to not do this_.

## Both

- ECAD and MCAD Integration: Allow syncing between pcbs and enclosures design, [Fusion360 and Eagle][1], [KiCad Stepup and FreeCAD][2]

[1]: https://www.autodesk.com/solutions/ecad-and-mcad-software
[2]: https://forum.kicad.info/t/kicad-stepup-a-seamless-ecad-mcad-pcb-data-integration/12344
[3]: https://www.youtube.com/watch?v=wkL0WoKleYU
[4]: https://cadlab.io/
