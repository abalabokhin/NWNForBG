NWNForBG
=============

Neverwinter Nights for Baldur's Gate
------------------------------------
Version: 0.97

Author: AGKanevchev
---------------

Wiedu Adaptation: paladin84
---------------

[Russian Discussion Forum](https://arcanecoast.ru/forum/viewtopic.php?f=31&t=1773), [English Discussion Forum](https://www.gibberlings3.net/forums/topic/37267-neverwinter-night-for-baldurs-gate-mod)
---------------

[Github sources](https://github.com/abalabokhin/NWNForBG)
-------------------

[FAQ](https://github.com/abalabokhin/NWNForBG/wiki/FAQ)
-------------------

Thanks and Acknowledgements
-----------------------

* Lord\_Draconis - for the provided location images
* Gorion - for the provided night Beggar's Nest location image
* Insomniator2 - for a great help with weidu adaptation and especially for the script that can generate weidu code to set string refs for binary files (cre, are, etc.)
* megrimlock - for helping with proof-reading english tra files
* p\_zombie - for testing, help with BP-BGT-Worldmap adaptation and preparing a dedicated map for NWN content
* Apxu - for coding a component with a dedicated NWN content map
* Tipun - for coding a component to make the mod to be a dedicated campaign
* JohnBob - for helping with icons positins and some weidu coding
* Roberciiik and Weigo - for changing BP-BGT-Worldmap for this mod and for the BP-BGT-Worldmap mod itself
* argent77 - for help with TIS files and useful weidu libraries
* scheele - for testing, some ideas for the mod and help with proof-reading Russian texts
* arcanecoast.ru - thanks to the whole community for the help with weidu modding and mod/assembly testing, bug reporting, etc
* gibberlings3.net - thanks to the whole community for the help with weidu modding, testing, bug reporting, etc


Copyright Concerns
------------------

Some area maps and other visual assets were taken from other games (Pillars of Eternity, Witcher 3). If you
are a right owner and your intellectual property cannot be used in this mod, let me know and I will remove your
assets from the mod or remove the mod competely from the public access (if removing your assets from the mod is not
possible).

Languages
---------

* Russian (finished), based on Russian NWN translation from 1C
* English (finished), partially taken from the original NWN texts with script (there are still might be some errors), partially machine translated and proof-read by paladin84 and megrimlock
* French, partially taken from the original NWN texts with script, partially English (needs checking/translating)
* German, partially taken from the original NWN texts with script, partially English (needs checking/translating)
* Italian, partially taken from the original NWN texts with script, partially English (needs checking/translating)
* Spanish, partially taken from the original NWN texts with script, partially English (needs checking/translating)
* Polish, partially taken from the original NWN texts with script, partially English (needs checking/translating)
* Simplified Chinese (finished) partially taken from the original NWN texts with script and partially made by Youye, Lewis Liu and Shuiyue Jushi

General Information:
------------

The mod repeats, with some minor modifications, the plot of Neverwinter Nights game. Once Gorion's Ward reaches the experience of 1350000 XP, he/she can start Neverwinter Nights. At this moment, a messenger from Neverwinter will approach him/her in any of the Athkatla's Districts and ask for help. However, recommended amount of XP to start NWN content is 1750000.

There are three components in this mod:
1. Main component, that install all the resources for the mod.
2. Map component, for EET for BG2EE you can select between using map icons with BP-BGT-Worldmap or using a dedicated map for NWN content. For BGT and oBG2 icons for BG-BGT-Worldmap are used.
3. Install NWNForBG as a didicated campaign (for BG2EE and EET only) depending on the second component the appropriate map will be used. For EET, NWN is added to the list of campaigns, for BG2EE, UI is modified (ATTENTION: this was not tested with different UI mods for BG2EE). PC starts the dedicated campaign with 1.5M XP and about 10K GP.

Mods which extend material presented here are welcome as separate modifications, with the appropriate credit given to the authors. If you want something to become a direct part of this mod, you will need to contact AGKanevchev and/or paladin84.

Compatibility
-------------

Neverwinter Nights for Baldur's Gate should be fully compatible with BG2:TOB, BGT, BG2EE, EET games and with pretty much any other mod that's out there. All bg2 events are blocked while you are doing NWN content, so don't be afraid that Jaheira's personal quest will be broken. 
Also, some of the new wizard spells (eg Icelance) might have conflicts with some Talents of Faerûn mod components as for Beta 3 version if Talents of Faerûn is installed after NWNForBG.
If there are any of new wizard spells (eg Icelance) already installed in the game (eg from IWDification), only new unique spells are going to be installed and previously installed version of already existing spells are going to be used. Thus, if you want to use spells from IWDification, install NWNForBG after IWDification or rewrite existing spells with IWDifications if it is installed after NWNForBG. If IWDification spells are used there are also should not be any issues with Talents of Faerûn (not tested).
If there are UI mods that change BG2EE starting screen dramatically, installing third compoment with BG2EE might not add NWN campaign propeprly (UI mods were not tested with third component of the mod, installed on BG2EE), but everything should work with EET.

Installation
-------------

Copy mod into BG2:TOB, BGT, BG2EE or EET folder and run setup-NWNForBG.exe.

Dependencies
-------------

<h3>For BG2:TOB and BGT:</h3>

Make sure ToBex (or other mods, increasing maximum number of music), Baldur's Gate II Fixpack and Infinity-Animations (there can be a problem with code page for non-English window systems, be careful, read README and [here](https://www.gibberlings3.net/forums/topic/37297-bg2-crashes-due-to-some-mod/).) are installed prior to Neverwinter Nights for Baldur's Gate. BP-BGT-Worldmap v13.0 or later must be installed after Neverwinter Nights for Baldur's Gate. It is highly recommened to install generalized\_biffing (only works properly if installed with Weidu 24600, be careful here) after Neverwinter Nights for Baldur's Gate.

<h3>For BG2EE and EET:</h3>

Depending on second component of the mod, BP-BGT-Worldmap v13.0 or later might need to be installed after Neverwinter Nights for Baldur's Gate. For mods that add other campaigns to EET (eg IWD\_EET\_Integration), third component of this mod should be installed after them.

Translator Notes:
----------------
Russian, English and Chinese languages are pretty much done, but any corrections are always welcome.
Other languages are mixed English and other language lines (eg French and English). For every line on English,
the "closest" line(s) in the language (eg French) from the original NWN texts is shown in comments. Often,
the original NWN lines were changed in English and should be change in the other language respectively. For
the new lines, what in comments is usually garbage, so just translate them. After correcting/translating the
line, the comment should be removed. It is easy to find all the lines that needs to be corrected by searching
open comments string (without quotes): "/*".

What else needs to be done:

1. Pay extra attention to the gold amount in the texts, it was changes (compared to original NWN texts) everywhere.
2. Translate files worlmap.tra and CheatAreas.tra manually.
3. Verify with the original NWN texts if necessary, they are located in eg "NWNForBG/reference/bash\_scripts/entries\_fr.txt.tra".
4. Fix lines @1 and @2 in setup.tra file to match "Usable by" lines in items description, so they can be
   removed automatically for EE games (see details in NWNForBG/tra/TranslatorNoteItemDescription).
5. All the items in install.tra should be properly translated (for some of them there is a desriptions in original NWN texts,
   but not for many).
6. In install.tra file, there are many names that are combined First and Last name from the original NWN texts.
7. In install.tra file, there are many journal entries, add empty line after the title (see how it is done in
   English).
8. If there is a difference for BG2EE/EET line in install.tra file (to compare woth oBG/BGT lines) that cannot be solved by removing 
   "Usable by", add such lines in install-ee.tra file.
9. If you have any questions, feel free to ask on the support forums.
10. Try to fix all low intellect dialog options, they are in the texts by mistake. In English they look like "me go".

Known Bugs:
-----------

- In fight with Intellect devourer after its current body destroyed and while it in the process of going to a new body if this new body is destroyed or convinced to leave, the Intellect devourer dissapear.

Version History
---------------
In development:

- Updated Chinese translation, thanks to Lzw104522773.
- Updated Russian translation.
- Minor resource corrections.
- Fixed some sounds for dialogs, thanks to sese\_ser.
- Corrected some dialogs in English and other languages, thanks to sese\_ser and lynx.
- Corrected delays, when werewolf kids start talking to you, now they do it immediately after transforming into humans, thanks to lynx.
- Corrected some minor script erros, thanks to lynx.

0.97 (03/30/24)

- Added movies for Chinese language (English ones with Chinese subtitles), thanks to Lzw104522773.
- Updated Chinese translation, thanks to Lzw104522773.
- Fixed icon for several containers, thanks to sese\_ser.
- Fixed reputation table for the dedicated campaign.
- Fixed and cleaned some resources (itm, cre, etc), thanks to shadowlich.
- Made new wizard spells to use already installed wizard spells (eg from IWDification if any).
- Fixed some English texts, thanks to Daulmakan.
- Updated some item icons, thanks to Daulmakan.
- Fixed some audio in Aribeth dialog, thanks to sese\_ser and AGKanevchev.
- Changed LOTAR icon, thanks to Daulmakan and scheele.
- Removed "boat" from NW3000 area, thanks to Roberciiik and Daulmakan.
- Fixed NWN Campaign logo, thanks to p\_zombie.
- Made enemies not to go in NWN Core from other disctricts, thanks to tipun and sese\_ser.
- Fixed some dialogs with Tomi, thanks to scheele.
- Add a dedicated bio if start NWN as a dedicated campaign, thanks to scheele.

0.96 (02/29/24)

- Added a dedicated map option as an optional component (EE/EET only) to change the map during NWN content and change it back after returning to Amn. In this case there is no need in BP-BGT-Worldmap mod. The component is coded by Apxu and the map image is prepared by p\_zombie. Weidu code to place icons on a map is taken from BP-BGT-Worldmap mod.
- Converted TIS and WED files to have proper water overlay thanks to Sour, AGKanevchev and Apxu.
- Converted TIS and WED files to remove glitches next to doors and fireplaces.
- Fixed slow music NW84 (it is from IWD1, so I renamed it to be b1 - no prefixes, but since it is original IWD resource, it should be ok) thanks to Kyros.
- Added ini file for Project Infinity.
- Added few map notes in Chapter 1, where it is difficult to find an area exit.
- Fixed some small bugs thanks to tipun.
- Fixed some English texts thanks to Daulmakan.
- Updated some item icons thanks to Daulmakan.
- Added component to install the mod as a dedicated campaign for EET and BG2EE. This component is coded by Tipun.
- Fixed some Russian texts thanks to p\_zombie.
- All the map icon positions for BP-BGT-Worldmap mod updated to match BP-BGT-Worldmap v13.
- Small various bugs are fixed thanks to everyone who reported about them.

0.95 (01/12/24)

- Improved quality of English and Russian movies for EE version, added French movies (thanks to JohnBob).
- French texts are partially fixed and French sounds are added for some NPCs, thanks to JohnBob.
- Chinese translation were finished by Shuiyue Jushi, Youye and Lewis Liu.
- Added auto genrated Chinese translation, thanks to MephistoSatanDevil and icecool for the provided NWN dialog.tlk.
- Made some creatures a little weaker to be more ballanced, thanks to TheWildestMage
- Fixed some texts, items and small bugs, thanks to TheWildestMage, JohnBob and AGKanevchev
- Probably fixed crash with a big spider one more time, thanks to TheWildestMage
- Fixed NWDRAWL2 cut scene, thanks to TheWildestMage
- Fixed NW2305.TIS thanks to p\_zombie

0.94 (11/27/23)

- Added other languages (mixed with English), see tranlator notes if you want to finish them
- Checked and fixed names in Russian and change "е" to "ё" where appropriate
- Fixed death script for NWSPID3 to actually cast fireball again, thanks to JohnBob
- Probably fixed again the script for NWSPID3 and NWSPID0 not to crash the game, thanks to BSpecific
- Fixed NWSLAADD animation, thanks to BSpecific
- Fixed item NWMISC32 not to dissapear after rest, thanks to BSpecific
- Fixed script for NWLERK to open bridge after the death
- Fix game freeze if a messenger from Neverwinter talk not to main hero, thanks to p\_zombie

0.93 (11/15/23)

- One forge recepie is fixed, thanks to megrimlock.
- All the lines in English tra files are automatically (using python script) found in the original NWN texts and/or proof read by paladin84 and megrimlock.
- Implemented autotra, so the original tra files are not modified during installation process, thanks to JohnBob.
- "Usable By", etc are now removing for EE automatically during installation process, thanks to JohnBob.
- Some areas are added to "Cheat Areas" for EE, thanks to JohnBob.
- Some map icons are repositioned on the global map, thanks to JohnBob.
- Transform into Wererat ability now works as intended, after turning into Wererat you can speak and after turning back to human all your abilities are recovered.
- Added prefix to more files (manually).
- Removed IMPRISONMENT spell casting from some mages to make the mod more ballanced.
- All new wizard spells are added properly (using ADD\_SPELL, not just copied as before).
- Added prefix for all global variables.
- Added missing resource for oBG2 and BGT (they might be already there if some mods are installed).
- Added check for the PC doing NWN quest and not triggering actions for main bg content (like in underdark), thanks to JohnBob.
- Fixed animation for Death Slaad, thanks to BSpecific

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
- Fixed script for NWSPID0, now it explodes with Fireball when die as intended.
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
