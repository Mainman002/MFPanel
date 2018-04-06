tool
extends EditorPlugin

var MakeFolders # A class member to hold the dock during the plugin lifecycle

var Scenes = true

func _enter_tree():
    # Initialization of the plugin goes here
    # First load the dock scene and instance it:
    MakeFolders = preload("res://addons/MakeFolders/MakeFolders.tscn").instance()

    #get_tree().is_editor_hint() 

    # Add the loaded scene to the docks:
    add_control_to_dock(DOCK_SLOT_LEFT_UL, MakeFolders)
    # Note that LEFT_UL means the left of the editor, upper-left dock

    #add_custom_type("Button", "Button", preload("button.gd"), preload("icon.png"))
    #$VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/Scenes.connect("pressed", self, "ScenesPressed")


func ScenesPressed():
	# false = off
	#$VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/Instances.disabled = Scenes
	if Scenes == true:
		Scenes = false
	elif Scenes == false:
		Scenes = true


func _exit_tree():
    # Clean-up of the plugin goes here
    # Remove the scene from the docks:
    remove_control_from_docks(MakeFolders) # Remove the dock
    MakeFolders.free() # Erase the control from the memory
