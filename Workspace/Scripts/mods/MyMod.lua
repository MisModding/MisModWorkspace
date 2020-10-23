--
-- ──────────────────────────────────────────────────────────────────────────── I ──────────
--   :::::: M Y M O D   S T A R T U P   F I L E : :  :   :    :     :        :          :
-- ──────────────────────────────────────────────────────────────────────────────────────
-- TEMPLATE
--[[
    >> This is a Template "Startup File" for a Miscreated Mod.
    >> You can either Edit it or Safely Remove it to Customise your Mods Inititialisation Process
]] -- ────────────────────────────────────────────────────────────────────────────────


-- note: you can create these headers using alt + m
-- ──────────────────────────────────────────────────────── MOD CONFIGURATION ─────
--
-- TODO: IMPORTANT - Rename the main Mod Namespace.
-- ! Important: click on g_MyMod below and use the F2 key to `Rename Symbol`
-- ! as this table is used in multiple place and we want to rename it globaly
-- >> otherwise you will have to do so manualy.
-- ────────────────────────────────────────────────────────────────────────────────


--- Main Mod Namespace
g_MyMod = {
    -- TODO: Update your Mod Info
    ---! Mod Name
    _NAME = 'MyMod',

    ---! Mod Version
    _VERSION = '0.1.0a',

    ---! Mod Description
    _DESCRIPTION = [[
        Just some text to describe MyCoolMod.

        made using MisModWorkspace,
    ]],

    ---! BaseDir this is the Scripts/MyMod folder, change this when you rename this folder
    BASEDIR = 'Scripts/MyMod/', -- CHANGEME: Make sure you have Change the name of the Scripts/MyMod folder then update this path
}

-- ────────────────────────────────────────────────────────────────────────────────
-- note: you can create these spacers using alt + l
-- ────────────────────────────────────────────────────────────────────────────────

---? if the Mod Dir Contains a Common folder Reload it now
--- this folder is usefull for storing scripts containing global methods/variables used throughout your mod
Script.LoadScriptFolder(g_MyMod.BASEDIR .. 'Common/')

---? Reload the Main Script for this mod
--- at this stage only the core scripts have loaded. use the callback below to load stuff at different stage of initialisation
Script.ReloadScript(g_MyMod.BASEDIR .. 'main.lua')

---? Call A Function to Handle Mod Inititlisation
RegisterCallback(
    _G, 'OnInitPreLoaded', nil, function()
        -- >> if using mFramework remember many mFramework "plugins" are not available at this stage though classes/modules are
        -- your mod needs to specify a MyMod:Init() functon for this to work
        g_MyMod:Init()
    end
)

---? Call A Function to Handle Mod Start
RegisterCallback(
    _G, 'OnInitAllLoaded', nil, function()
        -- >> all systems Should be Loaded now. though remember When dealing with multiple mods,
        -- >> you should make sure anything you depend on has also loaded aswell
        -- your mod needs to specify a MyMod:Start() functon for this to work
        g_MyMod:Start()
    end
)
