#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#############################################
# Python 3.8.5
# Asset Config Creator for OpenSimulator 


folderlist = ['Avatars','NPCs','Prim','Texture','Notecard','Sound','ScriptHTTP','Parcel','Terrain','Environment','Information','Administration','Script','StringManipulation','Misc']

Avatars = '30000112-001f-0000-0001-000100bba000'
Avatarslist = ['osAddAgentToGroup','osAgentSaveAppearance','osAvatarName2Key','osAvatarPlayAnimation','osAvatarStopAnimation','osCauseDamage','osCauseHealing','osDetectedCountry','osDropAttachment','osDropAttachmentAt','osEjectFromGroup','osForceAttachToAvatar','osForceAttachToAvatarFromInventory','osForceAttachToOtherAvatarFromInventory',
            'osForceDetachFromAvatar','osForceDropAttachment','osForceDropAttachmentAt','osForceOtherSit','osGetAgentIP','osGetAgents','osGetAgentCountry','osGetAvatarHomeURI','osGetAvatarList','osGetGender','osGetHealRate','osGetHealth','osGetNumberOfAttachments','osGrantScriptPermissions','osInviteToGroup','osKickAvatar','osOwnerSaveAppearance','osRevokeScriptPermissions','osSetHealRate','osSetHealth','osSetOwnerSpeed','osSetSpeed','osLocalTeleportAgent','osTeleportAgent','osTeleportOwner','osReplaceAgentEnvironment']

NPCs = '30000112-001f-0000-0002-000100bba000'
NPCslist = ['osIsNpc','osNpcCreate','osGetNpcList','osNpcGetPos','osNpcGetRot','osNpcGetOwner','osNpcLoadAppearance','osNpcMoveTo','osNpcMoveToTarget','osNpcPlayAnimation','osNpcRemove','osNpcSaveAppearance','osNpcSay','osNpcSayTo','osNpcSetProfileAbout','osNpcSetProfileImage','osNpcSetRot','osNpcShout','osNpcSit','osNpcStand','osNpcStopMoveToTarget','osNpcStopAnimation','osNpcTouch','osNpcWhisper']

Prim = '30000112-001f-0000-0003-000100bba000'
Primlist = ['osClearInertia','osClearObjectAnimations','osDie','osForceBreakAllLinks','osForceBreakLink','osForceCreateLink','osGetInertiaData','osGetInventoryItemKey','osGetInventoryName','osGetInventoryDesc','osGetInventoryLastOwner','osGetLastChangedEventKey','osGetLinkNumber','osGetLinkPrimitiveParams','osGetPrimitiveParams','osGetRezzingObject','osGetSitActiveRange','osGetLinkSitActiveRange','osGetStandTarget',
            'osGetLinkStandTarget','osListenRegex','osMessageAttachments','osMessageObject','osSetInertia','osSetInertiaAsBox','osSetInertiaAsCylinder','osSetInertiaAsSphere','osSetPrimitiveParams','osSetProjectionParams','osSetSitActiveRange','osSetLinkSitActiveRange','osSetStandTarget','osSetLinkStandTarget','osTeleportObject','osVolumeDetect']

Texture  = '30000112-001f-0000-0004-000100bba000'
Texturelist = ['osDrawEllipse','osDrawFilledEllipse','osDrawFilledPolygon','osDrawFilledRectangle','osDrawImage','osDrawLine','osDrawPolygon','osDrawRectangle','osDrawResetTransform','osDrawRotationTransform','osDrawScaleTransform','osDrawText','osDrawTranslationTransform','osGetDrawStringSize','osMovePen','osSetFontName','osSetFontSize','osSetPenCap','osSetPenColor','osSetPenSize','osSetDynamicTextureData','osSetDynamicTextureDataFace','osSetDynamicTextureDataBlend','osSetDynamicTextureDataBlendFace','osSetDynamicTextureURL','osSetDynamicTextureURLBlend','osSetDynamicTextureURLBlendFace']

Notecard = '30000112-001f-0000-0005-000100bba000'
Notecardlist = ['osGetNotecard','osGetNotecardLine','osGetNumberOfNotecardLines','osMakeNotecard']

Sound = '30000112-001f-0000-0006-000100bba000'
Soundlist = ['osAdjustSoundVolume','osCollisionSound','osLoopSound','osLoopSoundMaster','osLoopSoundSlave','osPlaySound','osPlaySoundSlave','osPreloadSound','osSetSoundRadius','osStopSound','osTriggerSound','osTriggerSoundLimited']

ScriptHTTP = '30000112-001f-0000-0007-000100bba000'
ScriptHTTPlist = ['osRequestSecureURL','osRequestURL','osSetContentType']

Parcel = '30000112-001f-0000-0008-000100bba000'
Parcellist = ['osParcelJoin','osParcelSubdivide','osGetParcelDwell','osSetParcelDetails']

Terrain = '30000112-001f-0000-0009-000100bba000'
Terrainlist = ['osGetTerrainHeight','osSetTerrainHeight','osSetTerrainTexture','osSetTerrainTextureHeight','osTerrainFlush']

Environment = '30000112-001f-0000-0010-000100bba000'
Environmentlist = ['osGetCurrentSunHour','osGetApparentTime','osGetApparentTimeString','osGetApparentRegionTime','osGetApparentRegionTimeString','osGetWindParam','osSetRegionWaterHeight','osSetWindParam','osWindActiveModelPluginName','osReplaceParcelEnvironment','osReplaceRegionEnvironment','osResetEnvironment']

Information = '30000112-001f-0000-0011-000100bba000'
Informationlist = ['osCheckODE','osGetGridCustom','osGetGridGatekeeperURI','osGetGridHomeURI','osGetGridLoginURI','osGetGridName','osGetGridNick','osGetMapTexture','osGetPhysicsEngineName','osGetPhysicsEngineType','osGetRegionMapTexture','osGetRegionSize','osGetRegionStats','osGetScriptEngineName','osGetSimulatorMemory','osGetSimulatorMemoryKB','osGetSimulatorVersion','osLoadedCreationDate','osLoadedCreationID','osLoadedCreationTime']

Administration = '30000112-001f-0000-0012-000100bba000'
Administrationlist = ['osConsoleCommand','osRegionNotice','osRegionRestart','osSetParcelMediaURL','osSetParcelMusicURL','osSetParcelSIPAddress','osSetPrimFloatOnWater']

Script = '30000112-001f-0000-0013-000100bba000'
Scriptlist = ['osResetAllScripts']

StringManipulation = '30000112-001f-0000-0014-000100bba000'
StringManipulationlist = ['osFormatString','osMatchString','osRegexIsMatch','osReplaceString','osStringSubString','osStringStartsWith','osStringEndsWith','osStringIndexOf','osStringLastIndexOf','osStringRemove','osStringReplace']

Misc = '30000112-001f-0000-0015-000100bba000'
Misclist = ['osAngleBetween','osApproxEquals','osGetPSTWallclock','osIsUUID','osIsNotValidNumber','osKey2Name','osList2Double','osMax','osMin','osRound','osSlerp','osUnixTimeToTimestamp','osVecDistSquare','osVecMagSquare']

def createconfiga(SectionName, assetIDValue):
    datei = open('NewScriptsAssetSet.xml','a')
    assetIDValue = str(assetIDValue) # int to string

    datei.write('\n  <Section Name="' + SectionName + '">')
    datei.write('\n    <Key Name="assetID" Value="81305ee4-' + assetIDValue + '-9e0a-69a4-76ed57df0c8f" />')
    datei.write('\n    <Key Name="name" Value="' + SectionName + '" />')
    datei.write('\n    <Key Name="assetType" Value="10" />')
    datei.write('\n    <Key Name="fileName" Value="' + SectionName + '.lsl" />')
    datei.write('\n  </Section>')
    return;

def createconfigb(SectionName, assetIDValue, folderID):
    datei = open('NewScriptsLibraryItems.xml','a')
    assetIDValue = str(assetIDValue) # int to string

    datei.write('\n    <Section Name="' + SectionName + '">')
    datei.write('\n      <Key Name="inventoryID" Value="81305ee4-' + assetIDValue + '-9e0a-69a4-76ed57df0c8f" />')
    datei.write('\n      <Key Name="assetID" Value="81305ee4-' + assetIDValue + '-9e0a-69a4-76ed57df0c8f" />')
    datei.write('\n      <Key Name="folderID" Value="' + folderID + '"/>')
    datei.write('\n      <Key Name="description" Value="' + SectionName + '" />')
    datei.write('\n      <Key Name="name" Value="' + SectionName + '" />')
    datei.write('\n      <Key Name="assetType" Value="10" />')
    datei.write('\n      <Key Name="inventoryType" Value="10" />')
    datei.write('\n    </Section>')
    return;

def createconfigc(folderID, folderName):
    datei = open('NewScriptsLibraryFolders.xml','a')
    #folderID = folderID ++ 1
    #folderID = str(folderID) # int to string
    
    datei.write('\n     <Section Name="' + folderName + '">')
    datei.write('\n       <Key Name="folderID" Value="' + folderID + '"/>')
    datei.write('\n       <Key Name="parentFolderID" Value="30000112-001f-0000-0000-000100bba001"/>')
    datei.write('\n       <Key Name="name" Value="' + folderName + '"/>')
    datei.write('\n       <Key Name="type" Value="10"/>')
    datei.write('\n     </Section>')
    return;

def start(scriptlist, assetIDValue, folderID, folderName):
    for x in scriptlist:
            SectionName = x    
            assetIDValue = assetIDValue ++ 1
            createconfiga(SectionName, assetIDValue)
            createconfigb(SectionName, assetIDValue, folderID)

    for x in folderlist:
            folderName = x
            createconfigc(folderID, folderName)

# Test Start

start(Avatarslist, assetIDValue = 1000, folderID = Avatars, folderName = 'Avatars')
start(NPCslist, assetIDValue = 1100, folderID = NPCs, folderName = 'NPCs')
start(Primlist, assetIDValue = 1200, folderID = Prim, folderName = 'Prim')
start(Texturelist, assetIDValue = 1300, folderID = Texture, folderName = 'Texture')
start(Notecardlist, assetIDValue = 1400, folderID = Notecard, folderName = 'Notecard')
start(Soundlist, assetIDValue = 1500, folderID = Sound, folderName = 'Sound')
start(ScriptHTTPlist, assetIDValue = 1600, folderID = ScriptHTTP, folderName = 'ScriptHTTP')
start(Parcellist, assetIDValue = 1700, folderID = Parcel, folderName = 'Parcel')
start(Terrainlist, assetIDValue = 1800, folderID = Terrain, folderName = 'Terrain')
start(Environmentlist, assetIDValue = 1900, folderID = Environment, folderName = 'Environment')
start(Informationlist, assetIDValue = 2000, folderID = Information, folderName = 'Information')
start(Administrationlist, assetIDValue = 2100, folderID = Administration, folderName = 'Administration')
start(Scriptlist, assetIDValue = 2200, folderID = Script, folderName = 'Script')
start(StringManipulationlist, assetIDValue = 2300, folderID = StringManipulation, folderName = 'StringManipulation')
start(Misclist, assetIDValue = 2400, folderID = Misc, folderName = 'Misc')



