---------------
--By Hallkezz--
---------------

-----------------------------------------------------------------------------------
--Default Settings
local debug = false -- ON/OFF Debug mode. ( Use: true / false )
---------------------
local Message = " opened the doors" -- Activation Message ( Default: " opened the doors" )
local MessageColor = Color.Green -- Message Color ( Default: Color.Green )
-----------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
--Script
class 'Doors'

function Doors:__init()
	Network:Subscribe( "GetPlayers", self, self.GetPlayers )
end

function Doors:GetPlayers( args, sender )
	for p in Server:GetPlayers() do
		jDist = sender:GetPosition():Distance( p:GetPosition() )
		if debug then
			print( sender:GetName() .. Message )
		end
		if jDist < 50 then
			Network:Send( p, "OpenDoors" )
			Chat:Send( p, sender:GetName() .. Message, MessageColor )
			if debug then
				print( "Doors opened for " .. p:GetName() )
			end
		end
	end
end

doors = Doors()

-----------------------------------------------------------------------------------
--Script Version
--v0.3--

--Release Date
--05.07.20--
-----------------------------------------------------------------------------------