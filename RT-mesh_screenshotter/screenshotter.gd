@tool
class_name RTScreenshotter
extends SubViewport

@export var save_dir: String = "res://addons/RT-mesh_screenshotter"
@export var nodeVisToSaveNameDict: Dictionary[Node, String]
@export_tool_button("Screenshot", "Camera") var tool_b = screenshot;

func screenshot() -> void:
	for nodeToScreenshot in nodeVisToSaveNameDict.keys():
		nodeToScreenshot.visible = false;
		
	for nodeToScreenshot in nodeVisToSaveNameDict.keys():
		nodeToScreenshot.visible = true
		var save_name2 = nodeVisToSaveNameDict.get(nodeToScreenshot, "test");
		for i in range(10):
			await get_tree().process_frame
		self.get_texture().get_image().save_png(save_dir+"/"+save_name2+".png")
		nodeToScreenshot.visible = false
