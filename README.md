# Godot-Sonic-Physics

![Godot Sonic Physics](https://i.imgur.com/2qPKkQt.png)

> For a more robust implementation, see: https://github.com/marmitoTH/GoSonic2D

## Update to Godot 4.1.1 compatibility

I tweaked a few things to make this import smoothly into Godot 4.1.1
* removed velocity variable declaration in player_physics.gd
* fixed size of block collision
* changed MaskSetter.gd collision mask getting/setting to use the new _value functions instead of _bit
* converted everything else including project.godot file to be "best-effort" compatible with Godot 4 from Godot 3 via Godot's built-in conversion process on project import

Thanks marmitoTH for the awesome work. Enjoy all.

## License

All sprites and audios are property of Sega, you can't use them for comercial purpose.

The scripts are made by me and are under the MIT No Attribution license, no credits needed, but very appreciated.
