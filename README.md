NWNForBG
=============

Neverwinter Nights for Baldur's Gate
------------------------------------
Version: 0.92

Author: AGKanevchev
---------------

Wiedu Adaptation: paladin84
---------------

[Discussion Forum](https://arcanecoast.ru/forum/viewtopic.php?f=31&t=1773)
---------------

[Github sources](https://github.com/abalabokhin/NWNForBG)
-------------------

Thanks and Acknowledgements
-----------------------

* Lord\_Draconis - for the provided location images
* Gorion - for the provided night Beggar's Nest location image
* Insomniator2 - for a great help with weidu adaptation and especially for the script that can generate weidu code to set string refs for binary files (cre, are, etc.)
* p\_zombie - for testing and help with bp-bgt-worldmap adaptation
* argent77 - for help with TIS files and useful weidu libraries
* scheele - for testing, some ideas for the mod and help with proof-reading Russian texts
* arcanecoast.ru - thanks to the whole community for the help with weidu modding and mod/assembly testing
* gibberlings3.net - thanks to the whole community for the help with weidu modding

Languages
---------

* Russian, based on Russian NWN translation from 1C
* English (partially taken from original NWN texts with script (there are can be some errors), partially machine translated and proof-read (not fully yet) by paladn84

Description:
------------

The mod repeats, with some minor modifications, the plot of Neverwinter Nights game. Once Gorion's Ward reaches the experience of 1350000 XP, he/she can start Neverwinter Nights. At this moment, a messenger from Neverwinter will approach him/her in any of the Athkatla's Districts and ask for help.

Compatibility
-------------

Neverwinter Nights for Baldur's Gate should be fully compatible with BG2:TOB, BGT, BG2EE, EET games and with pretty much any other mod that's out there.

Installation
-------------

Copy mod into BG2:TOB, BGT, BG2EE or EET folder and run setup-NWNForBG.exe.

Dependencies
-------------

<h3>For BG2:TOB and BGT:</h3>

Make sure ToBex (or other mods, increasing maximum number of music) and Infinity-Animations are installed prior to Neverwinter Nights for Baldur's Gate. BP-BGT-Worldmap v12.0 or later must be installed after Neverwinter Nights for Baldur's Gate. It is highly recommened to install generalized\_biffing (only works properly if installed with Weidu 24600, be careful here) after Neverwinter Nights for Baldur's Gate.

<h3>For BG2EE and EET:</h3>

BP-BGT-Worldmap v12.0 or later must be installed after Neverwinter Nights for Baldur's Gate.

Known Bugs:
-----------

- Transform into Wererat ability doesn't work well on EE: after turning into wererat, turning back to human form plays the anmation, but a character still cannot talk or cast spells.

Version History
---------------
In development:

0.92 (10/18/23)

- Implemented proper removing items from the party in a dialog with party members.
- Implemented removing item versions from chapter 1 in chapter 3 while talking to party members.
- Fixed bug (thanks to AGKanevchev) if attack catapults in third chapter, their creatures "jumped out" of the catapults and become located next to the catapults on the map after they are hostile.
- Finished translation/proof reading english setup.tra

0.91 (10/15/23)

- Fixed more craft recepies.
- Fixed some traps for craft containers, so they are undetectable.
- Fixed crafting script in NW2E61 to work better.
- Fixed NW3201.WED file so Zokan is not semi-transparent in EE.
- Fixed Rumors in all stores.
- Some cosmetic resources fixes, removing unused resources, etc.
- Remove many spells (manly cleric's ones from the mod). Some spells are still there.
- Renamed back random items (eg RNDTRE08.ITM), they should not have prefix.
- Fixed scrit for NWSPID0, now it explodes with Fireball when die as intended.
- Fixed setting SPRITE\_IS\_DEAD... variable to use proper names (bug that appeared after adding prefixes).
- Fixed Joinable NPCs really destroy their items after upgrade even if they have these items.
- Adjusted some cuscenes delays to better fit sound durations.

0.89 (09/28/2023)

- Changed XP needed to start the mod to 1350000.
- Fixed how level for Joinable NPCs is defined, now it depends on Main Hero XP not his/her level.
- Fixed more maps for EE version (there are still glitches but it is nothing I can do), thanks to argent77, 
  details are [here](https://www.gibberlings3.net/forums/topic/29944-mod-added-area-compatability-for-bg2-and-bg2ee-in-2019/page/2/).
- TIS files for classic BG2 and BGT are now generated during installation from EE version, it reduced the mod size to be less than 1GB (thanks to argent77).
- Used weidu function from argent77 to proper copy PVRZ files (should be no prefix conflicts).

0.87 (09/25/2023)

- Added prefixes for all files.

0.85 (09/17/2023)

- Fixed animation for Gorgota.
- Implemented installation for BG2:TOB and EET.
- Fixed formatting in english tra files.

0.83 (09/13/2023)

- Fixed some small bugs in the third and forth chapters on NWN.
- Fixed more thansition between maps, now mod should be fully workable for EE.
- Fixed dialog with Aarin in third chapter.
- Fixed dall drinks for STO files.

0.82 (09/13/2023)

- More fixes of Flaming Fists.
- Fixed EISNF.d not to spam the same replica
- Fixed bug with Belial appearance and dialog with him (thanks to AGKanevchev).
- Fixed search path for NW2608 map (thanks to AGKanevchev).
- Fixed dialog with Guardian (thanks to AGKanevchev).
- Fixed some small bugs in the second chapter on NWN.

0.81 (08/30/2023)

- Added fix for file Aarin2.d from AGKanevchev.
- Fixed script for Intellect devourer for EE version.
- Fixed items that are given to you by Joinable NPCs.
- Fixed traps that can call a Flaming Fist.
- Fixed some drinks for STO files.
- Fixed some small bugs in the first chapter on NWN.

0.8 (08/05/2023)

- Fixed BP-BGT-Worldmap transitions between maps (thanks to AGKanevchev).
- Added one missing file (thanks to p\_zombie).

0.7 (08/03/2023)

- Some dialogs taken from BG1 for original assembly are fixed.
- Fixed some animations again.
- Added new item to craft for Cromwell (thanks to Insomniator2 for the code).
- Make all quests combinable for EE.
- More fixes for BG-BGT-Worldmap.
- Other small fixes.


0.6 (07/26/2023)

- Added Movies for EE.
- Some dialogs taken from BG1 for original assembly are fixed.
- Sound for Joinable NPCs are added.
- Added correct kit Linu
- Added better portrait for Tomi

0.5 (07/23/2023)

- Added all the necessary animations for EE.

0.4 (07/20/2023)

- Added proper area maps (TIZ + PVZR) for EE.

0.3 (07/18/2023)

- Mod is traified
- English translation (partially taken from NWN games, partially machine translated with NP: marker) is added
- Icons for BP-BGT-Worldmap are at the right positions (thanks to p\_zombie)
- Portraits for joinable NPCs have proper size portraits for EE

0.2 (07/15/2023):

- Initial resources extraction from the NWN assembly as a mod with lots of know issues. It is the first public
  release of the mod in github.

prior:

- Assembly for BGT including whole NWN plot was prepared, testes and published by AGKanevchev.
