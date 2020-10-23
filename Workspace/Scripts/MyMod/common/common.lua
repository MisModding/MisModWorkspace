--[[
    * These Functions show Example usage of sumneko.lua Code Completion Support
    * use:
    >> `--- Function Name` to define you methods name or short description
    >> `---| description` to add a longer function description
    >> `---@param name type description` to define a parameter
    >> `---@return type description` to define a parameters return value
    ? if a value can be more than one type say a number or string then use `number|string`
    ! if a value can be nothing say an optional number then use `number|nil`

]] --
--- Log a Preformatted Debug Message Originating from this Mod
---| message is passed to string.format() along with any extra params
---@see string.format()
---@param message string    message to log
function g_MyMod:Debug(message, ...)
    ---@type string
    local prefix = string.format('[%s:v%s] ', tostring(self._NAME or 'UnknownMod'), tostring(self._VERSION or 'UnknownVersion'))
    LogWarning(prefix .. message, ...)
end


-- TODO: Add some Common methods for your mod.
-->> They dont have to be in this one file. you can add multiple scripts to this folder to better organise things