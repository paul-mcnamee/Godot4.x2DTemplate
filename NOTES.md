# Notes

I will try to update the notes of the development sessions as I go so I can hopefully have a history of what I did and maybe I will learn from it or maybe it will just be cathartic to brain dump everything into one place for this game...

## Todo List

1. look into the game global stuff from ggt, had multithreaded loading which seems useful
2. set up some kenney tile assets with the tile addon
   1. should probably put this stuff in an examples folder so it is easy to delete for later projects
3. unit tests
   1. test early and test often.
   2. honestly think this might be less of a factor for godot since the individual scenes are run so easily so manual testing might be quicker and easier but I still think it is good to go through the practice of writing tests, I find a lot of bugs when I think through all of the scenarios and type out all of the tests.
4. save game manager
   1. still not sure if the godot game settings addon is good or not
   2. good to setup framework for this now so that when pieces are added to the game it can be added to the save state one at a time
      1. ideally it could just be a node made with composition that can save itself, not sure how this would work for like inventory or what not, item looks for an inventory signal and then saves it idk
   3. I bet you can probably just JSON.stringify whole nodes... have to look if there are godot docs about serialization
      1. apparently binary serialization is the way to go here, it is better all around but less human readable for debugging
      2. binary serialization <https://docs.godotengine.org/en/stable/tutorials/io/binary_serialization_api.html#doc-binary-serialization-api>
         1. some fields are not serialized with this method as mentioned at the bottom of this page: <https://docs.godotengine.org/en/stable/tutorials/io/saving_games.html>
      3. example project: <https://github.com/godotengine/godot-demo-projects/tree/master/loading/serialization>
         1. this also seemed like a decent approach: <https://www.gotut.net/save-and-load-system-for-godot-4/>
   4. for game configs like sound settings, resolution, etc. use the config files
      1. <https://docs.godotengine.org/en/stable/classes/class_configfile.html#class-configfile>
5. player
   1. inventory - C:\Projects\Games\Unity\HerpFarmer\Assets\Scripts\Game\Item\Inventory.cs
      1. inventory items
         1. dict w/ hash of item + quantity
      2. inventory summary - probably implemented in the UI
         1. loop through items
            1. sort by weight, type, value
   2. equipment - C:\Projects\Games\Unity\HerpFarmer\Assets\Scripts\Game\Item\Equipment\Equipment.cs
      1. godot groups would probably be useful for some of this
         1. namely artifacts, charms, etc. when applying stat effects it would be simpler if they were just in groups
         2. alternatively you could recalculate stats when a single item is (un)equipped.
   3. health (somewhat done but needs adapted to stats once those are added)
   4. stats - C:\Projects\Games\Unity\HerpFarmer\Assets\Scripts\Game\Stat\Stat.cs
      1. stats will be on equipment so the calculations need to include any equipped items
      2. str
         1. health
         2. attack power
         3. block chance?
      3. int
         1. mana
         2. spell power
         3. crit chance?
      4. dex
         1. attack speed
         2. move speed
         3. dodge?
6. enemies
7. items
8. npc
9. vendor
10. quest giver
11. quests
    1. C:\Projects\Games\Unity\creator kit rpg\Assets\Creator Kit - RPG\Scripts\Gameplay\Quest.cs
12. world
    1. outside
    2. villages
    3. dungeons

## Development Notes

### 10/23/2023

1. Look into hitbox and hurtbox in the godot 4 tutorial for the shooter_tutorial game. Added primitives for the hit and hurt boxes and added a player node. -- This is the tutorial that was originally followed for the layers which were added: <https://github.com/clear-code-projects/UltimateGodotIntro2D>
   1. I think having separate boxes apart from the player collision is good for adjusting them if needed in the future. Should look at the gdquest implementation or something similar if there is something already done. Did not see many results on github for searching for hitbox and gdscript though.
   2. started implementing a basic and hopefully adaptable solution where the hitbox and hurtbox nodes can be added to each component. Since we're not using sprites it should be easier to implement than some of the other pixel art solutions which require specific hitboxes at each frame in the animation or whatever.
      1. hurtbox
         1. area entered and intruder area owner is a hitbox
            2. find if there is a calculate damage method
            3. call the calculate damage method and pass the owner of the hurtbox
      2. hitbox
         1. get the damage component from the owner onload
         2. damage call happens in hurtbox so not much to do here other than the collision, maybe just emit a signal
      3. damage
         1. basically just a float value for now
      4. armor
         1. basically just a float value for now

### 10/12/2023

1. continue working on the notifications ui
   1. changed the toasts container to be a scroll container
   2. changed the structure of the containers so they are on top for the notifications ui
   3. made container structure for notifications more flat so the size could be changed
   4. made toasts ui buttons work for dismissing notifications and for hiding and showing the ui
      1. definitely need better assets, the kenney ones are pretty small
   5. currently I think it is good enough, animations are necessary for it to look really good but I don't really think I should be spending time on that since I might not even use it.
2. cleaned up some more unused files from the templates
3. re-organized the scenes folder to move ui stuff into the ui folder for boot, menu, settings, and transitions

### 10/10/2023

1. continue working on the notifications ui
   1. started working through the different types of notifications
   2. added base notification ui
   3. added toast notification ui
      1. still needs a lot of work

### 10/9/2023

1. <https://github.com/rares45/godot-toasts/tree/main>
   1. more time wasted, this doesn't work for godot 4 and also it's setting a bunch of hard coded properties that would be hard to actually adapt and use in more ways than just whatever is there already.
2. add to the main ui, should be on the topmost visible layer at the time of the notification maybe? or maybe simpler approach would just be to specify which ui element you want to add it to.
   1. timer to delay the start
   2. timer to delay the duration of the timer
   3. different ease animations can be achieved with tweens
   4. tween.chain for multiple notifications in a row
3. should have a queue of toasts
    1. play the toasts from the queue when one gets put into it until it is empty
    2. simple as that

### 10/8/2023

1. event/message bus
   1. <https://www.youtube.com/watch?v=vbw1ncvSUYg>, <https://www.youtube.com/watch?v=S6PbC4Vqim4>
   2. this is similar to the globals autoload in some ways but it would be nice to handle all of the signals in one place
      1. I think it is probably better to keep this stuff separate by function and just use globals if there is something that is absolutely necessary to be used by everything like the player or something.
2. review herp farmer, RTSTDBR, and other games which might have inventory and look for stuff to port over to godot
3. planned a bit more and added the basics to the todos list to see what else could be added to be shared for the godot 4 template. Everything to this point apart from this readme has been decent to use in most 2d games.

### 10/7/2023

1. The UI needs to be done in the manner that the shooter tutorial had with a UI scene added as an autoload singleton, that was a good method.
      1. Some of the stuff in the ggt-core transitions is possibly pretty decent, at least it seemed like it at a glance.
      2. It would be cool to have the loading scene if some of the load times are long for scenes and then it could have some tips or something, preferably a little minigame that you can play while loading like the chrome offline dino game, and then keep the high score of the loading mini game. yeah that would be sick.
      3. might be useful to make the distinction if the UI is overlayed and keep a separate stack for the menu ui and the game ui
2. menu manager
   1. keep a stack of the menus that are loaded
   2. back functionality
   3. some similar stuff might be in the GGT autoload for scenes but it also might be garbage
3. added a health bar component and adapted the 2d_essentials health component.
   1. only needed some minor changes, changed health to float, added a max health signal and the ability to change it

### 10/5/2023

1. reviewed every addon and removed the redundant or unnecessary components for this game from being autoloaded.
2. Look at the features to see if it is necessary, and then resolve any conflicts for this addon:
   1. <https://github.com/PunchablePlushie/godot-game-settings>
3. look through the default features from the bitbrain template and the crystal bit one
   1. there are likely some overlap here, I think there might be some overlap for how stuff is saved and possibly how the audio is being managed.
      1. there was overlap and also a lot of garbage... typical godot template and addon code, half baked and barely works if at all
   2. the godot game settings addon also added the game_settings folder to the root dir, there is definitely some overlap here
      1. SaveGame.gd seems like it is overly complicated and actually bad so idk -- this is from the bitbrain template.
         1. seemed like it was just saving a few properties like rotation, position, color, etc. I think this is probably not great
      2. I think there are other options for saving game items, seems like the GGS stuff is a bit better but it uses resources which can allow arbitrary code execution if not used properly, not sure if that was fixed in godot 4 or not though.
      3. the godot game template has some singletons which seem ok, I ran into issues when attempting to load the dialogue manager though because they checked if a scene had a generic "start" method name which is fairly common so it sort of made me doubt if the rest of the stuff is decent or not, need to look into the ggt-core autoloads

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
