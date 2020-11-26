# opensim ossl example scripts for OpenSim 0.9.2.0 Dev

OpenSimulator OSSL examples as they can be seen on the OpenSimulator wiki http://opensimulator.org/wiki/Category:OSSL_Functions

Version 0.129

The missing scripts from OpenSimulator wiki are already contained in the XML configuration files, but are commented out.

## Copy the directories into your opensim/bin directory.

assetconfig.py is a extern helper script to create XML files for OpenSimulator.

add 11 files

## TODO:
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
    osLoopSound	
    osLoopSoundMaster
    osLoopSoundSlave
    osPlaySound
    osPlaySoundSlave	
    osPreloadSound	
    osSetSoundRadius	
    osStopSound	
    osTriggerSound
    osTriggerSoundLimited 

Region / Parcel Environment
    osWindActiveModelPluginName	
    osReplaceParcelEnvironment
    osReplaceRegionEnvironment
    osResetEnvironment  

String Manipulation
    osRegexIsMatch

Misc
    osAngleBetween
    osIsNotValidNumber
```
