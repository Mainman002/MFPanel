# MFPanel [Godot3 version] (Make_Folders_Panel)
Is a Godot3+ Panel Addon designed to speed up folder creation in new projects.

A Quick Preview of what the MFPanel looks like ->

https://github.com/Mainman002/MFPanel/blob/master/MFPanelPreview.png

[ Go back to Master Branch ] -> https://github.com/Mainman002/MFPanel/tree/master

Instructions

Make a folder called " addons " in your project Folder right next to your icon.png and project.godot files

now copy my " MakePanel " folder into your " addons " folder, next we'll mess around in Godot's editor to start it

in the top left corner of the Godot3 editor panel left click " Project -> Project Settings " a new window should have appeard. Now left click " Plugins " and you should see my " MFPanel " addon. To the right is where it controls if it's " Active " or " Inactive " toggle it to Active and a new panel should appear in the Top Left of the godot editor. you might need to stretch a few panels around before you can see it.

How to use it is fairly strait forward, from top -> down the left side has Text Input to chose what names of folders to create, the right side allows you to toggle which folders to create. bellow these we have a few buttons that control a few things. 

[ Info ] toggles the visibility of the Title info text making the menu less cluttered

[ Options ] toggles the visibility of [ Select All ] [ Deselect All ] and [ Reset Names ] making the menu even more compact!

[ Select All ] toggles everything to True, which means when you press [ Create Folders ] it will add all of the folders to your Assets Directory

[ Deselect All ] toggles exerything to False, meaning nothing will be created when clicking [ Create Folder ]

[ Reset Names ] sets all Input Text to Default Values

[ BG ] toggles the visibility of panel's background tile-able texture

[ Assets ] text edit node which lets you select a folder directory to add the selected folders. !! Be careful, setting this for adding 2 or more new folders will just switch to adding them to your " res:// " directory !! ( just a little bug I need to work out later )

oh yeah you can even modify the backgroung texture located in " addons/MakeFolders/Sprites/bg.png " for some tile-able panel fun xD

!! one thing to note is once folders are created, godot wont be able to see them until you click outside of the Godot editor (like on your PC desktop) and then click on the Godot editor window again. . . for some reason godot doesn't auto update the directory list (yet) !!

well I think that concludes my overview and instructions for FMPanel, I hope it helps you, and maybe makes life a little easier.

Thank you for your interest, and good luck on your projects / games!
