Changelog
=========

## [Source v0.0.0.6-pre (build 6)](https://github.com/ArtefactDev/imperius-return/archive/src-v0.0.0.6-pre.zip)
### Changes
#### Spells
- Added Inferno spell [`R`-`R`-`L` / `inferno`]
- Added Submerge spell [`R`-`L`-`R` / `submerge`]
- Added Blitz spell [`R`-`R`-`R` / `blitz`]
#### Entities
- Added goblins
#### Gameplay
- Added continuous sound to spell `tornado`
- Mana will now not regenerate during spell cooldowns
#### Technical
- Added version number to resource pack description

## [Source v0.0.0.5-pre (build 5)](https://github.com/ArtefactDev/imperius-return/archive/src-v0.0.0.5-pre.zip)
### Bug Fixes
- [[#9]](https://github.com/ArtefactDev/imperius-return/issues/9) Function `artefact-api:entities/spawn/radius/butterfly` does not exist
### Changes
#### Spells
- Added Tornado spell [`R`-`L`-`L` / `tornado`]
- Magic shield now takes away -2 mana
- Removed `enchanted_hit` particle from spell `discharge`
- Mana now takes 1 second to regenerate instead of 2
#### Gameplay
- The treasure bag use message now says `Opened [...] treasure bag` instead of `Consumed [...] treasure bag`
- Modified pixie hurt sound
#### Technical
- Separated `discharge/sprint` spell test into their respective items
- Changed all text JSON strings to the new single quotation format
- Moved spaces next to the `L`/`R` display in the action bar from the language files to the raw function
- Added headings to the items section of the command menu
- Moved function `artefact-core:player/death` to `artefact-api:death`
- Moved the indicator to non-primary players who the primary player is from `artefact:core/player/tick` to function `artefact-core:tick`
- Added entity tag `artefact-type:sprite`
- Reorganised on-load score sets
- The slime for left-click now teleports to the player slightly quicker
- Reworked the mana regen timer threshold
- Removed unused 'flick' check
- Removed unused loot table `minecraft:blocks/shulker_box`

## [Source v0.0.0.4-pre (build 4)](https://github.com/ArtefactDev/imperius-return/archive/src-v0.0.0.4-pre.zip)
### Bug Fixes
- [[#8]](https://github.com/ArtefactDev/imperius-return/issues/8) Removing magic shield from offhand while still activating does not reset timer
### Changes
#### Gameplay
- Shield type now displays in the attribute status icon (offhand slot)
#### Entities
- Given butterflies a model
- Made pixie models 3d
#### Technical
- Given shield boss bar its language string
- Added shields to the item give command menu
- If you are not holding an item with a spell, you will now go out of spell activation state
- Removed jump boost effect from spell `discharge`

## [Source v0.0.0.3-pre (build 3)](https://github.com/ArtefactDev/imperius-return/archive/src-v0.0.0.3-pre.zip)
### Bug Fixes
- [[#6]](https://github.com/ArtefactDev/imperius-return/issues/6) Build check still runs feedback tellraw if a player hasn't ran the command
- [[#7]](https://github.com/ArtefactDev/imperius-return/issues/7) Discharge spell's slow falling effect is inconsistent
### Changes
#### Gameplay
- Added magic shields' functionality `/function artefact-api:items/give/shield/magic`
  - While in offhand, look down, sneak and wait to activate
  - 5 second cooldown
  - 3 second charge-up
- Made lapis lazuli ore block animated [[#5]](https://github.com/ArtefactDev/imperius-return/issues/5)
#### Entities
- Added butterflies
  - **Needs model, animation and texture**
  - Passive mob
- Added ambient and damage particles for pixies
#### Items
- Added treasure bags `/function artefact-api:items/give/treasure_bag/<basic|epic|legendary>`
  - Basic, epic, legendary and set
  - Placeholder bag texture currently (credit: Terraria purification powder)
#### Technical
- Changed command book to a chat menu `/function artefact-api:command_menu/open`
- Imported vanilla data pack tags
- Made server version check armour stand invisible
- Different spells can now have different mana amounts taken away

## [Source v0.0.0.2-pre (build 2)](https://github.com/ArtefactDev/imperius-return/archive/src-v0.0.0.2-pre.zip)
### Bug Fixes
- [[#1]](https://github.com/ArtefactDev/imperius-return/issues/1) Glass panes show missing texture icon
- [[#4]](https://github.com/ArtefactDev/imperius-return/issues/4) Mana gets set to `0` on death even in creative mode
### Changes
#### Gameplay
- Added a tutorial-like feature
  - When doing something for the first time, such as holding an item with a spell, you will get a tip in the chat
- Changed global death message
#### Technical
- Added `Command Book` (`/function artefact-api:items/give/command_book`)
#### Entities
- Added rats
- Dropped items display their names
- Changed the above-head levels system to a 1-3 stars rating

## [Source v0.0.0.1-pre (build 1)](https://github.com/ArtefactDev/imperius-return/archive/src-v0.0.0.1-pre.zip)
To test the source code, install the resource pack, load up a creative void world and install the data pack into it. Run `/reload` and get going!
Here's a run-down of everything added so far:
#### Mechanics
Some vanilla mechanics have been altered for a full RPG experience!
- Health
  - Unaltered other than that you have 4 hearts by default
- Mana
  - Replaces the food bar
  - Regenerates 1/2 an orb every 2 seconds (40 ticks)
  - Used to activate spells
- Energy
  - Replaces the XP bar
  - Used for abilities (to come)
- Action Bar
  - Displays useful information
    - Health
    - Mana
    - Current L/R click status
    - Spell activation
    - Spell recharge
- Hot Bar
  - Slots 2, 3 and 4 will be used for abilities
  - Currently placeholder'd with granite, diorite and andesite
  - PS there's also sounds for when you switch slots ❤
- Offhand
  - Disabled - only shields can be equipped with the tag `artefact:{item_type:["shield"]}` or `artefact:{item_type:["magic_shield"]}`
- Block Effects
  - Standing in certain blocks will give you certain effects
    - *e.g. standing in a block with the tag `#artefact-type:slowing` will slow you down, such as `minecraft:tall_grass`*
#### Spells
Spells can be added to right-clickable items using the tag `artefact:{can_right_click:1b,can_left_click:1b,spells:["<SPELL_ID>"]}`
- Sprint [`R`-`R`-`R` / `sprint`]
  - Gives you speed 4 for 5 seconds
- Discharge [`R`-`L`-`R` / `discharge`]
  - Boosts you up into the sky
  - Slow fall back down
#### Entities
- Zombies (Level: 1) `/function artefact-api:entities/spawn/zombie/level_1`
  - Behaves like normal zombies
  - Have leather caps and boots
- Pixies (Level: Undefined) `/function artefact-api:entities/spawn/pixie`
  - 4 attack damage (2 hearts)
  - 16 health (8 hearts)
  - Drops `Pixie Dust`
#### NPCs
NPCs are simply Minecraft players as entities
- *Andante* `/function artefact-api:npcs/spawn/andante`
- *razorsharp* `/function artefact-api:npcs/spawn/razorsharp`
- *ToffeeMax* `/function artefact-api:npcs/spawn/toffeemax`
#### Items
- Pixie Dust
  - Can be dropped to spawn more pixies
