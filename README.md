# RT-mesh_screenshoter

## Use case

Do you have a lot of meshes that you'd like to take lots of screenshots for some reason?
These reasons can include:
- Inventory Icons for 3D items
- Title cards using a 3D Text Mesh
and probably more...

Then this tool is what you need.

## How to use

- Create a 3D Scene
- Add RTScreenshotter to that scene(it inherits from SubViewport)
- Set the save directory for this. By default, it is `res://addons/RT-mesh_screenshotter`
- Set Clear Mode and Update Mode to Always on the RTScreenshotter
- Set the size for the RTScreenshotter. This will be the size of the screenshot taken
- Add a Camera to your scene as a child of your viewport. This is the camera that will take screenshots
- Add a Node3D containing all your mesh stuff, any additional lights etc.
- Add this Node as a key in the RTScreenshotter Node Vis To Save Name Dict. The value is the name of the output file
- Once you click screenshot RTScreenshotter will do the following:
	- Set visibility of all keys in that dict to false.
	- Go through each one at a time, making them visible, screenshotting and then making them invisible
	- And then saves the screenshot to the file in your save dir.

## Tips
- Because visibility is inherited from the node that is your key, you can use additional nodes like Lights and Particle effects
- Because visibility is only changed for keys, you can add nodes which are not keys for common effects on all such as Directional Lights or a background image

## License

MIT License
