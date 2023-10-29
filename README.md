# Godot4.x2DTemplate

Godot 4.x template for 2D games.

## Common Links

<https://github.com/paul-mcnamee/SurvivorCircles>
<https://docs.godotengine.org/en/4.1/index.html>

shaders
<https://godotshaders.com/shader/?orderby=likes>

## Attributions

### Assets

Kenney.nl - extremely nice complete assets, highly recommend using their assets and donating to kenney.

### Included Addons

Initial Templates were used from [crystal-bit](https://github.com/crystal-bit/godot-game-template/tree/main) and [bitbrain](https://github.com/bitbrain/godot-gamejam). These templates were HEAVILY modified and in most cases all of the code was removed or refactored. __I strongly recommend against using these templates__ as I think they actually made me waste a lot of time instead of saving it.

#### 2d_essentials

[2d essentials](https://github.com/godotessentials/2d-essentials/tree/main)

1. achievements was the main thing I wanted to use from this.
   1. 2d_essentials/autoload/achievements
2. I also saw it had dotenv for godot which might be useful.
   1. autoload/dotenv/godotenv.gd
3. the helpers seemed decent and pretty random, some decent vector utils
   1. 2d_essentials/autoload/helpers.gd
4. The health component also seemed decent.
   1. 2d_essentials/survivability/health_component.gd

#### beehave

1. [beehave](https://github.com/bitbrain/beehave)
   1. to be used if we ever implement farming or anything complicated that needs behavior trees for some rudimentary "ai"

#### BurstParticles2D

1. [BurstParticles2D](https://github.com/uzkbwza/BurstParticles2D/tree/master)
   1. should be used for particles and explosions, adds a lot of cool effects

#### debug_menu

1. [debug_menu](https://github.com/godot-extended-libraries/godot-debug-menu)
   1. press f3 while the game is running

#### dialogue_manager

1. [dialogue_manager](https://github.com/nathanhoad/godot_dialogue_manager)
   1. This seems pretty adequate and simple to use
   2. There is a balloon scene that is meant to be added to another scene to test. You can add it in project -> tools -> make copy of balloon

#### ggs

1. [ggs](https://github.com/PunchablePlushie/godot-game-settings)
   1. Seems fairly complete save system that seems adaptable and handles a lot of the common settings out of the box

#### ggt-core

1. [Godot game template](https://github.com/crystal-bit/godot-game-template)
   1. This was from the included crystal bit template, a lot of of it is possibly duplicated or unnecessary

#### ggt-debug-shortcuts

1. [Godot game template](https://github.com/crystal-bit/godot-game-template)
   1. includes keyboard shortcuts for debugging, added with the crystal bit template

#### godot-box2d

1. [box2d](https://github.com/appsinacup/godot-box2d)
   1. supposedly just a drop in replacement, the setting was changed to make the 2d physics use this in the project.

#### godot_gameplay_systems

1. [godot_gameplay_systems](https://github.com/OctoD/godot-gameplay-systems)
   1. very robust and complex. abilities, inventory, items, and also a camera shake
   2. examples were fairly underwhelming and pretty bad, but there were some implementations of the inventory that might be decent
      1. <https://github.com/search?q=repo%3AOctoD%2Fgodot-gameplay-systems+path%3A%2F%5Eexamples%5C%2F%2F+inventory&type=code>
   3. see readme for more info <https://github.com/OctoD/godot-gameplay-systems/blob/main/docs/readme.md>

#### gut

1. [gut](https://github.com/bitwes/Gut)
    1. unit tests

#### logger

1. [logger](https://github.com/DawnGroveStudios/GodotLogger/tree/main)
    1. GodotLogger.debug(msg,data)
    2. GodotLogger.info(msg,data)
    3. GodotLogger.warn(msg,data)
    4. GodotLogger.error(msg,data)
    5. GodotLogger.fatal(msg,data)

#### phantom_camera

1. [phantom_camera](https://github.com/ramokz/phantom-camera)
    1. <https://github.com/ramokz/phantom-camera/wiki/Properties:-Follow-(2D-&-3D)>

#### sound_manager

1. [sound_manager](https://github.com/nathanhoad/godot_sound_manager)
    1. singleton for sounds

#### tile_bit_tools

1. [tile_bit_tools](https://github.com/dandeliondino/tile_bit_tools/)
    1. very useful for adding terrains and using tilemaps, adds default templates and makes them a lot more useful in general

#### uuid

1. [uuid](https://github.com/binogure-studio/godot-uuid/tree/master)
   1. unique identifier system useful for keeping track or referencing objects across scenes
