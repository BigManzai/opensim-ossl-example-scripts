# opensim ossl example scripts for OpenSim 0.9.2.0 Dev

OpenSimulator OSSL examples as they can be seen on the OpenSimulator wiki http://opensimulator.org/wiki/Category:OSSL_Functions

Version 0.130

The missing scripts from OpenSimulator wiki are already contained in the XML configuration files, but are commented out.

## Copy the directories into your opensim/bin directory.

assetconfig.py is a extern helper script to create XML files for OpenSimulator.

## Offline
    You can easily view and change the examples offline with your text editor.

## Inworld
    Open your OpenSim Viewer / Client.
    OpenSim Library - Scripts Library at the bottom of your inventory.
    Right click and copy Examples to your Scripts directory.
    Now you can work normally with the examples.

## TODO missing scripts:
```javascript
NPCs
    osNpcGetPos	
    osNpcGetRot	
    osNpcGetOwner
    osNpcMoveTo
    osNpcMoveToTarget
    osNpcPlayAnimation
    osNpcSaveAppearance
    osNpcSay	
    osNpcSayTo
    osNpcSetRot	
    osNpcShout	
    osNpcSit	
    osNpcStand	
    osNpcStopMoveToTarget	
    osNpcStopAnimation	
    osNpcTouch
    osNpcWhisper 

Prim
    osClearObjectAnimations
    osDie
    osForceBreakAllLinks	
    osForceBreakLink
    osForceCreateLink
    osGetInventoryName
    osGetPrimitiveParams
    osGetRezzingObject
    osListenRegex
    osSetInertia

Prim Drawing / Dynamic Texture
    osDrawResetTransform	
    osDrawRotationTransform	
    osDrawScaleTransform
    osDrawTranslationTransform 

Sound
    osCollisionSound	
    osLoopSoundMaster
    osLoopSoundSlave
    osPlaySound
    osPlaySoundSlave	
    osPreloadSound	
    osSetSoundRadius	
    osTriggerSound
    osTriggerSoundLimited 

Region / Parcel Environment
    osReplaceParcelEnvironment
    osReplaceRegionEnvironment
    osResetEnvironment  
```
