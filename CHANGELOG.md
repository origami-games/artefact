Changelog
=========

-----
## [Source v0.0.0.9-pre (build 9)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.9-pre.zip)
### Bug Fixes
- [[#17]](https://github.com/origami-games/imperius-return/issues/17) Zombies are called goblins
- [[#18]](https://github.com/origami-games/imperius-return/issues/18) Treasure bags are missing a language string
- [[#19]](https://github.com/origami-games/imperius-return/issues/19) Bows are unusable because of missing `#minecraft:arrows` tag

### Changes
#### Magic
- Added wands
  - Brandr (`/function origami-games:artefact/api/items/give/wand/brandr`)
    - Discharge
    - Blitz
    - Tornado
  - Scorch (`/function origami-games:artefact/api/items/give/wand/scorch`)
    - Inferno
    - Blitz
- Added custom potions
  - Mana Potion (`/function origami-games:artefact/api/items/give/potion/instant_mana`)
    - +6 instant mana
  - Energy Potion (`/function origami-games:artefact/api/items/give/potion/instant_energy`)
    - +20 instant energy
  - Potion of Pushing (`/function origami-games:artefact/api/items/give/potion/pushing`)
    - Pushing effect for 10 seconds - pushes all mobs in a radius of 4 blocks away from you
  - Potion of Flammability (`/function origami-games:artefact/api/items/give/potion/flammability`)
    - Summons a trail of flames behind you, setting mobs who walk in them on fire. This lasts 10 seconds.

#### Abilities
- Added `Snake Step`
  - You will turn invisible for 4 seconds and teleport up to 15 blocks in the direction you’re looking - until you hit a block. All enemies passed through during this time will be stunned and receive glowing. This ability cannot be used while you have invisibility.
- Added `Pin`
  - The next time you move you get a short burst of extreme speed, and all mobs that are in front of you during the 'dash' get pushed towards wherever you are going, and get stunned. This does some damage to these mobs.
- Added energy usage to the lore of ability slots
- Updated Indomitable Stomp texture

#### Items
- Added `Throwing Knife` (`/function origami-games:artefact/api/items/give/throwing_knife`)
  - Right-click to throw
  - Will stick in mobs it hits for 5 seconds
  - Fast, but weak melee damage - +4 attack damage (2 hearts)
- Added `Hammer` (`/function origami-games:artefact/api/items/give/hammer`)
  - Slow, but strong melee damage - +9 attack damage (4.5 hearts)
- Added `Longsword` (`/function origami-games:artefact/api/items/give/longsword`)
  - Moderate attributes - +6 attack damage (3 hearts)

#### Textures
- Updated textures
  - Lapis Block
  - Sand
  - Gravel
- Added textures
  - All planks
  - Clay
  - Glowstone
  - Sponge
  - Wet Sponge
- Reverted grass path's texture
- Updated mob effect textures for newer snapshots
- Removed unused textures from `/assets/minecraft/textures`
- Removed default shield placeholder texture from inventory offhand slot

#### Technical
- Moved pixie model reference to `/minecraft/models/item/stick.json` [[#14]](https://github.com/origami-games/imperius-return/issues/14)
- Renamed `/artefact/ability_slot/template.json` to `base.json` and added new `_template.json` as a template for new abilities
- Updated `origami-games:artefact/type/passthrough`
- Reworked the stuns system again
- Removed NPCs (to be added back and reworked later)
- Stopped the left click slime from being able to be on fire

### Other Commits
- [`4c81a09`](https://github.com/origami-games/imperius-return/commit/4c81a09699396746f231f4ec633a98b68d1ccf2d) Update Issue Templates ([#15](https://github.com/origami-games/imperius-return/pull/15))

-----
## [Source v0.0.0.8-pre (build 8)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.8-pre.zip)
### Changes
#### Gameplay
- Added lower shields
- Removed French support as it is hard to keep it up with frequent feature additions

#### Abilities
- Cooldowns are now per-ability
  - Coloured the boss bar display per-tier
  - Boss bar display to be changed as a result
- Added `Shield Bash`
  - You can flick the camera quickly upwards to 'smack' whatever entities are around you. This doesn’t deal much damage, but a tonne of knockback. Can only be activated if you have a shield (any type) in your offhand.
- Added audio-visuals to Energy Sucker Punch
  - 'Charge-up' sound (plays when timer starts)
  - Activation particles

#### Entities
- Reduced goblin health to `6` points (`3` hearts)
- Capped max experience orb entity count to `50`

#### Technical
- Renamed all artefact root folders
  - In resource pack - `/artefact/` to `/origami-games/artefact/`
  - In data pack - `artefact-<category>:` to `origami-games:artefact/<category>/`
- Re-written stuns system [`#12`](https://github.com/origami-games/imperius-return/issues/12)
  - Now modular [(see issue)](https://github.com/origami-games/imperius-return/issues/12)

-----

## [Source v0.0.0.7-pre (build 7)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.7-pre.zip)
### Bug Fixes
- [[#10]](https://github.com/origami-games/imperius-return/issues/10) Goblin summon button in command menu references wrong function
- [[#11]](https://github.com/origami-games/imperius-return/issues/11) Shields don't have lore applied when health is normal (10

### Changes
#### Gameplay
- Removed `CustomNameVisible` tags from entities (you now have to put your crosshair on an entity to see their name)
- Decreased magic shield rotation threshold to `50`

#### Textures
- Added a few textures
  - Lapis Block (temporary)
  - Iron Block
  - Tall Grass
- Re-textured and renamed smooth stone to a custom block; reinforced stone
- Grass path blocks now have a main texture of gravel
  - Gravel texture itself *to be* changed

#### Magic
- Improved submerge spell's effect
  - The effect no longer replaces blocks - it only replaces air now
  - Replaced `minecraft:ice` to be `minecraft:light_blue_stained_glass` as the ice melted
  - Added removal effects (particles and a glass breaking sound)
  - Entity summoned is now an area effect cloud instead of an armour stand

#### Abilities
- Added abilities 🎉
- Added a way to gain energy
  - Enabled experience orbs again - every experience orb taken equates to 1 energy level
  - Some abilities regenerate energy
- Slot selection system to be
- Select an ability slot and right-click to use
- Added `Rage`
  - Sneak and flick your head up quickly, then attack a mob to gain strength, speed and regeneration for 4 seconds.
- Added `Indomitable Stomp`
  - Launches you into the sky, only to be abruptly pulled back down to the floor with a thud, stunning nearby mobs.
  - Icon texture to be changed
- Added `Energy Sucker Punch`
  - The next enemy hit will receive +8 damage and you will receive 2x the damage dealt as energy, as long as the amount of damage dealt is no more than 50.
- Added `Rush`
  - When used, you get 4 seconds of speed. If you hit an enemy while they still have that effect, within those 4 seconds, the amplifier for the speed will increase by 1 tier and 1 extra second (caps at `Speed V`).

#### Entities
- Goblins now make adult zombie damage sounds
- Improved goblins' aesthetics
- Removed star system

#### Technical
- Performance improvements
- Added model `artefact:skin/skulls/template_skull_head`
- Specified what Artefact map this is in `pack.mcmeta`s
- You no longer activate your shield while sneaking and flying in creative/spectator mode
- Renamed `artefact-api:click_detection/[...]` to `artefact-api:action_detection/[...]`
- Reorganised the right-click detection system and its files (everything now roots from one file - `artefact-core:player/holding_item/carrot_on_a_stick`)
- Changed all `origami-games/Imperius-Return` to `origami-games/imperius-return`, for new link
- Dead slimes no longer load incorrectly at Y=`-512`, lag the game and spam the logs
- Added an NBT tag that identifies all shield types `artefact:{is_shield:1b}`
- Added resistance for when your scores are being reset so you don't die

### Other Commits
- [`d6bc169`](https://github.com/origami-games/imperius-return/commit/d6bc1692f1ead14909d633ddbad8faad99a6f042) Added 'Other Commits' to `CHANGELOG.md`
- [`fa5a0cc`](https://github.com/origami-games/imperius-return/commit/fa5a0ccd53cb494342510724b58b63aa6f3a2ec8) Organised `CHANGELOG.md`
- [`9def776`](https://github.com/origami-games/imperius-return/commit/9def776558f17797c7a09336e02d7161f61ed797) Minor edits and fixes

-----

## [Source v0.0.0.6-pre (build 6)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.6-pre.zip)
### Changes
#### Magic
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

### Other Commits
- [`7fd3156`](https://github.com/origami-games/imperius-return/commit/7fd31563e6815ac7c9c57cbd58b7e7145c08a785) Fixed headings to match wiki

-----

## [Source v0.0.0.5-pre (build 5)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.5-pre.zip)
### Bug Fixes
- [[#9]](https://github.com/origami-games/imperius-return/issues/9) Function `artefact-api:entities/spawn/radius/butterfly` does not exist

### Changes
#### Magic
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

-----

## [Source v0.0.0.4-pre (build 4)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.4-pre.zip)
### Bug Fixes
- [[#8]](https://github.com/origami-games/imperius-return/issues/8) Removing magic shield from offhand while still activating does not reset timer

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

### Other Commits
- [`1ca4100`](https://github.com/origami-games/imperius-return/commit/1ca4100a9e8b442ca5809e7d1a9bcad7272de726) Fixed repetition of `Bug Fixes` heading

-----

## [Source v0.0.0.3-pre (build 3)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.3-pre.zip)
### Bug Fixes
- [[#6]](https://github.com/origami-games/imperius-return/issues/6) Build check still runs feedback tellraw if a player hasn't ran the command
- [[#7]](https://github.com/origami-games/imperius-return/issues/7) Discharge spell's slow falling effect is inconsistent

### Changes
#### Gameplay
- Added magic shields' functionality `/function artefact-api:items/give/shield/magic`
  - While in offhand, look down, sneak and wait to activate
  - 5 second cooldown
  - 3 second charge-up
- Made lapis lazuli ore block animated [[#5]](https://github.com/origami-games/imperius-return/issues/5)

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

### Other Commits
- [`45142e2`](https://github.com/origami-games/imperius-return/commit/45142e23af78fc80e69088792af2bd80af4e998a) Added set categories to issue templates

-----

## [Source v0.0.0.2-pre (build 2)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.2-pre.zip)
### Bug Fixes
- [[#1]](https://github.com/origami-games/imperius-return/issues/1) Glass panes show missing texture icon
- [[#4]](https://github.com/origami-games/imperius-return/issues/4) Mana gets set to `0` on death even in creative mode

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

### Other Commits
- [`2ad94d8`](https://github.com/origami-games/imperius-return/commit/2ad94d800b36dd631156bac07e51d9f88a650f0a) [[#3](https://github.com/origami-games/imperius-return/issues/3)] Made feature request template clearer
- [`e76ac5a`](https://github.com/origami-games/imperius-return/commit/e76ac5af2e390cf679fd691178ea87d36c0f9381) Renamed `custom-issue.md` to `custom_issue.md`
- [`64b30c8`](https://github.com/origami-games/imperius-return/commit/64b30c8dc711eeb1fa6c1dce0122b86a61243c9b) [[#1](https://github.com/origami-games/imperius-return/issues/1)] Fixed glass panes not rendering in inventory

-----

## [Source v0.0.0.1-pre (build 1)](https://github.com/origami-games/imperius-return/archive/src-v0.0.0.1-pre.zip)
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

#### Magic
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

### Other Commits
- [`6112ea1`](https://github.com/origami-games/imperius-return/commit/6112ea1c7581e15eca2fa24fbad025c47a243a57) Modified summary
- [`31a45c5`](https://github.com/origami-games/imperius-return/commit/31a45c543bde2731632f3497bcd98eb571d2409c) Added custom-issue template
- [`bfe2adc`](https://github.com/origami-games/imperius-return/commit/bfe2adc19f4bdc852de39e76fcacf3e8eee9f0f3) Update issue templates
- [`04b4181`](https://github.com/origami-games/imperius-return/commit/04b418119d4ec5db678aed9fb22c916e3726b687) Modified summary
- [`3a76ba0`](https://github.com/origami-games/imperius-return/commit/3a76ba02a4d0f9a8872fe31baa895a05bb48a879) Create README.md
- [`87192d4`](https://github.com/origami-games/imperius-return/commit/87192d41c19b5ccf3e26d509d2d6cad982cc2ad4) Rename LICENSE to LICENSE.md
- [`f85534a`](https://github.com/origami-games/imperius-return/commit/f85534a2d67232b38b5c93c7a91512a2310d6b67) Initial commit

-----
