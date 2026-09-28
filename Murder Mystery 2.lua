-- generated using SL | Source Leak
-- https://discord.gg/x7YbZeezpm

repeat
	task.wait()
until game:IsLoaded()

local tbl

tbl = {
	IsDetected = false,
	_unpack = function(arg, arg2, arg3)
		arg2 = arg2 or 1
		arg3 = arg3 or #arg
		if arg3 < arg2 then
			return
		end
		return arg[arg2], tbl._unpack(arg, arg2 + 1, arg3)
	end,
	_pcall = function(arg, ...)
		local tbl2 = { ... }

		local ok, result = pcall(function()
			return arg(tbl._unpack(tbl2))
		end)

		if not ok then
			return false, result
		end
		return true, result
	end,
}

local function fn()
	return true
end

local v, v2 = tbl._pcall(debug.info, fn, "f")

if not v or v2 ~= fn then
	tbl.IsDetected = true
	LPH_CRASH()
end

local v3, v4 = tbl._pcall(debug.info, 2, "f")

if not v3 or v4 ~= pcall then
	tbl.IsDetected = true
	LPH_CRASH()
end

local v5 = (cloneref or function(arg)
	return arg
end)(game:GetService("RunService"))

if v5:IsStudio() then
	tbl.IsDetected = true
	LPH_CRASH()
end

if v5:IsServer() then
	tbl.IsDetected = true
	LPH_CRASH()
end

if tbl.IsDetected then
	return
end

loadstring([[
  function LPH_NO_VIRTUALIZE(f) return f end;
  function LPH_JIT_MAX(f) return f end;
  function LPH_JIT(f) return f end;

  function LPH_ENCNUM(n, ...) return n end;
  function LPH_ENCSTR(s, ...) return s end;
  function LPH_ENCFUNC(f, ...) return f end;
  function LPH_ENCBUF(b, ...) return b end;

  function LPH_ATTRIBUTES(...) end;
  function LPH_REWRITE(expr, ...) return expr end;
  function LPH_STACKALLOC(size, zeroOrOne) return {} end;
  function LPH_PRECHECK(...) end;

  function VM(...) end;
  function PRESET(...) end;
  function ENCRYPT(...) end;
  function OPTIMIZE(...) end;
  function ERROR_HANDLING(...) end;
  function TRANSFORM(...) end;
  NONE, OPAL, ONYX = 0, 1, 2;
  FAST, SECURE = 0, 1;
  CONTROL_FLOW, EXTRACT, INLINE, UNROLL, NO_UPVALUES = 0, 0, 0, 0, 0;
]])()

local function fn2()
	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local UserInputService = game:GetService("UserInputService")
	game:GetService("GuiService")
	Instance.new("VirtualInputManager")
	local RunService = game:GetService("RunService")
	local Lighting = game:GetService("Lighting")
	local VirtualUser = game:GetService("VirtualUser")
	local HttpService = game:GetService("HttpService")
	local CollectionService = game:GetService("CollectionService")
	local TeleportService = game:GetService("TeleportService")
	local CoreGui = game:GetService("CoreGui")
	local Workspace = game:GetService("Workspace")
	local TweenService = game:GetService("TweenService")
	local Stats = game:GetService("Stats")
	local localPlayer = Players.LocalPlayer
	localPlayer:WaitForChild("PlayerGui")
	local character = localPlayer.Character
	local humanoid = character:WaitForChild("Humanoid")
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	local tbl2 = {
		Enabled = { IsTeleporting = false },
		Module = {},
		Connections = {},
		Cached = {
			Stuck = os.time(),
			JSON = {},
			Count = { WalkSpeed = 0, NoClip = 0, Fail = 0 },
			Image = {},
			Temporary = {},
			Task = {},
			SpawnPoint = Vector3.new(14, 516, -25),
			MM2PlayerList = {},
			FlingDropdown = nil,
			Fling = { Stop = false, Gui = nil, SavedPosition = nil, OldPosition = nil, SavedFPDH = nil },
			ESP = { Highlights = {}, Billboards = {}, GunDropHighlight = nil, GunDropBillboard = nil },
			SpeedGlitchCache = { WalkSpeed = -1, JumpPower = -1 },
			SpeedGlitchConnection = nil,
			FPSBoosted = false,
			KnifeButtonGui = nil,
			MurderStat = { Gui = nil, Label = nil, Kills = 0, KnifeShown = false, Tracked = {} },
			LightingSave = {},
			MaterialSave = {},
			FieldOfView = nil,
			AntiAimDir = 1,
			AntiAimLast = 0,
			TouchFlingFlip = 0.1,
			TouchFlingCFrame = nil,
		},
		Stored = { Data = {}, UI = {} },
	}

	local module = tbl2.Module
	local connections = tbl2.Connections
	local cached = tbl2.Cached
	local enabled = tbl2.Enabled

	local function fn3(arg)
		print(arg)
	end

	local function fn4(arg)
		local ok, result = pcall(function()
			return (load or loadstring)(game:HttpGet(arg))()
		end)

		if ok then
			return result
		end
	end

	local tbl3 = {
		SHX = fn4("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Lib_5.5.0.lua"),
		Funcs = fn4("https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Example/FuncsV4.lua"),
	}

	local shx = tbl3.SHX
	local funcs = tbl3.Funcs

	task.spawn(function()
		if _G.Speed_AntiAFK then
			return
		end
		_G.Speed_AntiAFK = true

		while task.wait(600) do
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end
	end)

	local function fn5()
		local function fn6()
			return {
				Connections = function(arg, arg2, arg3)
					local connection = nil

					connection = arg:Connect(function(...)
						if shx.Unloaded then
							if connection then
								connection:Disconnect()
							end

							return
						end

						local ok, result = pcall(arg2, ...)

						if not ok then
							fn3(result, "")
						end
					end)

					if arg3 then
						connections[arg3] = connection
					end

					return connection
				end,
				Disconnect = function(arg)
					if connections[arg] then
						connections[arg]:Disconnect()
						connections[arg] = nil
					end
				end,
				StartLoop = function(arg, arg2)
					while not shx.Unloaded do
						if enabled[arg] then
							local ok, result = pcall(arg2)

							if not ok then
								fn3(result, arg)
							end
						end

						task.wait(0)
					end
				end,
				Fallback = function(arg, arg2, arg3)
					local n = cached.Count[arg2] or 0

					if arg ~= nil then
						n += 1
						cached.Count[arg2] = n
					end

					if n > 1 then
						if not enabled[arg2] then
							arg3()
						end
					end
				end,
			}
		end

		local function fn7()
			local tbl4 = {}
			local currentCamera = workspace.CurrentCamera
			local ContextActionService = game:GetService("ContextActionService")

			tbl4.BypassWalkSpeed = function()
				if cached.BypassSpeed then
					return
				end
				cached.BypassSpeed = true
				local v6 = getrawmetatable(game)
				setreadonly(v6, false)
				local index = v6.__index

				v6.__index = newcclosure(function(arg, arg2)
					if arg2 == "WalkSpeed" then
						return 16
					end
					return index(arg, arg2)
				end)
			end

			tbl4.FreezeAndClone = function()
				if cached.Frozen then
					return
				end
				cached.Frozen = true
				cached.FrozenCFrame = currentCamera.CFrame
				cached.SavedParts = {}
				cached.SavedDecals = {}
				local archivable = character.Archivable
				character.Archivable = true
				cached.CharacterClone = character:Clone()
				character.Archivable = archivable
				cached.CharacterClone.Name = "Checkpoint"

				for _, descendant in ipairs(cached.CharacterClone:GetDescendants()) do
					if descendant:IsA("Script") or descendant:IsA("LocalScript") then
						descendant:Destroy()
					elseif descendant:IsA("BasePart") then
						descendant.Anchored = true
						descendant.CanCollide = false
						descendant.CanTouch = false
						descendant.CanQuery = false
						descendant.LocalTransparencyModifier = 0

						if descendant.Name == "HumanoidRootPart" then
							descendant.Transparency = 1
						end
					elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
						descendant.Transparency = 0
					end
				end

				local humanoid2 = cached.CharacterClone:FindFirstChildOfClass("Humanoid")

				if humanoid2 then
					humanoid2.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				end

				cached.CharacterClone.Parent = workspace

				for _, descendant in ipairs(character:GetDescendants()) do
					if descendant:IsA("BasePart") then
						cached.SavedParts[descendant] = descendant.LocalTransparencyModifier
						descendant.LocalTransparencyModifier = 1
					elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
						cached.SavedDecals[descendant] = descendant.Transparency
						descendant.Transparency = 1
					end
				end

				currentCamera.CameraType = Enum.CameraType.Scriptable
				currentCamera.CFrame = cached.FrozenCFrame

				if connections.FreezeConnection then
					connections.FreezeConnection:Disconnect()
				end

				connections.FreezeConnection = RunService.RenderStepped:Connect(function()
					if cached.Frozen and cached.FrozenCFrame then
						currentCamera.CameraType = Enum.CameraType.Scriptable
						currentCamera.CFrame = cached.FrozenCFrame
					end
				end)
			end

			tbl4.UnfreezeAndDeleteClone = function()
				if not cached.Frozen then
					return
				end
				cached.Frozen = false

				if connections.FreezeConnection then
					connections.FreezeConnection:Disconnect()
					connections.FreezeConnection = nil
				end

				local v6 = pairs
				local savedParts = cached.SavedParts or {}

				for k, savedPart in v6(savedParts) do
					if k and k.Parent and k:IsA("BasePart") then
						k.LocalTransparencyModifier = savedPart
					end
				end
				--[=[ 𝗦𝗼𝘂𝗿𝗰𝗲 𝗟𝗲𝗮𝗸 ]=] -- discord.gg/x7YbZeezpm

				local v7 = pairs
				local savedDecals = cached.SavedDecals or {}

				for k, savedDecal in v7(savedDecals) do
					if k and k.Parent and (k:IsA("Decal") or k:IsA("Texture")) then
						k.Transparency = savedDecal
					end
				end

				cached.SavedParts = {}
				cached.SavedDecals = {}

				if cached.CharacterClone then
					cached.CharacterClone:Destroy()
					cached.CharacterClone = nil
				end

				cached.FrozenCFrame = nil
				local character2 = localPlayer.Character
				character2 = character2 and character2:FindFirstChildOfClass("Humanoid")
				currentCamera.CameraType = Enum.CameraType.Custom

				if character2 then
					currentCamera.CameraSubject = character2
				end
			end

			tbl4.EnableNoInput = function()
				if cached.NoInputEnabled then
					return
				end
				cached.NoInputEnabled = true

				if not cached.Controls then
					cached.Controls = require(localPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()
				end

				if cached.ScreenText then
					cached.ScreenText.Enabled = true
				else
					cached.ScreenText = Instance.new("ScreenGui")
					cached.ScreenText.Name = "NoInputWarningGui"
					cached.ScreenText.ResetOnSpawn = false
					cached.ScreenText.IgnoreGuiInset = true
					cached.ScreenText.Parent = localPlayer:WaitForChild("PlayerGui")
					cached.ScreenTextLabel = Instance.new("TextLabel")
					cached.ScreenTextLabel.Name = "WarningText"
					cached.ScreenTextLabel.Size = UDim2.fromScale(1, 0.15)
					cached.ScreenTextLabel.Position = UDim2.fromScale(0, 0.42)
					cached.ScreenTextLabel.BackgroundTransparency = 1
					cached.ScreenTextLabel.Text = "[START]"
					cached.ScreenTextLabel.TextScaled = true
					cached.ScreenTextLabel.Font = Enum.Font.GothamBold
					cached.ScreenTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					cached.ScreenTextLabel.TextStrokeTransparency = 0
					cached.ScreenTextLabel.Parent = cached.ScreenText
				end

				cached.Controls:Disable()

				ContextActionService:BindActionAtPriority("BlockAllPlayerInput", function()
					return Enum.ContextActionResult.Sink
				end, false, 999999, Enum.UserInputType.Keyboard, Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3, Enum.UserInputType.MouseMovement, Enum.UserInputType.MouseWheel, Enum.UserInputType.Touch, Enum.UserInputType.Gamepad1, Enum.UserInputType.Gamepad2, Enum.UserInputType.Gamepad3, Enum.UserInputType.Gamepad4)
			end

			tbl4.DisableNoInput = function()
				if not cached.NoInputEnabled then
					return
				end
				cached.NoInputEnabled = false
				ContextActionService:UnbindAction("BlockAllPlayerInput")

				if cached.Controls then
					cached.Controls:Enable()
				end

				if cached.ScreenText then
					cached.ScreenText.Enabled = false
				end
			end

			return tbl4
		end

		local tbl4 = {
			Webhook = function(arg, arg2)
				local request_ = request or syn and syn.request or http and http.request or fluxus and fluxus.request or http_request
				if not request_ then
					return
				end

				request_({
					Url = arg,
					Body = HttpService:JSONEncode(arg2),
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json" },
				})
			end,
			Utils = fn7(),
			Misc = fn7(),
		}

		local utils = tbl4.Utils

		local function fn8()
			local tbl5

			tbl5 = {
				Roles = { Murderer = nil, Sheriff = nil, Hero = nil },
				RoundClient = nil,
				VelocityHistory = {},
				RoleCache = {},
				RoleCacheTime = {},
				GetCoinRemote = nil,
				LastRoleQuery = 0,
				GetPing = function()
					local ok, result = pcall(function()
						return Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
					end)

					return ok and result or 100
				end,
				UpdateRoles = function()
					task.wait(1)
					local roundClient = tbl5.RoundClient
					if not roundClient then
						return
					end
					tbl5.Roles.Murderer = nil
					tbl5.Roles.Sheriff = nil
					tbl5.Roles.Hero = nil
					tbl5.RoleCache = {}
					tbl5.RoleCacheTime = {}
					local playerData = roundClient.PlayerData

					if playerData and next(playerData) then
						local value = nil
						local value2 = nil
						local value3 = nil

						for k, value4 in pairs(playerData) do
							local role = value4.Role

							if role then
								local v10 = Players:FindFirstChild(k)

								if v10 then
									if role == "Murderer" then
										value = v10
									elseif role == "Sheriff" then
										value2 = v10
									elseif role == "Hero" then
										value3 = v10
									end
								end
							end
						end

						tbl5.Roles.Murderer = value
						tbl5.Roles.Sheriff = value2
						tbl5.Roles.Hero = value3
					end
				end,
				InGame = function()
					local v6 = tbl5.GetCurrentMap()
					if not v6 then
						return false
					end
					local character2 = localPlayer.Character
					character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
					if not character2 then
						return false
					end
					return (character2.Position - v6:GetPivot().Position).Magnitude < 4000
				end,
				GetRole = function(arg)
					if arg == tbl5.Roles.Murderer then
						return "Murderer"
					end

					if arg == tbl5.Roles.Sheriff then
						return "Sheriff"
					end

					if arg == tbl5.Roles.Hero then
						return "Hero"
					end

					if not tbl5.InGame() then
						return "Innocent"
					end
					local v6 = tbl5.RoleCacheTime[arg]
					if tbl5.RoleCache[arg] and v6 and tick() - v6 < 2 then
						return tbl5.RoleCache[arg]
					end
					local lastRoleQuery = tbl5.LastRoleQuery
					if tick() - lastRoleQuery < 0.7 then
						return tbl5.RoleCache[arg] or "Innocent"
					end
					tbl5.LastRoleQuery = tick()

					local ok, result = pcall(function()
						return ReplicatedStorage:FindFirstChild("GetPlayerData", true):InvokeServer()
					end)

					ok = ok and result and result[arg.Name] and result[arg.Name].Role
					local str = "Innocent"

					if ok then
						str = result[arg.Name].Role
					end

					tbl5.RoleCache[arg] = str
					tbl5.RoleCacheTime[arg] = tick()
					return str
				end,
				RoleColor = function(arg)
					if arg == "Murderer" then
						return Color3.fromRGB(255, 0, 0)
					end

					if arg == "Sheriff" then
						return Color3.fromRGB(0, 100, 255)
					end

					if arg == "Hero" then
						return Color3.fromRGB(255, 255, 0)
					end
					return Color3.fromRGB(0, 255, 0)
				end,
				InitRoles = function()
					task.spawn(function()
						pcall(function()
							tbl5.RoundClient = require(ReplicatedStorage:WaitForChild("Modules", 10):WaitForChild("CurrentRoundClient", 10))
							tbl5.UpdateRoles()
						end)

						local gameplay = nil

						pcall(function()
							gameplay = ReplicatedStorage:WaitForChild("Remotes", 10):WaitForChild("Gameplay", 10)
						end)

						if gameplay then
							local roleSelect = gameplay:FindFirstChild("RoleSelect")

							if roleSelect then
								utils.Connections(roleSelect.OnClientEvent, function()
									cached.MurderStat.Kills = 0
									cached.MurderStat.KnifeShown = false
									task.spawn(tbl5.UpdateRoles)
								end, "MM2_RoleSelect")
							end

							local playerDataChanged = gameplay:FindFirstChild("PlayerDataChanged")

							if playerDataChanged then
								utils.Connections(playerDataChanged.OnClientEvent, function()
									task.spawn(tbl5.UpdateRoles)
								end, "MM2_PlayerDataChanged")
							end
						end

						task.spawn(function()
							local v6

							while not shx.Unloaded do
								task.wait(3)
								local roundClient = tbl5.RoundClient

								if roundClient and roundClient.PlayerData then
									local str = ""

									for k, value5 in pairs(roundClient.PlayerData) do
										if value5.Role then
											str ..= k .. "=" .. value5.Role .. ";"
										end
									end

									if v6 ~= nil and str ~= v6 then
										task.spawn(tbl5.UpdateRoles)
										v6 = str
									else
										v6 = str
									end
								end
							end
						end)
					end)
				end,
				GetMurderer = function()
					for _, player in ipairs(Players:GetPlayers()) do
						local backpack = player:FindFirstChild("Backpack")
						if backpack and backpack:FindFirstChild("Knife") then
							return player
						end
					end

					for _, player in ipairs(Players:GetPlayers()) do
						if player.Character and player.Character:FindFirstChild("Knife") then
							return player
						end
					end

					return nil
				end,
				GetSheriff = function()
					for _, player in ipairs(Players:GetPlayers()) do
						local backpack = player:FindFirstChild("Backpack")
						if backpack and backpack:FindFirstChild("Gun") then
							return player
						end
					end

					for _, player in ipairs(Players:GetPlayers()) do
						if player.Character and player.Character:FindFirstChild("Gun") then
							return player
						end
					end

					return nil
				end,
				GetOtherSheriff = function()
					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer then
							local backpack = player:FindFirstChild("Backpack")
							if backpack and backpack:FindFirstChild("Gun") then
								return player
							end
						end
					end

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Gun") then
							return player
						end
					end

					return nil
				end,
				GetCurrentMap = function()
					for _, child in ipairs(Workspace:GetChildren()) do
						if child:GetAttribute("MapID") then
							return child
						end
					end
					--[=[ 𝖲𝗈𝗎𝗋𝖼𝖾 𝖫𝖾𝖺𝗄 (𝖲𝖫) ]=] -- discord.gg/x7YbZeezpm

					for _, child in ipairs(Workspace:GetChildren()) do
						if child:FindFirstChild("CoinContainer") and child:FindFirstChild("Spawns") then
							return child
						end
					end

					return nil
				end,
				GetNearestPlayer = function()
					local humanoidRootPart2 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
					local huge = math.huge
					local value6 = nil

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer and player.Character then
							local humanoidRootPart3 = player.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart2 and humanoidRootPart3 then
								local magnitude = (humanoidRootPart2.Position - humanoidRootPart3.Position).Magnitude

								if magnitude < huge then
									huge = magnitude
									value6 = player
								end
							end
						end
					end

					return value6
				end,
				PredictPosition = function(arg, arg2)
					pcall(function()
						arg = arg.Character
					end)

					if arg then
						local upperTorso = arg:FindFirstChild("UpperTorso") or arg:FindFirstChild("HumanoidRootPart")
						local humanoid2 = arg:FindFirstChild("Humanoid")
						if upperTorso and humanoid2 then
							return upperTorso.Position + upperTorso.AssemblyLinearVelocity * Vector3.new(0.75, 0.5, 0.75) * arg2 / 15 + humanoid2.MoveDirection * arg2
						end
					end

					return Vector3.zero
				end,
				PredictTarget = function(arg)
					local character2 = arg.Character
					if not character2 then
						return nil
					end
					local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
					local humanoid2 = character2:FindFirstChildOfClass("Humanoid")
					if not humanoidRootPart2 or not humanoid2 then
						return nil
					end
					local position = humanoidRootPart2.Position
					local assemblyLinearVelocity = humanoidRootPart2.AssemblyLinearVelocity or Vector3.zero
					local moveDirection = humanoid2.MoveDirection or Vector3.zero
					local n = position + assemblyLinearVelocity * 0.18 * (2.5 + tbl5.GetPing() / 1000) + moveDirection * 4

					if assemblyLinearVelocity.Y > 5 then
						n += Vector3.new(0, assemblyLinearVelocity.Y * 0.4, 0) + moveDirection * 2.5
					elseif assemblyLinearVelocity.Y < -5 then
						local n2 = assemblyLinearVelocity.Unit * 2
						n += Vector3.new(0, assemblyLinearVelocity.Y * 0.25, 0) + n2
					end

					if assemblyLinearVelocity.Magnitude > 30 then
						n += assemblyLinearVelocity.Unit * 1.5
					end

					if moveDirection.Magnitude > 0.1 then
						n += moveDirection * assemblyLinearVelocity.Magnitude * 0.02
					end

					return n
				end,
				PredictSniper = function(arg)
					local character2 = arg.Character
					if not character2 then
						return nil
					end
					local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
					local humanoid2 = character2:FindFirstChildOfClass("Humanoid")
					if not humanoidRootPart2 or not humanoid2 then
						return nil
					end
					local position = humanoidRootPart2.Position
					local assemblyLinearVelocity = humanoidRootPart2.AssemblyLinearVelocity or Vector3.zero
					local now = tick()
					local tbl6 = tbl5.VelocityHistory[arg]

					if not tbl6 then
						tbl6 = {}
						tbl5.VelocityHistory[arg] = tbl6
					end

					table.insert(tbl6, { time = now, pos = position, vel = assemblyLinearVelocity })

					if #tbl6 > 5 then
						table.remove(tbl6, 1)
					end

					if not (#tbl6 < 3) then
						local entry = tbl6[#tbl6 - 2]
						local entry2 = tbl6[#tbl6 - 1]
						local entry3 = tbl6[#tbl6]
						local n = entry2.time - entry.time
						local n2 = entry3.time - entry2.time

						if n > 0 and n2 > 0 then
							local n3 = (entry3.pos - entry2.pos) / n2
							local n4 = (n3 - (entry2.pos - entry.pos) / n) / (n + n2) / 2
							local v9 = tbl5.GetPing()

							if not (assemblyLinearVelocity.Y > 5) then
								if not (assemblyLinearVelocity.Y < -5) then
									return position + n3 * 0.2 * (1.15 + v9 / 1000) + n4 * (0.2 * (1.15 + v9 / 1000)) ^ 2 / 2
								end
								local n5 = Workspace.Gravity * 0.9
								local n6 = math.abs(assemblyLinearVelocity.Y) / n5
								local n7 = position + assemblyLinearVelocity * n6 + Vector3.new(0, -Workspace.Gravity * n6 ^ 2 / 2, 0)
								local z = n7.Z
								return Vector3.new(n7.X, math.max(n7.Y, position.Y - 10), z) + n3 * 0.1
							end
							-- join us: https://discord.gg/x7YbZeezpm

							local n5 = assemblyLinearVelocity.Y / Workspace.Gravity * 1.1
							return position + assemblyLinearVelocity * n5 + Vector3.new(0, -Workspace.Gravity * n5 ^ 2 / 2, 0) + n3 * math.min(n5 + 0.05, 0.25)
						end

						return position + assemblyLinearVelocity * 0.2
					end

					return position + assemblyLinearVelocity * 0.2 * (2.5 + tbl5.GetPing() / 1000) + (humanoid2.MoveDirection or Vector3.zero) * 4.5
				end,
				EquipKnife = function()
					local character2 = localPlayer.Character
					if not character2 then
						return nil
					end

					if not character2:FindFirstChild("Knife") then
						local knife = localPlayer.Backpack and localPlayer.Backpack:FindFirstChild("Knife")

						if knife then
							local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								humanoid2:EquipTool(knife)
								task.wait(0.1)
							end
						end
					end

					return character2:FindFirstChild("Knife")
				end,
				ShootMurderer = function()
					if tbl5.GetSheriff() ~= localPlayer then
						fn3("You are not sheriff", "MM2")
						return
					end
					local v6 = tbl5.GetMurderer() or tbl5.GetOtherSheriff()
					if not v6 then
						fn3("No murderer to shoot", "MM2")
						return
					end
					local character2 = localPlayer.Character
					local humanoid2 = character2 and character2:FindFirstChild("Humanoid")

					if not character2:FindFirstChild("Gun") then
						if not localPlayer.Backpack:FindFirstChild("Gun") then
							fn3("You don't have the gun", "MM2")
							return
						end
						humanoid2:EquipTool(localPlayer.Backpack:FindFirstChild("Gun"))
						task.wait(0.05)
					end

					local character3 = v6.Character
					if not character3 or not character3:FindFirstChild("HumanoidRootPart") then
						return
					end
					local gun = character2:WaitForChild("Gun")
					local shootEvent = gun:FindFirstChild("ShootEvent") or gun:FindFirstChild("Shoot")
					if not shootEvent then
						return
					end
					local flag = enabled["Shoot Mode"] == "Sniper" and tbl5.PredictSniper(v6) or tbl5.PredictTarget(v6)
					if not flag then
						return
					end
					local torso

					if enabled["Magic Bullet"] then
						torso = character3:FindFirstChild("Torso") or character3:FindFirstChild("UpperTorso")
						torso = torso and torso.Position or character3.HumanoidRootPart.Position
					else
						torso = character2:FindFirstChild("HumanoidRootPart")
						local upperTorso = character2:FindFirstChild("UpperTorso")
						torso = torso and torso.Position or upperTorso and upperTorso.Position or flag
					end

					local cframe = CFrame.new
					shootEvent:FireServer(CFrame.new(torso, flag), cframe(flag))
				end,
				KillAll = function()
					local v6 = tbl5.EquipKnife()
					if not v6 then
						fn3("You don't have the knife", "MM2")
						return
					end
					local handle = v6:FindFirstChild("Handle")
					if not handle then
						return
					end
					local events = v6:FindFirstChild("Events")

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
							local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

							pcall(function()
								firetouchinterest(handle, humanoidRootPart2, 1)
								firetouchinterest(handle, humanoidRootPart2, 0)
							end)

							if events then
								local handleTouched = events:FindFirstChild("HandleTouched")

								if handleTouched then
									pcall(handleTouched.FireServer, handleTouched, humanoidRootPart2)
								end

								local knifeStabbed = events:FindFirstChild("KnifeStabbed")

								if knifeStabbed then
									pcall(knifeStabbed.FireServer, knifeStabbed)
								end
							end

							RunService.Heartbeat:Wait()
						end
					end
				end,
				KillSheriff = function()
					local v6 = tbl5.GetSheriff()
					if not v6 or v6 == localPlayer then
						fn3("Sheriff not found", "MM2")
						return
					end
					local v7 = tbl5.EquipKnife()
					if not v7 then
						fn3("You don't have the knife", "MM2")
						return
					end
					local handle = v7:FindFirstChild("Handle")
					local events = v7:FindFirstChild("Events")
					local humanoidRootPart2 = v6.Character and v6.Character:FindFirstChild("HumanoidRootPart")
					if not handle or not humanoidRootPart2 then
						return
					end

					pcall(function()
						firetouchinterest(handle, humanoidRootPart2, 1)
						firetouchinterest(handle, humanoidRootPart2, 0)
					end)

					if events then
						local handleTouched = events:FindFirstChild("HandleTouched")

						if handleTouched then
							pcall(handleTouched.FireServer, handleTouched, humanoidRootPart2)
						end

						local knifeStabbed = events:FindFirstChild("KnifeStabbed")

						if knifeStabbed then
							pcall(knifeStabbed.FireServer, knifeStabbed)
						end
					end
				end,
				ThrowKnife = function(arg)
					if tbl5.GetMurderer() ~= localPlayer then
						if not arg then
							fn3("You are not murderer", "MM2")
						end

						return
					end

					local character2 = localPlayer.Character
					local humanoid2 = character2:FindFirstChild("Humanoid")

					if not character2:FindFirstChild("Knife") then
						if not localPlayer.Backpack:FindFirstChild("Knife") then
							if not arg then
								fn3("You don't have the knife", "MM2")
							end

							return
						end

						humanoid2:EquipTool(localPlayer.Backpack:FindFirstChild("Knife"))
					end

					local v6 = tbl5.GetNearestPlayer()

					if v6 and v6.Character and v6.Character:FindFirstChild("HumanoidRootPart") then
						local knifeThrown = character2:WaitForChild("Knife"):WaitForChild("Events"):WaitForChild("KnifeThrown")
						local fireServer = knifeThrown.FireServer
						local cframe = CFrame.new(character2.RightHand.Position)
						local packed = table.pack(CFrame.new(tbl5.PredictPosition(v6, 3.8)))
						packed.n = 3 + packed.n - 1
						table.move(packed, 1, packed.n, 3, packed)
						packed[1] = knifeThrown
						packed[2] = cframe
						fireServer(table.unpack(packed, 1, packed.n))
					end
				end,
				GetDroppedGun = function()
					local backpack = localPlayer:FindFirstChild("Backpack")

					if (not backpack or not backpack:FindFirstChild("Knife")) and (not localPlayer.Character or not localPlayer.Character:FindFirstChild("Knife")) then
						local character2 = localPlayer.Character
						local flag = true

						if character2 then
							local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
							flag = not humanoidRootPart2 or (humanoidRootPart2.Position - cached.SpawnPoint).Magnitude < 3000
						end

						if flag then
							local v6 = tbl5.GetCurrentMap()

							if v6 and v6:FindFirstChild("GunDrop") then
								local character3 = localPlayer.Character

								if character3 then
									local pivot = character3:GetPivot()
									character3:PivotTo(v6.GunDrop:GetPivot())
									localPlayer.Backpack.ChildAdded:Wait()
									character3:PivotTo(pivot)
									fn3("Dropped gun has been get", "MM2")
									return
								end
							end

							fn3("Dropped gun not found", "MM2")
							return
						end

						fn3("You cant get gun when not in game", "MM2")
						return
					end

					fn3("You are the murderer", "MM2")
				end,
				WaitTween = function(arg, arg2, arg3)
					local tween = TweenService:Create(arg, arg2, arg3)

					if tween then
						tween:Play()
						tween.Completed:Wait()
					end
				end,
				EnsureGetCoin = function()
					if not tbl5.GetCoinRemote then
						pcall(function()
							tbl5.GetCoinRemote = ReplicatedStorage:WaitForChild("Remotes", 10):WaitForChild("Gameplay", 10):WaitForChild("GetCoin", 10)
						end)
					end
					--[=[ ＳＬ ]=] -- discord.gg/x7YbZeezpm

					return tbl5.GetCoinRemote
				end,
				AutoFarmStep = function()
					if not tbl5.EnsureGetCoin() then
						return
					end
					local character2 = localPlayer.Character
					if not character2 then
						return
					end
					local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart2 then
						return
					end

					for _, descendant in ipairs(character2:GetDescendants()) do
						if descendant:IsA("BasePart") then
							descendant.CanCollide = false
						end
					end

					local n = 400
					local value7 = nil

					for _, item in ipairs(CollectionService:GetTagged("CoinVisual")) do
						if item and item.Parent and not item:GetAttribute("Collected") and not item:GetAttribute("Delete") then
							local magnitude = (humanoidRootPart2.Position - item.Position).Magnitude

							if magnitude < n then
								n = magnitude
								value7 = item
							end
						end
					end

					if not value7 then
						return
					end
					local position = value7.Position
					local attribute = value7:GetAttribute("CoinID")
					if not attribute then
						return
					end

					if not humanoidRootPart2.Parent then
						return
					end
					local vector = Vector3.new(position.X, position.Y - 6, position.Z)
					local max = math.max
					local n2 = tonumber(enabled["Farm Speed"]) or 23
					local sine = Enum.EasingStyle.Sine
					local inOut = Enum.EasingDirection.InOut
					tbl5.WaitTween(humanoidRootPart2, TweenInfo.new(math.max((humanoidRootPart2.Position - vector).Magnitude / max(n2, 1), 0.1), sine, inOut), { CFrame = CFrame.new(vector) })
					tbl5.WaitTween(humanoidRootPart2, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { CFrame = CFrame.new(position + Vector3.new(0, 3, 0)) })

					pcall(function()
						tbl5.GetCoinRemote:FireServer(attribute)
					end)

					task.wait(0.05)
					tbl5.WaitTween(humanoidRootPart2, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), { CFrame = CFrame.new(vector) })
				end,
				TPToGunDrop = function()
					local character2 = localPlayer.Character
					character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
					local gunDrop = tbl5.GetCurrentMap()
					gunDrop = gunDrop and gunDrop:FindFirstChild("GunDrop")

					if character2 and gunDrop then
						local position = gunDrop:IsA("BasePart") and gunDrop.Position or gunDrop:GetPivot().Position
						local cFrame = character2.CFrame
						character2.CFrame = CFrame.new(position + Vector3.new(0, 3, 0))
						task.wait(0.15)

						if cFrame then
							character2.CFrame = cFrame
						end
					end
				end,
				EmoteNames = {
					sit = "Sit",
					ninja = "Ninja Rest",
					zen = "Zen",
					dab = "Dab",
					floss = "Floss",
					zombie = "Zombie",
					headless = "Headless",
					wave = "Wave",
					cheer = "Cheer",
					laugh = "Laugh",
					point = "Point",
					dance1 = "Dance 1",
					dance2 = "Dance 2",
					dance3 = "Dance 3",
				},
				EmoteKey = function(arg)
					for k, emoteName in pairs(tbl5.EmoteNames) do
						if emoteName == arg then
							return k
						end
					end

					return arg
				end,
				PlayEmote = function(arg)
					local remotes = ReplicatedStorage:FindFirstChild("Remotes")
					remotes = remotes and remotes:FindFirstChild("Misc")
					remotes = remotes and remotes:FindFirstChild("PlayEmote") or ReplicatedStorage:FindFirstChild("PlayEmote", true)

					if remotes then
						remotes:Fire(arg)
					end
				end,
				NightMode = function(arg)
					local night = cached.LightingSave.Night

					if arg then
						if not night then
							local night2 = {}
							cached.LightingSave.Night = night2

							for _, item2 in ipairs({
								"FogColor",
								"FogEnd",
								"FogStart",
								"Ambient",
								"OutdoorAmbient",
								"ColorShift_Top",
								"ColorShift_Bottom",
								"ClockTime",
								"ExposureCompensation",
								"Brightness",
							}) do
								night2[item2] = Lighting[item2]
							end
						end

						Lighting.FogColor = Color3.fromRGB(20, 20, 40)
						Lighting.FogEnd = 80
						Lighting.FogStart = 20
						Lighting.Ambient = Color3.fromRGB(30, 30, 60)
						Lighting.OutdoorAmbient = Color3.fromRGB(30, 30, 60)
						Lighting.ColorShift_Top = Color3.fromRGB(10, 10, 30)
						Lighting.ColorShift_Bottom = Color3.fromRGB(5, 5, 15)
						Lighting.ClockTime = 0
						Lighting.ExposureCompensation = -0.3
						Lighting.Brightness = 1.5
					elseif night then
						for k, value8 in pairs(night) do
							pcall(function()
								Lighting[k] = value8
							end)
						end

						cached.LightingSave.Night = nil
					end
				end,
				LowGraphics = function(arg)
					local low = cached.MaterialSave.Low

					if arg then
						if not low then
							low = {}
							cached.MaterialSave.Low = low
						end

						for _, descendant in ipairs(Workspace:GetDescendants()) do
							if descendant:IsA("BasePart") and descendant.Material ~= Enum.Material.SmoothPlastic then
								low[descendant] = descendant.Material
								descendant.Material = Enum.Material.SmoothPlastic
							end
						end

						Lighting.GlobalShadows = false
						Lighting.Brightness = 1
					else
						if low then
							for k, value9 in pairs(low) do
								if k and k.Parent then
									pcall(function()
										k.Material = value9
									end)
								end
							end

							cached.MaterialSave.Low = nil
						end

						Lighting.GlobalShadows = true
						Lighting.Brightness = 2
					end
				end,
				HighGraphics = function(arg)
					local high = cached.LightingSave.High
					local high2 = cached.MaterialSave.High

					if arg then
						if not high then
							local high3 = {}
							cached.LightingSave.High = high3
							high2 = {}
							cached.MaterialSave.High = high2

							for _, item3 in ipairs({
								"GlobalShadows",
								"ShadowSoftness",
								"Brightness",
								"EnvironmentSpecularScale",
								"EnvironmentDiffuseScale",
								"Outlines",
								"Ambient",
								"OutdoorAmbient",
								"ColorShift_Top",
								"ColorShift_Bottom",
							}) do
								high3[item3] = Lighting[item3]
							end
						end

						Lighting.GlobalShadows = true
						Lighting.ShadowSoftness = 1
						Lighting.Brightness = 2.5
						Lighting.EnvironmentSpecularScale = 2
						Lighting.EnvironmentDiffuseScale = 2
						Lighting.Outlines = true
						Lighting.Ambient = Color3.fromRGB(180, 190, 210)
						Lighting.OutdoorAmbient = Color3.fromRGB(160, 175, 200)
						Lighting.ColorShift_Top = Color3.fromRGB(255, 220, 180)
						Lighting.ColorShift_Bottom = Color3.fromRGB(80, 100, 150)

						for _, descendant in ipairs(Workspace:GetDescendants()) do
							if descendant:IsA("BasePart") then
								if descendant.Material == Enum.Material.Plastic then
									descendant.Material = Enum.Material.SmoothPlastic
								elseif descendant.Material == Enum.Material.Wood then
									descendant.Material = Enum.Material.WoodPlanks
								elseif descendant.Material == Enum.Material.Concrete then
									descendant.Material = Enum.Material.Slate
								end

								if not high2[descendant] then
									high2[descendant] = descendant.Material
								end
							end
						end
					else
						if high then
							for k, value10 in pairs(high) do
								pcall(function()
									Lighting[k] = value10
								end)
							end

							cached.LightingSave.High = nil
						end

						if high2 then
							for k, value11 in pairs(high2) do
								if k and k.Parent then
									pcall(function()
										k.Material = value11
									end)
								end
							end

							cached.MaterialSave.High = nil
						end
					end
				end,
				SpeedGlitchSetup = function(arg)
					local humanoid2 = arg:FindFirstChild("Humanoid") or arg:WaitForChild("Humanoid", 5)
					if not humanoid2 then
						return
					end

					if cached.SpeedGlitchConnection then
						cached.SpeedGlitchConnection:Disconnect()
						cached.SpeedGlitchConnection = nil
					end

					cached.SpeedGlitchCache.WalkSpeed = -1
					cached.SpeedGlitchCache.JumpPower = -1

					cached.SpeedGlitchConnection = RunService.Heartbeat:Connect(function()
						if humanoid2 and humanoid2.Parent then
							local walkSpeed = 16

							if enabled["Speed Glitch"] then
								local state = humanoid2:GetState()

								if (state == Enum.HumanoidStateType.Jumping or state == Enum.HumanoidStateType.Freefall) and humanoid2.MoveDirection.Magnitude > 0 then
									walkSpeed = enabled["Speed Value"]
								end
							end

							local speedGlitchCache = cached.SpeedGlitchCache

							if walkSpeed ~= speedGlitchCache.WalkSpeed then
								humanoid2.WalkSpeed = walkSpeed
								speedGlitchCache.WalkSpeed = walkSpeed
							end

							if 50 ~= speedGlitchCache.JumpPower then
								humanoid2.JumpPower = 50
								speedGlitchCache.JumpPower = 50
							end
						end
					end)
				end,
				SpeedGlitchReset = function()
					if cached.SpeedGlitchConnection then
						cached.SpeedGlitchConnection:Disconnect()
						cached.SpeedGlitchConnection = nil
					end

					cached.SpeedGlitchCache.WalkSpeed = -1
					cached.SpeedGlitchCache.JumpPower = -1
					local character2 = localPlayer.Character
					character2 = character2 and character2:FindFirstChildOfClass("Humanoid")

					if character2 then
						character2.WalkSpeed = 16
						character2.JumpPower = 50
					end
				end,
				ReduceQuality = function(arg)
					if not arg:IsA("BasePart") then
						if arg:IsA("Decal") or arg:IsA("Texture") or arg:IsA("ParticleEmitter") or arg:IsA("Trail") or arg:IsA("Smoke") or arg:IsA("Fire") or arg:IsA("Sparkles") then
							arg:Destroy()
						end

						return
					end

					arg.Material = Enum.Material.SmoothPlastic
					arg.CastShadow = false
				end,
				FPSBoost = function()
					if cached.FPSBoosted then
						return
					end
					cached.FPSBoosted = true
					Lighting.GlobalShadows = false
					Lighting.FogEnd = 9e9
					Lighting.Brightness = 1

					for _, child in ipairs(Lighting:GetChildren()) do
						if child:IsA("BlurEffect") or child:IsA("SunRaysEffect") or child:IsA("ColorCorrectionEffect") or child:IsA("BloomEffect") or child:IsA("DepthOfFieldEffect") then
							child:Destroy()
						end
					end

					pcall(function()
						settings().Rendering.QualityLevel = 1
					end)

					for _, descendant in ipairs(Workspace:GetDescendants()) do
						tbl5.ReduceQuality(descendant)
					end

					utils.Connections(Workspace.DescendantAdded, function(arg)
						tbl5.ReduceQuality(arg)
					end, "MM2_FPSBoost")
				end,
				CreateStopGui = function()
					cached.Fling.Stop = false
					if cached.Fling.Gui then
						return
					end
					local screenGui = Instance.new("ScreenGui")
					screenGui.Name = "FlingStopGui"
					screenGui.ResetOnSpawn = false
					screenGui.Parent = CoreGui
					local frame = Instance.new("Frame")
					frame.Size = UDim2.new(0, 160, 0, 45)
					frame.Position = UDim2.new(0.5, -80, 1, -120)
					frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
					frame.BorderSizePixel = 0
					frame.Active = true
					frame.Parent = screenGui
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 8)
					uiCorner.Parent = frame
					local uiStroke = Instance.new("UIStroke")
					uiStroke.Color = Color3.fromRGB(255, 255, 255)
					uiStroke.Thickness = 2
					uiStroke.Parent = frame
					local textButton = Instance.new("TextButton")
					textButton.Size = UDim2.new(1, 0, 1, 0)
					textButton.BackgroundTransparency = 1
					textButton.Text = "Stop Fling"
					textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					textButton.Font = Enum.Font.GothamBold
					textButton.TextSize = 15
					textButton.Parent = frame

					textButton.MouseButton1Click:Connect(function()
						cached.Fling.Stop = true
					end)

					cached.Fling.Gui = screenGui
				end,
				RestoreAfterFling = function()
					if cached.Fling.Gui then
						cached.Fling.Gui:Destroy()
						cached.Fling.Gui = nil
					end

					local savedPosition = cached.Fling.SavedPosition

					if savedPosition then
						local character2 = localPlayer.Character
						local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")
						local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")

						if humanoidRootPart2 then
							local now = tick()

							while true do
								humanoidRootPart2.CFrame = savedPosition * CFrame.new(0, 0.5, 0)
								character2:SetPrimaryPartCFrame(savedPosition * CFrame.new(0, 0.5, 0))

								if humanoid2 then
									humanoid2:ChangeState(Enum.HumanoidStateType.GettingUp)
								end

								for _, child in ipairs(character2:GetChildren()) do
									if child:IsA("BasePart") then
										child.Velocity = Vector3.zero
										child.RotVelocity = Vector3.zero
									end
								end

								task.wait()
								if not ((humanoidRootPart2.Position - savedPosition.Position).Magnitude < 25 or tick() - now > 3) then
									continue
								end
								break
							end
						end

						cached.Fling.SavedPosition = nil
					end

					pcall(function()
						Workspace.FallenPartsDestroyHeight = getgenv().FPDH or -500
					end)
				end,
				Fling = function(arg, arg2)
					if cached.Fling.Stop then
						return
					end
					local character2 = localPlayer.Character
					local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")
					local rootPart = humanoid2 and humanoid2.RootPart
					local character3 = arg.Character
					local humanoid3 = character3 and character3:FindFirstChildOfClass("Humanoid")
					local rootPart2 = humanoid3 and humanoid3.RootPart
					local head = character3 and character3:FindFirstChild("Head")
					local accessory = character3 and character3:FindFirstChildOfClass("Accessory")
					accessory = accessory and accessory:FindFirstChild("Handle")

					if character2 and humanoid2 and rootPart then
						if rootPart.Velocity.Magnitude < 50 then
							cached.Fling.OldPosition = rootPart.CFrame
						end

						if humanoid3 and humanoid3.Sit then
							return
						end

						if head then
							if head.Velocity.Magnitude > 500 then
								return
							end
						elseif accessory then
							if accessory.Velocity.Magnitude > 500 then
								return
							end
						end

						if head then
							Workspace.CurrentCamera.CameraSubject = head
						elseif accessory then
							Workspace.CurrentCamera.CameraSubject = accessory
						elseif humanoid3 and rootPart2 then
							Workspace.CurrentCamera.CameraSubject = humanoid3
						end

						if not character3:FindFirstChildWhichIsA("BasePart") then
							return
						end

						local function fn9(arg3, arg4, arg5)
							rootPart.CFrame = CFrame.new(arg3.Position) * arg4 * arg5
							character2:SetPrimaryPartCFrame(CFrame.new(arg3.Position) * arg4 * arg5)
							rootPart.Velocity = Vector3.new(90000000, 900000000, 90000000)
							rootPart.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
						end

						local function fn10(arg3)
							local now = tick()
							local n = 0

							while not cached.Fling.Stop and rootPart and humanoid3 do
								local magnitude = rootPart.Velocity.Magnitude
								local moveDirection = humanoid3.MoveDirection

								if not (arg3.Velocity.Magnitude < 50) then
									local cframe = CFrame.Angles
									fn9(arg3, CFrame.new(0, 3, humanoid2.WalkSpeed), cframe(1.5707963267948966, 0, 0))
									task.wait()
									local cframe2 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 1.5, humanoid2.WalkSpeed), cframe2(1.5707963267948966, 0, 0))
									task.wait()
									local cframe3 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 0, humanoid2.WalkSpeed), cframe3(1.5707963267948966, 0, 0))
									task.wait()
									local cframe4 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 3, magnitude / 1.25), cframe4(1.5707963267948966, 0, 0))
									task.wait()
									local cframe5 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 1.5, magnitude / 1.25), cframe5(1.5707963267948966, 0, 0))
									task.wait()
									local cframe6 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 0, magnitude / 1.25), cframe6(1.5707963267948966, 0, 0))
									task.wait()
								else
									n += 100
									local cframe = CFrame.Angles
									fn9(arg3, CFrame.new(0, 3, 0) + moveDirection * magnitude / 1.25, cframe(math.rad(n), 0, 0))
									task.wait()
									local cframe2 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 1.5, 0) + moveDirection * magnitude / 1.25, cframe2(math.rad(n), 0, 0))
									task.wait()
									local cframe3 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 0, 0) + moveDirection * magnitude / 1.25, cframe3(math.rad(n), 0, 0))
									task.wait()
									local cframe4 = CFrame.Angles
									fn9(arg3, CFrame.new(2.25, 3, -2.25) + moveDirection * magnitude / 1.25, cframe4(math.rad(n), 0, 0))
									task.wait()
									local cframe5 = CFrame.Angles
									fn9(arg3, CFrame.new(1.125, 1.5, -1.125) + moveDirection * magnitude / 1.25, cframe5(math.rad(n), 0, 0))
									task.wait()
									local cframe6 = CFrame.Angles
									fn9(arg3, CFrame.new(0, 0, 0) + moveDirection * magnitude / 1.25, cframe6(math.rad(n), 0, 0))
									task.wait()
								end

								if arg3.Velocity.Magnitude > 500 or cached.Fling.Stop or arg3.Parent ~= character3 or arg.Parent ~= Players or arg.Character ~= character3 or humanoid3.Sit or humanoid2.Health <= 0 or tick() > now + 2 then
									return
								end
							end
						end

						cached.Fling.SavedFPDH = Workspace.FallenPartsDestroyHeight
						Workspace.FallenPartsDestroyHeight = (0/0)
						local bodyVelocity = Instance.new("BodyVelocity")
						bodyVelocity.Name = "EpixVel"
						bodyVelocity.Parent = rootPart
						bodyVelocity.Velocity = Vector3.new(900000000, 900000000, 900000000)
						bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						humanoid2:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

						if rootPart2 and head and (rootPart2.CFrame.Position - head.CFrame.Position).Magnitude <= 5 then
							fn10(rootPart2)
						elseif head then
							fn10(head)
						elseif rootPart2 then
							fn10(rootPart2)
						elseif accessory then
							fn10(accessory)
						end

						bodyVelocity:Destroy()
						humanoid2:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
						Workspace.CurrentCamera.CameraSubject = humanoid2

						if not arg2 then
							local oldPosition = cached.Fling.OldPosition

							if oldPosition then
								local now = tick()

								while true do
									rootPart.CFrame = oldPosition * CFrame.new(0, 0.5, 0)
									character2:SetPrimaryPartCFrame(oldPosition * CFrame.new(0, 0.5, 0))
									humanoid2:ChangeState("GettingUp")

									for _, child in ipairs(character2:GetChildren()) do
										if child:IsA("BasePart") then
											child.Velocity = Vector3.new()
											child.RotVelocity = Vector3.new()
										end
									end

									task.wait()
									if not ((rootPart.Position - oldPosition.Position).Magnitude < 25 or tick() - now > 3 or cached.Fling.Stop) then
										continue
									end
									break
								end
							end
						end

						Workspace.FallenPartsDestroyHeight = cached.Fling.SavedFPDH
					end
				end,
				FlingAll = function()
					if cached.Fling.Active then
						return
					end
					cached.Fling.Active = true
					local character2 = localPlayer.Character
					character2 = character2 and character2:FindFirstChild("HumanoidRootPart")

					if character2 then
						cached.Fling.SavedPosition = character2.CFrame
					end

					tbl5.CreateStopGui()

					task.spawn(function()
						for _, player in ipairs(Players:GetPlayers()) do
							if not cached.Fling.Stop then
								if player ~= localPlayer then
									pcall(tbl5.Fling, player, true)
								end

								continue
							end

							break
						end

						tbl5.RestoreAfterFling()
						cached.Fling.Active = false
					end)
				end,
				CreateTeleportTool = function()
					local tool = Instance.new("Tool")
					tool.RequiresHandle = false
					tool.Name = "Teleport Tool"
					-- 𝖲𝖫 | 𝖲𝗈𝗎𝗋𝖼𝖾 𝖫𝖾𝖺𝗄 | https://discord.gg/x7YbZeezpm

					tool.Activated:Connect(function()
						local p = localPlayer:GetMouse().Hit.p

						if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
							localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(p + Vector3.new(0, 3, 0))
						end
					end)

					tool.Parent = localPlayer.Backpack
				end,
				DestroyTeleportTool = function()
					local backpack = localPlayer:FindFirstChild("Backpack")

					if backpack and backpack:FindFirstChild("Teleport Tool") then
						backpack:FindFirstChild("Teleport Tool"):Destroy()
					end

					if localPlayer.Character and localPlayer.Character:FindFirstChild("Teleport Tool") then
						localPlayer.Character:FindFirstChild("Teleport Tool"):Destroy()
					end
				end,
				CreateNoclipTool = function()
					local tool = Instance.new("Tool")
					tool.RequiresHandle = false
					tool.Name = "Noclip Tool"
					local connection = nil

					tool.Equipped:Connect(function()
						connection = RunService.Stepped:Connect(function()
							if localPlayer.Character then
								for _, descendant in pairs(localPlayer.Character:GetDescendants()) do
									if descendant:IsA("BasePart") then
										descendant.CanCollide = false
									end
								end
							end
						end)
					end)

					tool.Unequipped:Connect(function()
						if connection then
							connection:Disconnect()
							connection = nil
						end
						-- Ｓｏｕｒｃｅ Ｌｅａｋ (ＳＬ) | https://discord.gg/x7YbZeezpm

						if localPlayer.Character then
							for _, descendant in pairs(localPlayer.Character:GetDescendants()) do
								if descendant:IsA("BasePart") then
									descendant.CanCollide = true
								end
							end
						end
					end)

					tool.Parent = localPlayer.Backpack
				end,
				DestroyNoclipTool = function()
					local backpack = localPlayer:FindFirstChild("Backpack")

					if backpack and backpack:FindFirstChild("Noclip Tool") then
						backpack:FindFirstChild("Noclip Tool"):Destroy()
					end

					if localPlayer.Character and localPlayer.Character:FindFirstChild("Noclip Tool") then
						localPlayer.Character:FindFirstChild("Noclip Tool"):Destroy()
					end
				end,
				CreateKnifeButton = function()
					if cached.KnifeButtonGui then
						return
					end
					local screenGui = Instance.new("ScreenGui")
					screenGui.Name = "KnifeThrowGui"
					screenGui.ResetOnSpawn = false
					screenGui.Parent = CoreGui
					local imageButton = Instance.new("ImageButton")
					imageButton.Size = UDim2.new(0, 105, 0, 105)
					imageButton.Position = UDim2.new(0.88, -52, 0.7, -52)
					imageButton.BackgroundColor3 = Color3.fromRGB(255, 100, 50)
					imageButton.BackgroundTransparency = 0.15
					imageButton.Image = "rbxassetid://10734975486"
					imageButton.ScaleType = Enum.ScaleType.Fit
					imageButton.Draggable = true
					imageButton.Active = true
					imageButton.ZIndex = 999
					imageButton.Parent = screenGui
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(1, 0)
					uiCorner.Parent = imageButton
					local uiStroke = Instance.new("UIStroke")
					uiStroke.Color = Color3.fromRGB(255, 100, 50)
					uiStroke.Thickness = 2
					uiStroke.Transparency = 0.5
					uiStroke.Parent = imageButton

					imageButton.MouseButton1Click:Connect(function()
						task.spawn(function()
							pcall(tbl5.ThrowKnife, false)
						end)
					end)

					cached.KnifeButtonGui = screenGui
				end,
				DestroyKnifeButton = function()
					if cached.KnifeButtonGui then
						cached.KnifeButtonGui:Destroy()
						cached.KnifeButtonGui = nil
					end
				end,
				CreateMurderStat = function()
					if cached.MurderStat.Gui then
						return
					end
					local screenGui = Instance.new("ScreenGui")
					screenGui.Name = "MurderStatGui"
					screenGui.ResetOnSpawn = false
					screenGui.Parent = CoreGui
					local frame = Instance.new("Frame")
					frame.Size = UDim2.new(0, 260, 0, 76)
					frame.Position = UDim2.new(0.5, -130, 0.2, 0)
					frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
					frame.BackgroundTransparency = 0.2
					frame.BorderSizePixel = 0
					frame.Active = true
					frame.Draggable = true
					frame.Parent = screenGui
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 8)
					uiCorner.Parent = frame
					local uiStroke = Instance.new("UIStroke")
					uiStroke.Color = Color3.fromRGB(255, 0, 0)
					uiStroke.Thickness = 2
					uiStroke.Parent = frame
					local textLabel = Instance.new("TextLabel")
					textLabel.Size = UDim2.new(1, 0, 0.4, 0)
					textLabel.Position = UDim2.new(0, 0, 0, 0)
					textLabel.BackgroundTransparency = 1
					textLabel.Text = "MURDERER STAT"
					textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
					textLabel.Font = Enum.Font.GothamBold
					textLabel.TextSize = 16
					textLabel.Parent = frame
					local textLabel2 = Instance.new("TextLabel")
					textLabel2.Size = UDim2.new(1, 0, 0.6, 0)
					textLabel2.Position = UDim2.new(0, 0, 0.4, 0)
					textLabel2.BackgroundTransparency = 1
					textLabel2.Text = "SHOW KNIFE : - | KILL : 0"
					textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
					textLabel2.Font = Enum.Font.GothamBold
					textLabel2.TextSize = 15
					textLabel2.Parent = frame
					cached.MurderStat.Gui = screenGui
					cached.MurderStat.Label = textLabel2
				end,
				DestroyMurderStat = function()
					if cached.MurderStat.Gui then
						cached.MurderStat.Gui:Destroy()
						cached.MurderStat.Gui = nil
						cached.MurderStat.Label = nil
					end
				end,
				MurderStatTick = function()
					local label = cached.MurderStat.Label
					if not label then
						return
					end
					local murderer = tbl5.Roles.Murderer or tbl5.GetMurderer()

					if murderer and murderer.Character and murderer.Character:FindFirstChild("Knife") then
						cached.MurderStat.KnifeShown = true
					end

					local str = cached.MurderStat.KnifeShown and "TRUE" or "FALSE"
					if not murderer then
						label.Text = "SHOW KNIFE : " .. str .. " | KILL : " .. cached.MurderStat.Kills
						return
					end
					label.Text = "SHOW KNIFE : " .. str .. " | KILL : " .. cached.MurderStat.Kills
					local tracked = cached.MurderStat.Tracked

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= murderer then
							local flag = player:GetAttribute("Alive") == true
							local entry4 = tracked[player]

							if not entry4 or entry4.Char ~= player.Character then
								tracked[player] = { Char = player.Character, Alive = flag }
							elseif entry4.Alive and not flag then
								cached.MurderStat.Kills = cached.MurderStat.Kills + 1
								entry4.Alive = false
							end
						end
					end
				end,
				AutoKnifeTick = function()
					local character2 = localPlayer.Character
					if not character2 then
						return
					end

					if tbl5.GetMurderer() ~= localPlayer then
						return
					end
					local knife = character2:FindFirstChild("Knife")

					if not knife then
						local knife2 = localPlayer.Backpack and localPlayer.Backpack:FindFirstChild("Knife")

						if knife2 then
							local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								humanoid2:EquipTool(knife2)
								task.wait(0.2)
							end
						end

						knife = character2:FindFirstChild("Knife")
						if not knife then
							return
						end
					end

					local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart2 then
						return
					end
					local autoKnifeRange = enabled["Auto Knife Range"] or 8

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
							local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 and humanoid2.Health > 0 then
								if (humanoidRootPart2.Position - player.Character.HumanoidRootPart.Position).Magnitude <= autoKnifeRange then
									pcall(knife.Activate, knife)
									task.wait(0.7)
									return
								end
							end
						end
					end
				end,
				GetGunDropBillboard = function(parent)
					local gunDropBillboard = cached.ESP.GunDropBillboard

					if not gunDropBillboard then
						gunDropBillboard = Instance.new("BillboardGui")
						gunDropBillboard.Name = "ESP_GunDrop_Billboard"
						gunDropBillboard.Size = UDim2.new(0, 120, 0, 30)
						gunDropBillboard.StudsOffset = Vector3.new(0, 3, 0)
						gunDropBillboard.AlwaysOnTop = true
						gunDropBillboard.ResetOnSpawn = false
						local textLabel = Instance.new("TextLabel")
						textLabel.Name = "GunDropLabel"
						textLabel.Size = UDim2.new(1, 0, 1, 0)
						textLabel.BackgroundTransparency = 1
						textLabel.Font = Enum.Font.Arcade
						textLabel.TextSize = 18
						textLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
						textLabel.TextStrokeTransparency = 0.5
						textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
						textLabel.Text = "Dropped Gun"
						textLabel.Parent = gunDropBillboard
						cached.ESP.GunDropBillboard = gunDropBillboard
					end

					if parent ~= gunDropBillboard.Parent then
						gunDropBillboard.Parent = parent
					end

					return gunDropBillboard
				end,
				GetPlayerBillboard = function(arg, arg2)
					local billboardGui = cached.ESP.Billboards[arg]

					if not billboardGui then
						billboardGui = Instance.new("BillboardGui")
						billboardGui.Name = "ESP_Billboard"
						billboardGui.Size = UDim2.new(0, 100, 0, 30)
						billboardGui.StudsOffset = Vector3.new(0, 3, 0)
						billboardGui.AlwaysOnTop = true
						billboardGui.ResetOnSpawn = false
						local textLabel = Instance.new("TextLabel")
						textLabel.Name = "RoleLabel"
						textLabel.Size = UDim2.new(1, 0, 1, 0)
						textLabel.BackgroundTransparency = 1
						textLabel.Font = Enum.Font.Arcade
						textLabel.TextSize = 18
						textLabel.TextStrokeTransparency = 0.5
						textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
						textLabel.Parent = billboardGui
						cached.ESP.Billboards[arg] = billboardGui
					end

					local head = arg2:FindFirstChild("Head")

					if head and head ~= billboardGui.Parent then
						billboardGui.Parent = head
					end

					return billboardGui
				end,
				ESPConnection = function()
					if not tbl5.InGame() then
						for _, highlight in pairs(cached.ESP.Highlights) do
							highlight.Enabled = false
							highlight.Adornee = nil
						end

						for _, billboard in pairs(cached.ESP.Billboards) do
							billboard.Enabled = false
						end

						if cached.ESP.GunDropHighlight then
							cached.ESP.GunDropHighlight.Enabled = false
							cached.ESP.GunDropHighlight.Adornee = nil
						end

						if cached.ESP.GunDropBillboard then
							cached.ESP.GunDropBillboard.Enabled = false
							cached.ESP.GunDropBillboard.Parent = nil
						end

						return
					end

					local murderer = tbl5.Roles.Murderer or tbl5.GetMurderer()
					local sheriff = tbl5.Roles.Sheriff or tbl5.GetSheriff()
					local chamsStyle = enabled["Chams Style"] or "Default"

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer then
							local character2 = player.Character
							local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")
							local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")
							local flag = character2 ~= nil and humanoidRootPart2 ~= nil and humanoid2 ~= nil and humanoid2.Health > 0 and character2.Parent == Workspace
							local highlight = cached.ESP.Highlights[player]
							local v6 = cached.ESP.Billboards[player]

							if not flag then
								if highlight then
									highlight.Enabled = false
									highlight.Adornee = nil
								end

								if v6 then
									v6.Enabled = false
								end
							else
								if not highlight then
									highlight = Instance.new("Highlight")
									highlight.Parent = CoreGui
									highlight.FillTransparency = 0.5
									highlight.OutlineTransparency = 0
									highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
									cached.ESP.Highlights[player] = highlight
								end

								if character2 ~= highlight.Adornee then
									highlight.Adornee = character2
								end

								local flag2 = player:GetAttribute("Alive") == true
								local flag3 = flag2 and (player == murderer or player == tbl5.GetMurderer())
								flag2 = flag2 and (player == sheriff or player == tbl5.GetSheriff())
								local v7 = tbl5.GetRole(player)
								local position = humanoidRootPart2.Position
								local currentCamera = Workspace.CurrentCamera
								local flag4 = currentCamera ~= nil and (currentCamera.CFrame.Position - position).Magnitude > 1500
								local showMurderer = flag3 and enabled["Show Murderer"] or flag2 and enabled["Show Sheriff"] or not flag3 and not flag2 and enabled["Show Innocent"]
								highlight.FillColor = tbl5.RoleColor(v7)
								highlight.OutlineColor = tbl5.RoleColor(v7)

								if chamsStyle == "Wireframe" then
									highlight.FillTransparency = 1
									highlight.OutlineTransparency = 0
								elseif chamsStyle == "Neon" then
									highlight.FillTransparency = 0.7
									highlight.OutlineTransparency = 0
									highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
								elseif chamsStyle == "Invisible" then
									highlight.FillTransparency = 0.8
									highlight.OutlineTransparency = 0.5
								elseif chamsStyle == "Pulse" then
									highlight.FillTransparency = 0.3 + (math.sin(tick() * 3) + 1) / 2 * 0.5
									highlight.OutlineTransparency = 0
								else
									highlight.FillTransparency = 0.5
									highlight.OutlineTransparency = 0
								end

								highlight.Enabled = showMurderer and not flag4

								if showMurderer or enabled.Nickname or enabled.Role then
									local v8 = tbl5.GetPlayerBillboard(player, character2)
									local roleLabel = v8:FindFirstChild("RoleLabel")

									if roleLabel then
										local name = enabled.Nickname and player.Name or ""
										local str = (enabled.Role or showMurderer) and "[" .. v7:upper() .. "]" or ""
										roleLabel.Text = name .. (name ~= "" and str ~= "" and "\n" or "") .. str
										roleLabel.TextColor3 = tbl5.RoleColor(v7)
									end

									v8.Enabled = not flag4
								elseif v6 then
									v6.Enabled = false
								end
							end
						end
					end

					for k, highlight in pairs(cached.ESP.Highlights) do
						if not k.Parent then
							highlight:Destroy()
							cached.ESP.Highlights[k] = nil
							local v6 = cached.ESP.Billboards[k]

							if v6 then
								v6:Destroy()
								cached.ESP.Billboards[k] = nil
							end
						end
					end

					if not enabled["Show Dropped Gun"] then
						if cached.ESP.GunDropHighlight then
							cached.ESP.GunDropHighlight.Enabled = false
							cached.ESP.GunDropHighlight.Adornee = nil
						end

						if cached.ESP.GunDropBillboard then
							cached.ESP.GunDropBillboard.Enabled = false
							cached.ESP.GunDropBillboard.Parent = nil
						end

						return
					end

					local v6 = tbl5.GetCurrentMap()

					if not v6 or not v6:FindFirstChild("GunDrop") then
						if cached.ESP.GunDropHighlight then
							cached.ESP.GunDropHighlight.Enabled = false
							cached.ESP.GunDropHighlight.Adornee = nil
						end

						if cached.ESP.GunDropBillboard then
							cached.ESP.GunDropBillboard.Enabled = false
							cached.ESP.GunDropBillboard.Parent = nil
						end

						return
					end

					local gunDrop = v6.GunDrop
					local position = gunDrop:IsA("BasePart") and gunDrop.Position or gunDrop:FindFirstChildWhichIsA("BasePart") and gunDrop:FindFirstChildWhichIsA("BasePart").Position or gunDrop:GetPivot().Position
					local currentCamera = Workspace.CurrentCamera
					local flag = currentCamera ~= nil and (currentCamera.CFrame.Position - position).Magnitude > 1500

					if not cached.ESP.GunDropHighlight then
						cached.ESP.GunDropHighlight = Instance.new("Highlight")
						cached.ESP.GunDropHighlight.Parent = CoreGui
						cached.ESP.GunDropHighlight.FillColor = Color3.fromRGB(255, 255, 0)
						cached.ESP.GunDropHighlight.FillTransparency = 0.5
						cached.ESP.GunDropHighlight.OutlineTransparency = 1
						cached.ESP.GunDropHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					end

					cached.ESP.GunDropHighlight.Adornee = gunDrop
					local enabled2 = not flag
					cached.ESP.GunDropHighlight.Enabled = enabled2

					if enabled2 then
						tbl5.GetGunDropBillboard(gunDrop).Enabled = true
					elseif cached.ESP.GunDropBillboard then
						cached.ESP.GunDropBillboard.Enabled = false
					end
				end,
			}

			return tbl5
		end

		tbl4.MM2 = fn8()
		return tbl4
	end

	module.Modules = fn5()
	local modules = module.Modules
	local utils = modules.Utils
	local misc = modules.Misc
	local mM2 = modules.MM2
	local tbl4 = { Managers = {} }

	tbl4.Managers.CreatePart = function(arg, name, cFrame, parent)
		local v6 = parent and parent:FindFirstChild(name) or workspace:FindFirstChild(name)
		-- 𝚂𝙻 | 𝚂𝚘𝚞𝚛𝚌𝚎 𝙻𝚎𝚊𝚔 // discord.gg/x7YbZeezpm

		if not v6 then
			local part = Instance.new("Part")
			part.Name = name
			part.Size = Vector3.new(10, 1, 10)
			part.CFrame = cFrame
			part.Anchored = true
			part.Transparency = 0.5
			part.Material = Enum.Material.Wood
			part.Parent = parent or workspace
			return part
		end

		return v6
	end

	tbl4.LoadLibrary = function()
		local v6 = shx:CreateWindow({
			Title = "Speed Hub X | 1.0.1 | Murder Mystery 2",
			Description = "",
			["Tab Width"] = 130,
			SaveSystem = { Enable = true, File = "MM2Speed" },
			Key = "KZgN0t5pK6hBaqVLAMLg27aqXNDb8v",
			Key1 = "c9RkyXAjNpJc9u1fexvw1cbxYTWvMy",
			Key2 = "Xp8712WzbaRn8EtrLnXk8gDdzQB8jF",
			Key3 = "wixUQtibEtmkTQ7WpSFGq4YfBuqJQy",
			Key4 = "KbSf6UWZ6vndbgp8Vh9EHdM0dU8DFf",
			Key5 = "mP3tTRKYwhNKLkpFCdVuj922xqTgJp",
			Key6 = "heMGEmHXFUaiTaStAihwTfwgSJguUwQQxdE",
			Key7 = "khEXYXSHSJpDabFqudKJWEWbEyzXYgLmgTF",
			Key8 = "MLGkWCxxHaqhumMpSmpvJMuiUEpeqUAYvxN",
		})

		local tbl5 = {
			Home = v6:CreateTab({ Name = "Home", Icon = "rbxassetid://10734942198" }),
			MM2 = v6:CreateTab({ Name = "MM2", Icon = "rbxassetid://10734975486" }),
			Visuals = v6:CreateTab({ Name = "Visuals", Icon = "rbxassetid://10747373176" }),
			Fling = v6:CreateTab({ Name = "Fling", Icon = "rbxassetid://10734962068" }),
			Fun = v6:CreateTab({ Name = "Fun", Icon = "rbxassetid://10709761889" }),
			Utilities = v6:CreateTab({ Name = "Utilities", Icon = "rbxassetid://10747383470" }),
			Settings = v6:CreateTab({ Name = "Settings", Icon = "rbxassetid://10734950309" }),
		}

		funcs:Button(tbl5.Home:AddSection("Discord", true), "Discord Invite", "Copy invite link", function()
			setclipboard("https://discord.gg/speedhubx")
		end)

		local Player = tbl5.Home:AddSection("Player")
		Player:AddSeperator({ " - [ Local Player ] - " })

		funcs:Toggle(Player, "No Clip", "", false, true, function(arg)
			enabled["No Clip"] = arg

			utils.Fallback(arg, "No Clip", function()
				local character2 = localPlayer and localPlayer.Character

				for _, child in pairs(character2:GetChildren()) do
					if child:IsA("BasePart") then
						child.CanCollide = true
					end
				end
			end)
		end)

		funcs:Toggle(Player, "Infinite Jump", "", false, true, function(arg)
			enabled["Infinite Jump"] = arg

			utils.Connections(UserInputService.JumpRequest, function()
				local character2 = localPlayer and localPlayer.Character
				character2 = character2 and character2:FindFirstChild("Humanoid")

				if character2 and enabled["Infinite Jump"] then
					character2:ChangeState("Jumping")
				end
			end)
		end)

		funcs:Textbox(Player, "Set Speed", "", false, true, function(arg)
			enabled["Set Speed"] = tonumber(arg) or 20
		end)

		funcs:Toggle(Player, "Bypass Walkspeed", "", false, true, function(arg)
			enabled["Bypass Walkspeed"] = arg

			utils.Connections(localPlayer.CharacterAdded, function(arg2)
				misc.BypassWalkSpeed()
				local setSpeed = enabled["Set Speed"]
				arg2:WaitForChild("Humanoid").WalkSpeed = setSpeed
			end)
		end)

		local Combat = tbl5.MM2:AddSection("Combat")
		Combat:AddSeperator({ " - [ Sheriff ] - " })

		funcs:Toggle(Combat, "Silent Aim", "Block normal shots and aim at roles", false, true, function(arg)
			enabled["Silent Aim"] = arg
		end)

		funcs:Dropdown(Combat, "Shoot Mode", "Sniper uses advanced prediction", false, { "Default", "Sniper" }, "Default", true, function(arg)
			enabled["Shoot Mode"] = arg
		end)

		funcs:Toggle(Combat, "Magic Bullet", "Shoot from the murderer's position", false, true, function(arg)
			enabled["Magic Bullet"] = arg
		end)

		funcs:Button(Combat, "Shoot Murderer", "Shoot the murderer as sheriff", function()
			task.spawn(function()
				pcall(mM2.ShootMurderer)
			end)
		end)

		Combat:AddSeperator({ " - [ Murder ] - " })

		funcs:Button(Combat, "Throw Knife", "Throw knife at the nearest player", function()
			task.spawn(function()
				pcall(mM2.ThrowKnife, false)
			end)
		end)

		funcs:Toggle(Combat, "Knife Throw Button", "Floating button on screen (mobile)", false, true, function(arg)
			enabled["Knife Throw Button"] = arg

			if arg then
				mM2.CreateKnifeButton()
			else
				mM2.DestroyKnifeButton()
			end
		end)

		funcs:Toggle(Combat, "Auto Knife", "Slash nearby players automatically", false, true, function(arg)
			enabled["Auto Knife"] = arg
		end)

		funcs:Slider(Combat, "Knife Range", "Auto knife attack range", 3, 15, 1, 8, true, true, function(arg)
			enabled["Auto Knife Range"] = arg
		end)

		funcs:Button(Combat, "Kill All", "Kill every player as murderer", function()
			task.spawn(function()
				pcall(mM2.KillAll)
			end)
		end)

		funcs:Button(Combat, "Kill Sheriff", "Kill the sheriff", function()
			task.spawn(function()
				pcall(mM2.KillSheriff)
			end)
		end)

		local Gun = tbl5.MM2:AddSection("Gun")
		Gun:AddSeperator({ " - [ Gun ] - " })

		funcs:Button(Gun, "Get Dropped Gun", "Teleport to the dropped gun", function()
			task.spawn(function()
				pcall(mM2.GetDroppedGun)
			end)
		end)

		funcs:Button(Gun, "TP to GunDrop", "Touch the dropped gun", function()
			task.spawn(function()
				pcall(mM2.TPToGunDrop)
			end)
		end)

		funcs:Toggle(Gun, "Auto Get Dropped Gun", "Auto pick up dropped guns", false, true, function(arg)
			enabled["Auto Get Dropped Gun"] = arg
		end)

		local Movement = tbl5.MM2:AddSection("Movement")
		Movement:AddSeperator({ " - [ Speed ] - " })

		funcs:Slider(Movement, "Speed Value", "Speed glitch Jump speed", 16, 500, 1, 25, true, true, function(arg)
			enabled["Speed Value"] = arg
		end)

		funcs:Toggle(Movement, "Speed Glitch", "Fast while jumping and moving", false, true, function(arg)
			enabled["Speed Glitch"] = arg

			if arg then
				if localPlayer.Character then
					mM2.SpeedGlitchSetup(localPlayer.Character)
				end
			else
				mM2.SpeedGlitchReset()
			end
		end)

		local v7 = tbl5.MM2:AddSection("Auto Farm")
		v7:AddSeperator({ " - [ Auto Farm ] - " })

		funcs:Toggle(v7, "Auto Farm", "Automatically collect coins", false, true, function(arg)
			enabled["Auto Farm"] = arg
		end)

		funcs:Slider(v7, "Farm Speed", "Movement speed while farming", 10, 60, 1, 23, true, true, function(arg)
			enabled["Farm Speed"] = arg
		end)

		local v8 = tbl5.MM2:AddSection("Anti Aim")
		v8:AddSeperator({ " - [ Anti Aim ] - " })

		funcs:Toggle(v8, "Anti Aim", "Strafe left and right", false, true, function(arg)
			enabled["Anti Aim"] = arg
		end)

		funcs:Slider(v8, "Strafe Speed", "How fast to strafe", 0.5, 3, 0.1, 1, true, true, function(arg)
			enabled["Strafe Speed"] = arg
		end)

		local v9 = tbl5.MM2:AddSection("Anti Fling")
		v9:AddSeperator({ " - [ Anti Fling ] - " })

		funcs:Toggle(v9, "Anti Fling", "Disable nearby player collision", false, true, function(arg)
			enabled["Anti Fling"] = arg
		end)

		funcs:Toggle(v9, "Self Anti-Fling", "Destroy body movers on yourself", false, true, function(arg)
			enabled["Self Anti-Fling"] = arg
		end)

		local esp = tbl5.Visuals:AddSection("ESP")
		esp:AddSeperator({ " - [ ESP ] - " })

		funcs:Toggle(esp, "Show Murderer", "Highlight the murderer", false, true, function(arg)
			enabled["Show Murderer"] = arg
		end)

		funcs:Toggle(esp, "Show Sheriff", "Highlight the sheriff", false, true, function(arg)
			enabled["Show Sheriff"] = arg
		end)

		funcs:Toggle(esp, "Show Innocent", "Highlight the innocents", false, true, function(arg)
			enabled["Show Innocent"] = arg
		end)

		funcs:Toggle(esp, "Show Dropped Gun", "Highlight the dropped gun", false, true, function(arg)
			enabled["Show Dropped Gun"] = arg
		end)
		-- Ｓｏｕｒｃｅ Ｌｅａｋ // discord.gg/x7YbZeezpm

		funcs:Dropdown(esp, "Chams Style", "Highlight visual style", false, { "Default", "Wireframe", "Pulse", "Neon", "Invisible" }, "Default", true, function(arg)
			enabled["Chams Style"] = arg
		end)

		funcs:Toggle(esp, "Nickname", "Show player names above heads", false, true, function(nickname)
			enabled.Nickname = nickname
		end)

		funcs:Toggle(esp, "Role", "Show roles above heads", false, true, function(role)
			enabled.Role = role
		end)

		local Environment = tbl5.Visuals:AddSection("Environment")
		Environment:AddSeperator({ " - [ Environment ] - " })

		funcs:Toggle(Environment, "Night Mode", "Darken the map", false, true, function(arg)
			enabled["Night Mode"] = arg
			mM2.NightMode(arg)
		end)

		funcs:Toggle(Environment, "Low Graphics", "Reduce materials and shadows", false, true, function(arg)
			enabled["Low Graphics"] = arg
			mM2.LowGraphics(arg)
		end)

		funcs:Toggle(Environment, "High Graphics", "Boost lighting and materials", false, true, function(arg)
			enabled["High Graphics"] = arg
			mM2.HighGraphics(arg)
		end)

		local v10 = tbl5.Visuals:AddSection("Murder Stat")
		v10:AddSeperator({ " - [ Murder Stat ] - " })

		funcs:Toggle(v10, "Murder Stat", "Show murderer knife & kill info", false, true, function(arg)
			enabled["Murder Stat"] = arg

			if arg then
				mM2.CreateMurderStat()
			else
				mM2.DestroyMurderStat()
			end
		end)

		local Fling = tbl5.Fling:AddSection("Fling")
		Fling:AddSeperator({ " - [ Fling ] - " })

		funcs:Button(Fling, "Fling Murderer", "Fling the murderer", function()
			local v11 = mM2.GetMurderer()

			if v11 and v11 ~= localPlayer then
				task.spawn(function()
					pcall(mM2.Fling, v11, false)
				end)

				return
			end

			fn3("Murderer not found", "Fling")
		end)

		funcs:Button(Fling, "Fling Sheriff", "Fling the sheriff", function()
			local v11 = mM2.GetSheriff()

			if v11 and v11 ~= localPlayer then
				task.spawn(function()
					pcall(mM2.Fling, v11, false)
				end)

				return
			end

			fn3("Sheriff not found", "Fling")
		end)

		funcs:Button(Fling, "Fling All", "Fling every player", function()
			mM2.FlingAll()
		end)

		local v11 = tbl5.Fling:AddSection("Target Player")
		v11:AddSeperator({ " - [ Target Player ] - " })

		cached.FlingDropdown = funcs:Dropdown(v11, "Select Player", "Choose a target", false, cached.MM2PlayerList, cached.MM2PlayerList[1] or "", true, function(arg)
			enabled["Fling Selected Player"] = arg
		end)

		funcs:Button(v11, "Fling Selected Player", "Fling the chosen player", function()
			local flingSelectedPlayer = enabled["Fling Selected Player"]
			if not flingSelectedPlayer or flingSelectedPlayer == "" then
				fn3("Select a player first", "Fling")
				return
			end
			local v12 = Players:FindFirstChild(flingSelectedPlayer)
			if not v12 then
				fn3("Player not found", "Fling")
				return
			end

			task.spawn(function()
				pcall(mM2.Fling, v12, false)
			end)
		end)

		local v12 = tbl5.Fling:AddSection("Touch Fling")
		v12:AddSeperator({ " - [ Touch Fling ] - " })

		funcs:Toggle(v12, "Touch Fling", "Fling players you touch", false, true, function(arg)
			enabled["Touch Fling"] = arg
		end)

		local Screen = tbl5.Fun:AddSection("Screen")
		Screen:AddSeperator({ " - [ Screen ] - " })

		funcs:Toggle(Screen, "Stretching", "Stretch the camera view", false, true, function(stretching)
			enabled.Stretching = stretching
		end)

		funcs:Slider(Screen, "Stretch Factor", "Amount of stretch", 0.3, 1, 0.01, 0.67, true, true, function(arg)
			enabled["Stretch Factor"] = arg
		end)

		funcs:Toggle(Screen, "Custom FOV", "Change the camera field of view", false, true, function(arg)
			enabled["Custom FOV"] = arg

			if not cached.FieldOfView then
				cached.FieldOfView = Workspace.CurrentCamera.FieldOfView
			end

			Workspace.CurrentCamera.FieldOfView = arg and (enabled["FOV Value"] or 70) or cached.FieldOfView
		end)

		funcs:Slider(Screen, "FOV", "Field of view value", 30, 140, 1, 70, true, true, function(fieldOfView)
			enabled["FOV Value"] = fieldOfView

			if enabled["Custom FOV"] then
				Workspace.CurrentCamera.FieldOfView = fieldOfView
			end
		end)

		local Emotes = tbl5.Fun:AddSection("Emotes")
		Emotes:AddSeperator({ " - [ Emotes ] - " })

		funcs:Dropdown(Emotes, "Emote", "Select an emote", false, {
			"Sit",
			"Ninja Rest",
			"Zen",
			"Dab",
			"Floss",
			"Zombie",
			"Headless",
			"Wave",
			"Cheer",
			"Laugh",
			"Point",
			"Dance 1",
			"Dance 2",
			"Dance 3",
		}, "Sit", false, function(emote)
			enabled.Emote = emote
		end)

		funcs:Button(Emotes, "Play", "Play the selected emote", function()
			mM2.PlayEmote(mM2.EmoteKey(enabled.Emote or "Sit"))
		end)

		local Tools = tbl5.Utilities:AddSection("Tools")
		Tools:AddSeperator({ " - [ Tools ] - " })

		funcs:Toggle(Tools, "Teleport Tool", "Teleport to where you click", false, true, function(arg)
			enabled["Teleport Tool"] = arg

			if arg then
				mM2.CreateTeleportTool()
			else
				mM2.DestroyTeleportTool()
			end
		end)

		funcs:Toggle(Tools, "Noclip Tool", "Noclip while the tool is equipped", false, true, function(arg)
			enabled["Noclip Tool"] = arg

			if arg then
				mM2.CreateNoclipTool()
			else
				mM2.DestroyNoclipTool()
			end
		end)

		local Performance = tbl5.Utilities:AddSection("Performance")
		Performance:AddSeperator({ " - [ Performance ] - " })

		funcs:Button(Performance, "FPS Boost", "Reduce quality and destroy effects", function()
			mM2.FPSBoost()
		end)

		funcs:Button(Performance, "Reduce Lag", "Remove textures and shadows", function()
			for _, descendant in pairs(Workspace:GetDescendants()) do
				local isBasePart = descendant:IsA("BasePart")
				-- join us: https://discord.gg/x7YbZeezpm

				if isBasePart then
					isBasePart = not (descendant.Parent and descendant.Parent:FindFirstChildWhichIsA("Humanoid"))
				end

				if isBasePart then
					descendant.Material = Enum.Material.SmoothPlastic
					descendant.CastShadow = false
					descendant.Reflectance = 0
				elseif descendant:IsA("Texture") or descendant:IsA("Decal") or descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
					descendant:Destroy()
				end
			end
		end)

		local Display = tbl5.Utilities:AddSection("Display")
		Display:AddSeperator({ " - [ Display ] - " })

		funcs:Toggle(Display, "Show Screen White", "Disable 3d rendering", false, true, function(arg)
			RunService:Set3dRenderingEnabled(not arg)
		end)

		funcs:Toggle(Display, "Show Screen Black", "Darken the screen", false, true, function(arg)
			Lighting.ExposureCompensation = arg and -10 or 0
		end)

		local Misc = tbl5.Utilities:AddSection("Misc")
		Misc:AddSeperator({ " - [ Misc ] - " })

		funcs:Toggle(Misc, "Auto Reconnect", "Rejoin on disconnect", false, true, function(arg)
			enabled["Auto Reconnect"] = arg

			if enabled["Auto Reconnect"] then
				CoreGui.ChildAdded:Connect(function(child)
					if child.Name == "ErrorPrompt" then
						task.wait(5)
						TeleportService:Teleport(game.PlaceId, localPlayer)
					end
				end)
			end
		end)

		local v13 = tbl5.Settings:AddSection("Reset Config")
		v13:AddSeperator({ " - [ Reset Config ] - " })

		funcs:Button(v13, "Reset Script Config", "Delete the saved config", function()
			for _, value12 in next, { "Speed_Hub", "SpeedHubX", "Speed Hub X", "Speed Hub", "Speed_Hub_X", "MM2Speed" }, nil do
				if isfolder(value12) then
					delfolder(value12)
				end
			end
		end)

		task.spawn(shx.AddSettingUi, shx, v6)
	end

	tbl4.LoadFunction = function()
		local function fn6(arg, arg2)
			task.spawn(function()
				utils.StartLoop(arg, arg2)
			end)
		end

		fn6("Bypass Walkspeed", function()
			local setSpeed = enabled["Set Speed"]
			Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = setSpeed
			task.wait()
		end)

		fn6("No Clip", function()
			local character2 = localPlayer and localPlayer.Character
			if not character2 then
				return
			end

			for _, child in pairs(character2:GetChildren()) do
				if child:IsA("BasePart") then
					child.CanCollide = false
				end
			end
		end)

		fn6("Auto Farm", function()
			mM2.AutoFarmStep()
		end)

		fn6("Auto Knife", function()
			mM2.AutoKnifeTick()
		end)

		fn6("Murder Stat", function()
			mM2.MurderStatTick()
		end)

		utils.Connections(RunService.RenderStepped, function()
			mM2.ESPConnection()
		end, "MM2_ESP")

		utils.Connections(RunService.RenderStepped, function()
			if not enabled["Anti Aim"] then
				return
			end
			local antiAimLast = cached.AntiAimLast
			local strafeSpeed = enabled["Strafe Speed"] or 1
			if tick() - antiAimLast < 0.15 / strafeSpeed then
				return
			end
			cached.AntiAimLast = tick()
			local character2 = localPlayer.Character
			character2 = character2 and character2:FindFirstChild("HumanoidRootPart")

			if character2 then
				cached.AntiAimDir = cached.AntiAimDir * -1
				character2.CFrame = character2.CFrame + Workspace.CurrentCamera.CFrame.RightVector * 1.5 * cached.AntiAimDir
			end
		end, "MM2_AntiAim")

		utils.Connections(RunService.RenderStepped, function()
			if not enabled["Self Anti-Fling"] then
				return
			end
			local character2 = localPlayer.Character
			if not character2 then
				return
			end
			local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart2 then
				return
			end

			for _, child in ipairs(humanoidRootPart2:GetChildren()) do
				if child:IsA("BodyVelocity") or child:IsA("BodyAngularVelocity") or child:IsA("BodyPosition") or child:IsA("BodyGyro") or child:IsA("BodyThrust") then
					child:Destroy()
				end
			end

			if humanoidRootPart2.Velocity.Magnitude > 200 or humanoidRootPart2.RotVelocity.Magnitude > 200 then
				humanoidRootPart2.Velocity = Vector3.zero
				humanoidRootPart2.RotVelocity = Vector3.zero
			end
		end, "MM2_SelfAntiFling")

		utils.Connections(RunService.RenderStepped, function()
			if not enabled.Stretching then
				return
			end

			pcall(function()
				Workspace.CurrentCamera.CFrame = Workspace.CurrentCamera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, enabled["Stretch Factor"] or 0.67, 0, 0, 0, 1)
			end)
		end, "MM2_Stretch")

		utils.Connections(RunService.Heartbeat, function()
			if not enabled["Touch Fling"] then
				return
			end
			local character2 = localPlayer.Character
			local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart2 then
				return
			end
			cached.TouchFlingCFrame = humanoidRootPart2.CFrame
			local velocity = humanoidRootPart2.Velocity
			humanoidRootPart2.Velocity = velocity * 10000 + Vector3.new(0, 10000, 0)
			task.wait()
			humanoidRootPart2.Velocity = velocity
			task.wait()
			humanoidRootPart2.Velocity = velocity + Vector3.new(0, cached.TouchFlingFlip, 0)
			cached.TouchFlingFlip = -cached.TouchFlingFlip

			if cached.TouchFlingCFrame then
				pcall(function()
					humanoidRootPart2.CFrame = cached.TouchFlingCFrame
				end)
			end
		end, "MM2_TouchFling")

		utils.Connections(RunService.Stepped, function()
			if not enabled["Anti Fling"] then
				return
			end
			local character2 = localPlayer.Character
			if not character2 then
				return
			end
			local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart2 then
				return
			end

			for _, player in pairs(Players:GetPlayers()) do
				if player ~= localPlayer and player.Character then
					local humanoidRootPart3 = player.Character:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart3 and (humanoidRootPart3.Position - humanoidRootPart2.Position).Magnitude <= 15 then
						for _, descendant in pairs(player.Character:GetDescendants()) do
							if descendant:IsA("BasePart") then
								descendant.CanCollide = false
							end
						end
					end
				end
			end
		end, "MM2_AntiFling")

		utils.Connections(UserInputService.InputBegan, function(arg, arg2)
			if arg2 or not enabled["Silent Aim"] then
				return
			end

			if arg.UserInputType ~= Enum.UserInputType.MouseButton1 and arg.UserInputType ~= Enum.UserInputType.Touch then
				return
			end
			local character2 = localPlayer.Character
			if not character2 or not character2:FindFirstChild("Gun") then
				return
			end
			local v6 = mM2.GetMurderer() or mM2.GetOtherSheriff()
			if not v6 or not v6.Character or not v6.Character:FindFirstChild("HumanoidRootPart") then
				return
			end
			local flag = enabled["Shoot Mode"] == "Sniper" and mM2.PredictSniper(v6) or mM2.PredictTarget(v6)
			if not flag then
				return
			end

			pcall(function()
				local gun = character2:WaitForChild("Gun")
				local shootEvent = gun:FindFirstChild("ShootEvent") or gun:FindFirstChild("Shoot")
				if not shootEvent then
					return
				end
				local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
				local upperTorso = character2:FindFirstChild("UpperTorso")
				shootEvent:FireServer(CFrame.new(humanoidRootPart2 and humanoidRootPart2.Position or upperTorso and upperTorso.Position or flag, flag), CFrame.new(flag))
			end)
		end, "MM2_SilentAimClick")

		utils.Connections(Workspace.DescendantAdded, function(arg)
			if not enabled["Auto Get Dropped Gun"] then
				return
			end

			if arg.Name ~= "GunDrop" then
				return
			end
			local backpack = localPlayer:FindFirstChild("Backpack")
			if backpack and backpack:FindFirstChild("Knife") or localPlayer.Character and localPlayer.Character:FindFirstChild("Knife") then
				return
			end
			local character2 = localPlayer.Character
			local flag = true

			if character2 then
				local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
				flag = not humanoidRootPart2 or (humanoidRootPart2.Position - cached.SpawnPoint).Magnitude < 3000
			end
			-- deobfuscated by SL -> https://discord.gg/x7YbZeezpm

			if flag then
				task.spawn(function()
					local v6 = mM2.GetCurrentMap()

					if v6 and v6:FindFirstChild("GunDrop") then
						local pivot = localPlayer.Character:GetPivot()
						localPlayer.Character:PivotTo(v6.GunDrop:GetPivot())
						localPlayer.Backpack.ChildAdded:Wait()
						localPlayer.Character:PivotTo(pivot)
						fn3("Dropped gun has been get", "MM2")
					end
				end)
			end
		end, "MM2_AutoGetGun")
	end

	tbl4.Dependency = function()
		utils.Connections(localPlayer.CharacterAdded, function(arg)
			character = arg
			humanoid = character:WaitForChild("Humanoid")
			humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		end, "Dependency_001")

		utils.Connections(localPlayer.CharacterAdded, function(arg)
			if enabled["Speed Glitch"] then
				task.wait(0.5)
				mM2.SpeedGlitchSetup(arg)
			end
		end, "MM2_SpeedGlitchRespawn")

		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= localPlayer then
				table.insert(cached.MM2PlayerList, player.Name)
			end
		end

		utils.Connections(Players.PlayerAdded, function(arg)
			if arg == localPlayer then
				return
			end
			table.insert(cached.MM2PlayerList, arg.Name)

			if cached.FlingDropdown and cached.FlingDropdown.Refresh then
				pcall(cached.FlingDropdown.Refresh, cached.FlingDropdown, cached.MM2PlayerList)
			end
		end, "MM2_PlayerAdded")

		utils.Connections(Players.PlayerRemoving, function(arg)
			local foundAt = table.find(cached.MM2PlayerList, arg.Name)

			if foundAt then
				table.remove(cached.MM2PlayerList, foundAt)
			end

			if cached.FlingDropdown and cached.FlingDropdown.Refresh then
				pcall(cached.FlingDropdown.Refresh, cached.FlingDropdown, cached.MM2PlayerList)
			end
		end, "MM2_PlayerRemoving")

		pcall(function()
			local value13 = nil

			local function fn6(arg, ...)
				local result2 = getnamecallmethod()
				if not enabled["Silent Aim"] or checkcaller() or result2 ~= "FireServer" or arg.Name ~= "Shoot" and arg.Name ~= "ShootEvent" then
					return value13(arg, ...)
				end
			end

			v6 = hookmetamethod
			v6 = v6(game, "__namecall", fn6)
		end)

		mM2.InitRoles()
	end

	tbl4:Dependency()
	tbl4:LoadFunction()
	tbl4:LoadLibrary()
end

local tbl2

tbl2 = {
	Request = http_request or request or http and http.request,
	Script_ID = "781b182a959c356ab9d95c3f5b8e608a",
	Load = function(scriptKey)
		script_key = scriptKey
		getfenv(0).script_key = scriptKey
		getfenv(1).script_key = scriptKey
		getgenv().script_key = scriptKey
		loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/" .. tbl2.Script_ID .. ".lua"))()
	end,
	MathFloor = function(arg, arg2)
		local n = arg2 - arg2 % 1
		return arg2 < 0 and n ~= arg2 and n - 1 or n
	end,
	Uint32 = function(arg, arg2)
		return arg2 % 4294967296
	end,
	BitwiseXor = function(arg, arg2, arg3)
		local n = 0
		local n2 = 1

		while arg2 > 0 or arg3 > 0 do
			if arg2 % 2 ~= arg3 % 2 then
				n += n2
			end

			arg2 = tbl2:MathFloor(arg2 / 2)
			arg3 = tbl2:MathFloor(arg3 / 2)
			n2 *= 2
		end

		return n
	end,
	LeftShift = function(arg, arg2, arg3)
		return tbl2:Uint32(arg2 * 2 ^ arg3)
	end,
	RightShift = function(arg, arg2, arg3)
		return tbl2:MathFloor(arg2 / 2 ^ arg3) % 4294967296
	end,
	ToString = function(arg, arg2)
		return tostring(arg2)
	end,
	Concat = function(arg, arg2, arg3)
		local str = arg3 or ""
		local str2 = ""

		for i = 1, #arg2 do
			str2 ..= tbl2:ToString(arg2[i])

			if i ~= #arg2 then
				str2 ..= str
			end
		end

		return str2
	end,
	Encryption = function(arg, arg2)
		local tbl3 = { 1524013928, 62333482, 755453430, 3411017517 }
		local tbl4 = { 451, 41992, 38477, 17184 }
		local n = #arg2
		local n2 = 1

		while n2 <= n do
			local n3 = 0

			for i = 0, 3 do
				local n4 = n2 - 1 + i

				if n4 < n then
					n3 += arg2:byte(n4 + 1) * 2 ^ (8 * i)
				end
			end

			local v6 = tbl2:Uint32(n3)

			for i = 1, 4 do
				local entry5 = tbl3[i % 4 + 1]
				local v8 = tbl2:BitwiseXor(tbl2:BitwiseXor(tbl3[i], v6), entry5)
				local entry6 = tbl4[i]
				local v10 = tbl2:Uint32(tbl2:LeftShift(v8, 5) + tbl2:RightShift(v8, 2) + entry6)
				local v11 = tbl2:RightShift(v6, (i - 1) * 5 % 32)
				local v12 = tbl2:BitwiseXor(v10, v11)
				local entry7 = tbl3[(i + 1) % 4 + 1]
				local v14 = tbl2:Uint32(tbl2:Uint32(v12) + entry7)
				tbl3[i] = tbl2:Uint32(v14)
			end

			n2 += 4
		end

		for i = 1, 4 do
			local entry8 = tbl3[(i + 2) % 4 + 1]
			local v7 = tbl2:BitwiseXor(tbl2:Uint32(tbl3[i] + tbl3[i % 4 + 1]), entry8)
			local n3 = i * 7 % 32
			tbl3[i] = tbl2:Uint32(tbl2:LeftShift(v7, n3) + tbl2:RightShift(v7, 32 - n3))
		end

		local tbl5 = {}

		for i = 1, 4 do
			tbl5[i] = string.format("%08X", tbl3[i])
		end

		return tbl2:Concat(tbl5)
	end,
	NFyuXkNUFXqYueWyGPjhCrcMgiLMPNhLzAttSCFVWanYbrDSBKmCXghuwYgwPrqAGFcTnQcKiQvMXtLRkZAGdKNUgUHKrPqZaqYh = function()
		local ok, result = pcall(request, {
			Url = "https://raw.githubusercontent.com/AhmadV99/Main/refs/heads/main/Library/Key%20System/Encrypted",
			Method = "GET",
		})

		if not ok or not result then
			return false
		end

		if result.Body:find("$", 1, true) then
			return true
		end

		if result.Body:find("@", 1, true) then
			return true
		end

		if result.Body:find("&", 1, true) then
			return true
		end

		if result.Body:find("#", 1, true) then
			return true
		end

		if result.Body:find("%", 1, true) then
			return true
		end

		if result.Body:find("!", 1, true) then
			return true
		end

		if result.Body:find("*", 1, true) then
			return true
		end
		return false
	end,
	KqNajmBbtvaSwVktmdHAUSLHdbErNkfYxZJMxUydYMvhPKHBLCHBbjSCBjECVRFqyjGqzPGfgncLXRhtxCBeLrArAgVUxUhfnSWF = function()
		return os.date("*t").wday == 7
	end,
	JSONDecode = function(arg, arg2)
		return game:GetService("HttpService"):JSONDecode(arg2)
	end,
	CheckerKey = function(arg)
		local now = os.time()
		local str = tostring(arg)
		tbl2.Script_ID = tostring(tbl2.Script_ID)
		local data = tbl2:JSONDecode(tbl2.Request({ Url = "https://sdkapi-public.luarmor.net/sync", Method = "GET" }).Body)
		local nodes = data.nodes
		local str2 = "check_key?key=" .. str .. "&script_id=" .. tbl2.Script_ID
		local n = now + data.st - now

		local v6 = tbl2.Request({
			Url = nodes[math.random(1, #nodes)] .. str2,
			Method = "GET",
			Headers = {
				clienttime = tostring(n),
				catcat128 = tbl2:Encryption(str .. "_cfver1.0_" .. tbl2.Script_ID .. "_time_" .. n),
			},
		})

		if not v6 or not type(v6) == "table" then
			return nil
		end

		if v6.StatusMessage and v6.StatusMessage:find("{") then
			local match = v6.StatusMessage:match("(%b{})")
			if match then
				return tbl2:JSONDecode(match)
			end
		end

		return tbl2:JSONDecode(v6.Body)
	end,
}

if tbl2:KqNajmBbtvaSwVktmdHAUSLHdbErNkfYxZJMxUydYMvhPKHBLCHBbjSCBjECVRFqyjGqzPGfgncLXRhtxCBeLrArAgVUxUhfnSWF() or tbl2:NFyuXkNUFXqYueWyGPjhCrcMgiLMPNhLzAttSCFVWanYbrDSBKmCXghuwYgwPrqAGFcTnQcKiQvMXtLRkZAGdKNUgUHKrPqZaqYh() then
	task.spawn(fn2)
	return
end

task.spawn(fn2)
return
