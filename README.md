# MisModWorkspace

> Provides a Workspace for Easy Development of Lua based Mods for [Miscreated](https://miscreatedgame.com)



[TOC]





### How to Use

---------



1. Create a Folder some where for your new mod.

   - for example  `{desktop}/MiscreatedMods/MyNewMod`

2. Grab a Copy of this Repository.

   - [Download a Zip](https://github.com/MisModding/MisModWorkspace/archive/master.zip)

   - [Recommended] Clone Via Git. (easier to update)

     `git clone https://github.com/MisModding/MisModWorkspace.git`

3. Copy the files to your Mods Folder and rename `workspace.code-workspace` to suit your mods name

   - eg:  `{desktop}/MiscreatedMods/MyNewMod/MyNewMod.code-workspace`
   - Note: this is not required but sets the title seen at the top of vscode.

4.  Now you can open VSCode and start modding :)





### Notes

-----------

- By Design the `Workspace` folder acts as your `GameSDK` folder within your Final pak file. 

  - while it doesn't really matter, your folder structure should look like the below for best compatibility with this workspace.
    - `{path/to/mod}/Workspace/Scripts/mods` though as long as your final pak structure is ok you can change this.

- The base Workspace Configuration is found in the `.code-workspace` file in the Workspace Root folder

  - you can change some values in here but read any comments first.

  - some things will create a new `.vscode` folder inside you main `Workspace` folder, 

    this is fine but you can copy values over the the main `.code-workspace` file if you want to keep things tidy.

- Code formatting is done using the recommend `lua-formatter` extension you can find its configuration in  `lua-format-style.cfg`

  - you can change this file as you like to suit your own coding style. by default its the same as using throughout mFramework.
  - you can copy this file elsewhere by updating the path in your `.code-workspace` file.

-  Code Completion, IntelliSense, Static Error Checking are Provided by the Recommended `sumneko.lua` Extension

  -  code completion files are found in `.lua.compleations.d` , you can add to the  existing or create lua api's by modifying the files in this folder
  - this is currently incomplete and will be updated but covers most of the essential vanilla CryEngine3 / miscreated lua api



### Recommended Extensions:

----------

###### extensions recommended/used by this workspace



- ##### Lua Specific

  - ```
    Name: Lua
    Id: sumneko.lua
    Description: Lua Language Server coded by Lua
    Version: 0.21.4
    Publisher: sumneko
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
    ```

    

  - ```
    Name: vscode-lua-format
    Id: koihik.vscode-lua-format
    Description: Reformats your Lua source code.
    Version: 1.3.6
    Publisher: Koihik
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=Koihik.vscode-lua-format
    ```

    

  - ```
    Name: Local Lua Debugger
    Id: tomblind.local-lua-debugger-vscode
    Description: Local Lua Debugger - simple Lua debugger with no dependencies
    Version: 0.2.0
    Publisher: Tom Blind
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=tomblind.local-lua-debugger-vscode
    ```

    

- ##### Visual Feedback

  - ```
    Name: Todo Tree
    Id: gruntfuggly.todo-tree
    Description: Show TODO, FIXME, etc. comment tags in a tree view
    Version: 0.0.183
    Publisher: Gruntfuggly
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree
    ```

    

  - ```
    Name: Error Lens
    Id: usernamehw.errorlens
    Description: Improve highlighting of errors, warnings and other language diagnostics.
    Version: 3.2.3
    Publisher: Alexander
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens
    ```

    

  - ```
    Name: Better Comments
    Id: aaron-bond.better-comments
    Description: Improve your code commenting by annotating with alert, informational, TODOs, and more!
    Version: 2.1.0
    Publisher: Aaron Bond
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
    ```

    

  - ```
    Name: Comment V
    Id: karyfoundation.comment
    Description: The easiest way to to decorate your codes with Kary Comments in Visual Studio Code.
    Version: 7.0.3
    Publisher: Pouya Kary
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=karyfoundation.comment
    ```

    