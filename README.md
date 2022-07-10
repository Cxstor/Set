# Set
Set is a Luau module and Wally package which returns a function that converts a list into a set.

## What is a Set?
In computer science, a set is an abstract data type that can store unique values, without any particular order.

[Read the Docs!](https://www.lua.org/pil/11.5.html)

### Examples of Sets:
Using Roster Notation a Mathematical Set can be represented as: 

A = {4, 2, 1, 3}

An Empty (Null) Set (or a set that contains no values) can be represented as:

A = {}

A Singleton Set (or a set that only contains one value) can be represented as:

A = {x}

### Why use Sets in Luau?
Unlike Python, C#, and several other programming languages, in Luau there is no built-in function nor method to check if an item is in a list. Ergo, in Luau, we can just turn our list into a set instead of writing spaghetti code to check if an item is in a list. In Luau, a simple and efficient way to represent a set is to put the set elements as indices in a table. Then, instead of searching a table for a given element, you can just index the table and test whether the result is nil or not. Still confused? Check [Usage](https://github.com/Cxstor/Set#Usage) for an example.

## Install
Installation is simple; choose your workflow.

**Roblox Studio Workflow:**
1. Get [Set](https://www.roblox.com/library/10174561493) from the Roblox Library
2. Parent Set to ReplicatedStorage
3. Require the "Set" ModuleScript from ReplicatedStorage

	```lua
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Set = require(ReplicatedStorage.Set)
	```

**Rojo & Wally Workflow:**
1. Add [Set](https://wally.run/package/cxstor/set) as a [Wally](https://github.com/UpliftGames/wally#installation) Dependency

	`Set = "cxstor/set@x"`

2. Use [Rojo](https://rojo.space/docs/v7/getting-started/installation/) to point the Wally Packages to ReplicatedStorage
3. Require the "Set" Package (ModuleScript) from ReplicatedStorage

	```lua
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Set = require(ReplicatedStorage.Packages.Set)
	```

## Usage
Set can be used in both client (local) scripts and server (regular) scripts. Personally, I recommend the following syntax when using Set:
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Set = require(ReplicatedStorage.Set)

local Fruits = Set {"Apple", "Banana", "Cherry"}

if Fruits["Cherry"] then
	print("Yes")
else
	print("No")
end
```

However, you can obviously also use parentheses, semicolons, etc. when declaring Set:
```lua
local Fruits = Set({"Apple", "Banana", "Cherry"});
```

Moreover, Set supports other data types, not just strings:
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Set = require(ReplicatedStorage.Set)

local Fruits = {"Apple", "Banana", "Cherry"}
local New = Set {true, Fruits, "Cherry"}

if New[Fruits] then
	print("Yes")
else
	print("No")
end
```

## Config
In the "Set" Module you can configure the syntax for Set to be "DEFAULT" or "NEW".

**Default Syntax:**

ModuleScript:
```lua
local Syntax = "DEFAULT"
```
Usage:

[See Above](https://github.com/Cxstor/Set#Usage)

**New Syntax:**

ModuleScript:
```lua
local Syntax = "NEW"
```
Usage:
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Set = require(ReplicatedStorage.Set)

local Fruits = Set.new({"Apple", "Banana", "Cherry"})

if Fruits["Cherry"] then
	print("Yes")
else
	print("No")
end
```

## Changelog
**1.1.4**
- Fixed Bug w/ New Syntax

**1.1.3**
- Fixed Wally Bugs

**1.1.2**
- Updated README.md

**1.1.1**
- New Syntax Option
- Updated README.md

**1.0.1**
- Updated README.md

**1.0.0**
- Initial Release
