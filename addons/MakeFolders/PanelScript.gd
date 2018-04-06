tool
extends PanelContainer

var Info = true
var extraOptions = true
var bgImage = false

var Scenes = true
var Instances = true
var Textures = true
var Materials = true
var Sprites = true
var Scripts = true
var Sounds = true
var Music = true
var addons = true
var Extra1 = true

var MainFolder = "res://"
var CreateFolderName = "Assets"
var input1Name = "Scenes"
var input2Name = "Instances"
var input3Name = "Textures"
var input4Name = "Sprites"
var input5Name = "Scripts"
var input6Name = "Sounds"
var input7Name = "Music"
var input8Name = "Extra1"
var input9Name = "Extra2"
var input10Name = "Materials"

var dir = null

const CreateFolderNameReset = "Assets"
const input1NameReset = "Scenes"
const input2NameReset = "Instances"
const input3NameReset = "Textures"
const input4NameReset = "Sprites"
const input5NameReset = "Scripts"
const input6NameReset = "Sounds"
const input7NameReset = "Music"
const input8NameReset = "Extra1"
const input9NameReset = "Extra2"
const input10NameReset = "Materials"

func _enter_tree():
	
	var dir = Directory.new()
	dir.open("res://")
	dir.make_dir("Assets")
	
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Scenes").connect("pressed", self, "ScenesPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Instances").connect("pressed", self, "InstancesPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Textures").connect("pressed", self, "TexturesPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Materials").connect("pressed", self, "MaterialsPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Sprites").connect("pressed", self, "SpritesPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Scripts").connect("pressed", self, "ScriptsPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Sounds").connect("pressed", self, "SoundsPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Music").connect("pressed", self, "MusicPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/addons").connect("pressed", self, "addonsPressed")
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Extra1").connect("pressed", self, "Extra1Pressed")
	
	get_node("VBoxContainer/CommitVBox/ScrollContainer/HBoxContainer/hideInfoBTN").connect("pressed", self, "hideInfoBTNPressed")
	get_node("VBoxContainer/CommitVBox/ScrollContainer/HBoxContainer/hideOptionsBTN").connect("pressed", self, "hideOptionsBTNPressed")
	get_node("VBoxContainer/CommitVBox/selectAll").connect("pressed", self, "selectAllPressed")
	get_node("VBoxContainer/CommitVBox/deselect").connect("pressed", self, "deselectPressed")
	get_node("VBoxContainer/CommitVBox/resetNames").connect("pressed", self, "resetNamesPressed")
	get_node("VBoxContainer/CommitVBox/createFolders").connect("pressed", self, "createFoldersPressed")

func ScenesPressed():
	# false = off
	if Scenes == true:
		Scenes = false
	elif Scenes == false:
		Scenes = true
	

func InstancesPressed():
	# false = off
	if Instances == true:
		Instances = false
	elif Instances == false:
		Instances = true
	

func TexturesPressed():
	# false = off
	if Textures == true:
		Textures = false
	elif Textures == false:
		Textures = true
	

func MaterialsPressed():
	# false = off
	if Materials == true:
		Materials = false
	elif Materials == false:
		Materials = true
	

func SpritesPressed():
	# false = off
	if Sprites == true:
		Sprites = false
	elif Sprites == false:
		Sprites = true
	

func ScriptsPressed():
	# false = off
	if Scripts == true:
		Scripts = false
	elif Scripts == false:
		Scripts = true
	

func SoundsPressed():
	# false = off
	if Sounds == true:
		Sounds = false
	elif Sounds == false:
		Sounds = true
	

func MusicPressed():
	# false = off
	if Music == true:
		Music = false
	elif Music == false:
		Music = true
	

func addonsPressed():
	# false = off
	if addons == true:
		addons = false
	elif addons == false:
		addons = true
	

func Extra1Pressed():
	# false = off
	if Extra1 == true:
		Extra1 = false
	elif Extra1 == false:
		Extra1 = true
	

func hideInfoBTNPressed():
	if Info == true:
		Info = false
		get_node("VBoxContainer/HSeparator0").hide()
		get_node("VBoxContainer/folderName").hide()
	elif Info == false:
		Info = true
		get_node("VBoxContainer/HSeparator0").show()
		get_node("VBoxContainer/folderName").show()
		
	

func hideOptionsBTNPressed():
	if extraOptions == true:
		extraOptions = false
		get_node("VBoxContainer/CommitVBox/selectAll").hide()
		get_node("VBoxContainer/CommitVBox/deselect").hide()
		get_node("VBoxContainer/CommitVBox/resetNames").hide()
	elif extraOptions == false:
		extraOptions = true
		get_node("VBoxContainer/CommitVBox/selectAll").show()
		get_node("VBoxContainer/CommitVBox/deselect").show()
		get_node("VBoxContainer/CommitVBox/resetNames").show()
	

func selectAllPressed():
	
	Scenes = true
	Instances = true
	Textures = true
	Materials = true
	Sprites = true
	Scripts = true
	Sounds = true
	Music = true
	addons = true
	Extra1 = true
	
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Scenes").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Instances").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Textures").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Materials").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Sprites").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Scripts").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Sounds").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Music").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/addons").set_pressed(true)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Extra1").set_pressed(true)
		
	

func deselectPressed():
	
	Scenes = false
	Instances = false
	Textures = false
	Materials = false
	Sprites = false
	Scripts = false
	Sounds = false
	Music = false
	addons = false
	Extra1 = false
	
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Scenes").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Instances").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Textures").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Materials").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Sprites").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Scripts").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Sounds").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Music").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/addons").set_pressed(false)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/CheckVBox/Extra1").set_pressed(false)
		
	

func resetNamesPressed():
	
	input1Name = input1NameReset
	input2Name = input2NameReset
	input3Name = input3NameReset
	input4Name = input4NameReset
	input5Name = input5NameReset
	input6Name = input6NameReset
	input7Name = input7NameReset
	input8Name = input8NameReset
	input9Name = input9NameReset
	input10Name = input10NameReset
	CreateFolderName = CreateFolderNameReset
	
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line1").set_text(input1NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line2").set_text(input2NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line3").set_text(input3NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line4").set_text(input4NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line5").set_text(input5NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line6").set_text(input6NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line7").set_text(input7NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line8").set_text(input8NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line9").set_text(input9NameReset)
	get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line10").set_text(input10NameReset)
	get_node("VBoxContainer/folderName").set_text(CreateFolderNameReset)
		
	

func createFoldersPressed():
	
	CreateFolderName = get_node("VBoxContainer/folderName").get_text()
	
	var dir = Directory.new()
	dir.open("res://")
	dir.make_dir(str(CreateFolderName))
	
	input1Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line1").get_text()
	input2Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line2").get_text()
	input3Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line3").get_text()
	input4Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line4").get_text()
	input5Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line5").get_text()
	input6Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line6").get_text()
	input7Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line7").get_text()
	input8Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line8").get_text()
	input9Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line9").get_text()
	input10Name = get_node("VBoxContainer/OptionsVBox/ScrollContainer/VBoxContainer/HBoxContainer/InputVBox/Line10").get_text()
	
#	print(ScenesNode.get(text))
	
	if Scenes == true:
		print(str("mkdir: ", input1Name)) # , " ", bool(Scenes)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input1Name)
	if Instances == true:
		print(str("mkdir: ", input2Name)) # , " ", bool(Instances)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input2Name)
	if Textures == true:
		print(str("mkdir: ", input3Name)) # , " ", bool(Textures)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input3Name)
	if Materials == true:
		print(str("mkdir: ", input10Name)) # , " ", bool(Extra1)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input10Name)
	if Sprites == true:
		print(str("mkdir: ", input4Name)) # , " ", bool(Sprites)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input4Name)
	if Scripts == true:
		print(str("mkdir: ", input5Name)) # , " ", bool(Scripts)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input5Name)
	if Sounds == true:
		print(str("mkdir: ", input6Name)) # , " ", bool(Sounds)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input6Name)
	if Music == true:
		print(str("mkdir: ", input7Name)) # , " ", bool(Music)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input7Name)
	if addons == true:
		print(str("mkdir: ", input8Name)) # , " ", bool(addons)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input8Name)
	if Extra1 == true:
		print(str("mkdir: ", input9Name)) # , " ", bool(Extra1)
		dir.open(str("res://", CreateFolderName))
		dir.make_dir(input9Name)
	








