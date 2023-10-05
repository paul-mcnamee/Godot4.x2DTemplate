# SurvivorCircles

2d vampire survivor inspired game.

## Common Links

<https://github.com/paul-mcnamee/SurvivorCircles>
<https://docs.godotengine.org/en/4.1/index.html>

shaders
<https://godotshaders.com/shader/?orderby=likes>

## Attributions

### Assets

Kenney.nl - VERY nice assets, thank you

### Addons

## Development Notes

I will try to update the notes of the development sessions as I go so I can hopefully have a history of what I did and maybe I will learn from it or maybe it will just be cathartic to brain dump everything into one place for this game...

### 10/5/2023

1. reviewed every addon and removed the redundant or unnecessary components for this game from being autoloaded.
2. Look at the features to see if it is necessary, and then resolve any conflicts for this addon:
   1. <https://github.com/PunchablePlushie/godot-game-settings>
3.

#### Todo's for next time

1. look through the default features from the bitbrain template and the crystal bit one
   1. there are likely some overlap here, I think there might be some overlap for how stuff is saved and possibly how the audio is being managed.
   2. the godot game settings addon also added the game_settings folder to the root dir, there is definitely some overlap here
2. start adding stuff to the game
   1. player
      1. inventory
      2. equipment
      3. health
   2. enemies
   3. loot
   4.

### 10/4/2023

My goal for the day was to get all of the addons that I have been looking through and sift out the ones that seem decent for a 2d project.

1. Templates are annoying to find a good one, there are a lot of bad ones out there, I combined 2 for this project to hopefully save some time and not reinvent the wheel.
2. Addons are also a sea of garbage so hopefully some of the ones I found would help with this project and save time
3. Apparently the example projects are mostly all just for youtube videos and no one is actually trying to write permanent code it seems.

I started with the bitbrain template here:
<https://github.com/bitbrain/godot-gamejam>

Then I added the crystal-bit template here
<https://github.com/crystal-bit/godot-game-template/tree/main>

I added a bunch of addons to a list in github that seemed good for godot 4
<https://github.com/stars/paul-mcnamee/lists/godot-4-tools?page=1>

I think these are all of the addons that I initially added, they all seemed generally good for 2d games.

1. <https://github.com/godotessentials/2d-essentials/tree/main>
   1. achievements was the main thing I wanted to use from this.
      - 2d_essentials/autoload/achievements
   2. I also saw it had dotenv for godot which might be useful.
      - autoload/dotenv/godotenv.gd
   3. the helpers seemed decent and pretty random, some decent vector utils
      - 2d_essentials/autoload/helpers.gd
   4. The health component also seemed decent.
      - 2d_essentials/survivability/health_component.gd
2. <https://github.com/bitbrain/beehave>
   1. to be used if we ever implement farming or anything complicated that needs behavior trees for bots
3. <https://github.com/uzkbwza/BurstParticles2D/tree/master>
   1. should be used for particles and explosions, adds a lot of cool effects
4. <https://github.com/godot-extended-libraries/godot-debug-menu>
   1. press f3 while the game is running
5. <https://github.com/coppolaemilio/dialogic>
   - this one seems complex and might remove it but need to look at godot_dialogue_manager if it can handle my needs.
6. <https://github.com/nathanhoad/godot_dialogue_manager>
   1. This seems pretty adequate and simple to use
   2. There is a balloon scene that is meant to be added to another scene to test. You can add it in project -> tools -> make copy of balloon
7. <https://github.com/appsinacup/godot-box2d>
   1. supposedly just a drop in replacement, the setting was changed to make the 2d physics use this in the project.
8. <https://github.com/OctoD/godot-gameplay-systems>
   1. very robust and complex. abilities, inventory, items, and also a camera shake
   2. examples were fairly underwhelming and pretty bad, but there were some implementations of the inventory that might be decent
      1. <https://github.com/search?q=repo%3AOctoD%2Fgodot-gameplay-systems+path%3A%2F%5Eexamples%5C%2F%2F+inventory&type=code>
   3. see readme for more info <https://github.com/OctoD/godot-gameplay-systems/blob/main/docs/readme.md>
9. <https://github.com/bitwes/Gut>
    1. unit tests
10. <https://github.com/DawnGroveStudios/GodotLogger/tree/main>
    1. GodotLogger.debug(msg,data)
    2. GodotLogger.info(msg,data)
    3. GodotLogger.warn(msg,data)
    4. GodotLogger.error(msg,data)
    5. GodotLogger.fatal(msg,data)
11. <https://github.com/ramokz/phantom-camera>
    1. <https://github.com/ramokz/phantom-camera/wiki/Properties:-Follow-(2D-&-3D)>
12. <https://github.com/nathanhoad/godot_sound_manager>
    1. singleton for sounds
13. <https://github.com/dandeliondino/tile_bit_tools/>
    1. very useful for adding terrains and using tilemaps, adds default templates and makes them a lot more useful in general

These are the addons that I have not evaluated fully, which I will probably need to add to the game when the time comes to make some terrain and generate a world
<https://github.com/Drejzer/FloorArchitect/tree/master>
<https://github.com/edwin-cox/godot-infinite-worldmap>

There are some console errors and I still need to look through all of the addons to configure them and do an initial setup, but so far I am happy with the list that I curated, and think that it should save me a lot of work if they actually do what they are supposed to do.

I want to add this addon, but there were some files that were conflicting so I will need to manually merge them in order to continue:
<https://github.com/PunchablePlushie/godot-game-settings/wiki/Getting-Started>

#### Todo's for next time

1. Look at the features to see if it is necessary, and then resolve any conflicts for this addon:
   1. <https://github.com/PunchablePlushie/godot-game-settings>
