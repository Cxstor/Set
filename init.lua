--[[
Set
init.lua
cizzles
]]--

--> CONFIGURE SYNTAX HERE
local Syntax = "DEFAULT"
--> "DEFAULT" or "NEW"

if Syntax == "NEW" then
--[[ NEW SYNTAX ]]--
	local Set = {}
	function Set.new(List)
		local set = {}
		for _,v in List do
			set[v] = true
		end
		return Set
	end
	return Set
else
--[[ DEFAULT SYNTAX ]]--
	return function(List)
		local Set = {}
		for _,v in List do
			Set[v] = true
		end
		return Set
	end
end