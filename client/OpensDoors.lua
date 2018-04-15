---------------
--By Hallkezz--
---------------

-----------------------------------------------------------------------------------
--Settings
local debug = false					-- ON/OFF Debug mode. (Use: true / false)
---------------------
local Key = "L"						-- Activation Button
local Text = "The doors are open!"	-- Activation Text
local TextColor = Color.Green		-- Text Color
-----------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
--Script
class 'Doors'

function Doors:__init()
	Events:Subscribe("KeyUp", self, self.KeyUp)
	Events:Subscribe("ModulesLoad", self, self.ModulesLoad)
	Events:Subscribe("ModuleUnload", self, self.ModuleUnload)
	
	if debug then
		print("OpensDoors loaded.")
	end
end

--Script
function Doors:KeyUp(args)
	if args.key == string.byte(Key) then
		Game:FireEvent( "t{go500.01({967466FA-4C87-422A-ACF5-042B67E922B5})}::fadeOutGate" ) -- -2922.824219, 245.334610, 12815.380859
		Game:FireEvent( "t{go500.01({9695B812-73C4-4D86-86FF-AEC430816869})}::fadeOutGate" ) -- 616.877197, 1198.532837, -7090.981934
		Game:FireEvent( "t{go500.01({F7CD6FAE-EFCE-4CA4-A1C4-6944D228139F})}::fadeOutGate" ) -- 11463.557617, 228.073395, -9256.142578
		Game:FireEvent( "t{go500.01({FD92A809-89AC-4D64-BC1C-335FD22F5B83})}::fadeOutGate" ) -- -3252.795410, 204.977341, 8859.039063
		Game:FireEvent( "t{go500.01({927DC663-1EAA-4D87-810F-36F8581CBE7D})}::fadeOutGate" ) -- -10637.824219, 380.581390, 11069.406250
		Game:FireEvent( "t{go500.01({8EB05652-74A1-4DA6-B24F-E77803AB4B6B})}::fadeOutGate" ) -- -10791.907227, 380.950317, 10997.403320
		Game:FireEvent( "t{go500.01({EC54E85D-45ED-46A8-8E31-3B32DEE1D5FC})}::fadeOutGate" ) -- 9083.302734, 202.993347, 1474.756226
		Game:FireEvent( "t{go500.01({86D114AF-77FD-44CC-B861-5F6C77ED03A0})}::fadeOutGate" ) -- -14964.839844, 202.999985, -2882.853516
		Game:FireEvent( "open.mouth" )														 -- 14002.971680, 458.689545, 14259.728516
		Chat:Print(Text, TextColor) -- Activation Text
		
		if debug then
			print("Button pressed.")
		end
	end
end

--Help
function Doors:ModulesLoad()
	Events:Fire( "HelpAddItem",
        {
            name = "Doors",
            text = 
                "Press " .. Key .. " to open the doors of the military bases.\n" ..
                "\n::By Hallkezz!"
        } )
end

function Doors:ModuleUnload()
    Events:Fire( "HelpRemoveItem",
        {
            name = "Doors"
        } )
end

doors = Doors()

--v0.2--
--04.15.18--