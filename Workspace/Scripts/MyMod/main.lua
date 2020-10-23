-- hint you can create these headers using alt + shift + y
-- ────────────────────────────────────────────────────────────────────────── I ──────────
--   :::::: M Y M O D   M A I N   S C R I P T : :  :   :    :     :        :          :
-- ────────────────────────────────────────────────────────────────────────────────────
-- TEMPLATE
--[[
    >> This is a Template "Main Script" for a Miscreated Mod.
    >> You can either Edit it or Safely Remove it to Customise your Mod
]] --
-- hint you can create these headers using alt+y
-- ─── MAIN METHODS ───────────────────────────────────────────────────────────────
--
--- Has the mods Init() method been called
g_MyMod.Initialised = false
--- Has the mods Start() method been called
g_MyMod.Loaded = false

--- An Example Method for a mod, doesnt do much
function g_MyMod:Main()
    --- if the Start() method hasnt been called then we probably shouldnt do anything yet
    if (not self.Loaded) then return false, ':Start() must be run first' end

    -- you can specify a values type using:
    -- for tables you can specify their key/value types also
    -- try hovering over the date var and it will specify its type, usualy a values type can be guessed by it usage.
    -- try hovering over other values to see how they have their type, and often their content. though that depends on how the value is set.
    ---@type table<string,number>
    local date = os.date('*t')
    -- Use Some method defined in MyMod/Common/
    g_MyMod:Debug('Mod Started @ d%d m%d y%d %d:%d:%d', date.day, date.month, date.year, date.hour, date.min, date.sec)
end

---? Main Mod Initialisation Method
-- You can use this for Creating Tables, Globals and anything that you mod needs before its fully started,
-- this is a great place to check things like config files and for the existance of any dependancies
function g_MyMod:Init()
    -- >> Output Mod Info to Log
    LogWarning(string.format('[%s] Initialising', self._NAME))
    Log(string.format('===>>>             Version: %s', self._VERSION))
    Log(string.format('===>>> %s', self._DESCRIPTION))

    --- TODO: Add Logic to Inititialise Your Mod here
    -- >> This could be the Creation of Global tables/values, reloading certain files or calling other methods to handle mod setup
    --- NOTE: this is a good place to check and create config files.
    -- set Initialised = true to Indicate our Mod is ready to Start
    g_MyMod.Initialised = true
end

---? Main Mod Start Method
-- This Should be Called via the Callback Set in the startscript in mods folder.
-- and should run once the main map and gamerules have all been instanced.
-- this ensures that all dependancies have been created.
function g_MyMod:Start()
    --- if the :Init() method hasnt been called then we probably shouldnt do anything yet
    if (not self.Initialised) then return false, ':Init() must be run first' end
    -- >> Notify Mod Startup in Log
    LogWarning(string.format('[%s] Starting', self._NAME))

    --- TODO: Add Logic needed to "Start" your mod here

    -- set Loaded = true to Indicate our Mod is ready to continue Running
    g_MyMod.Loaded = true
end
