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
2. <https://github.com/OctoD/godot-gameplay-systems/tree/main>
3. <https://github.com/DawnGroveStudios/GodotLogger/tree/main>
4. <https://github.com/uzkbwza/BurstParticles2D/tree/master>
5. <https://github.com/ramokz/phantom-camera>
6. <https://github.com/nathanhoad/godot_sound_manager>
7. <https://github.com/nathanhoad/godot_dialogue_manager>
8. <https://github.com/appsinacup/godot-box2d>
9. <https://github.com/coppolaemilio/dialogic>
   - this one seems complex and might remove it but need to look at godot_dialogue_manager if it can handle my needs.
10. <https://github.com/godot-extended-libraries/godot-debug-menu>

These are the addons that I have not evaluated fully, which I will probably need to add to the game when the time comes to make some terrain and generate a world
<https://github.com/Drejzer/FloorArchitect/tree/master>
<https://github.com/edwin-cox/godot-infinite-worldmap>

There are some console errors and I still need to look through all of the addons to configure them and do an initial setup, but so far I am happy with the list that I curated, and think that it should save me a lot of work if they actually do what they are supposed to do.

I want to add this addon, but there were some files that were conflicting so I will need to manually merge them in order to continue:
<https://github.com/PunchablePlushie/godot-game-settings/wiki/Getting-Started>

#### Todo's for next time

1. Look at the features to see if it is necessary, and then resolve any conflicts for this addon:
   1. <https://github.com/PunchablePlushie/godot-game-settings>
