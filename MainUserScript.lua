local module = {}
local GUI = {}
function GUI:Startup()
	local Startup = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local Frame_2 = Instance.new("Frame")
	local ImageLabel_2 = Instance.new("ImageLabel")

	local grad1 = Instance.new("UIGradient")
	grad1.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0,Color3.fromRGB(255,85,127)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 170, 255)),
	})

	local grad2 = Instance.new("UIGradient")
	grad2.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0,Color3.fromRGB(255,85,127)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 170, 255)),
	})

	grad1.Rotation = 270

	grad1.Parent = Frame_2
	grad2.Parent = ImageLabel

	-- Properties

	Startup.Name = "Startup"
	Startup.Parent = game.CoreGui
	Startup.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Startup
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.499374479, 0, 0.498830199, 0)
	Frame.Size = UDim2.new(0, 498, 0, 277)

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(-0.112449802, 0, -0.108734906, 0)
	ImageLabel.Size = UDim2.new(0, 604, 0, 333)
	ImageLabel.Image = "rbxassetid://13120772371"
	ImageLabel.ImageTransparency = 0.4000000059604645

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(3.0733645e-08, 0, 0.391304344, 0)
	TextLabel.Size = UDim2.new(0, 498, 0, 60)
	TextLabel.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
	TextLabel.Text = "Osmium"
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true
	TextLabel.TextTransparency = 1

	TextLabel_2.Parent = Frame
	TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.Position = UDim2.new(0.746184707, 0, 0.915292501, 0)
	TextLabel_2.Size = UDim2.new(0, 144, 0, 17)
	TextLabel_2.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
	TextLabel_2.Text = "CC JBXSlash"
	TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14
	TextLabel_2.TextTransparency = 1
	TextLabel_2.TextWrapped = true

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.499374479, 0, 0.499665767, 0)
	Frame_2.Size = UDim2.new(0, 498, 0, 276)
	Frame_2.ZIndex = 0

	ImageLabel_2.Parent = Frame
	ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Size = UDim2.new(0, 498, 0, 276)
	ImageLabel_2.Image = "rbxassetid://11114238336"
	ImageLabel_2.ImageTransparency = 0.4000000059604645

	local config = {
		["OriginalSize"] = Frame.Size;
	}
	local ts = game:GetService("TweenService")
	local uis = game:GetService("UserInputService")
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()

	Frame.BackgroundTransparency = 1
	Frame_2.BackgroundTransparency = 1
	ts:Create(Frame,TweenInfo.new(2,Enum.EasingStyle.Quad),{BackgroundTransparency = 0}):Play(0)
	ts:Create(Frame_2,TweenInfo.new(2,Enum.EasingStyle.Quad),{BackgroundTransparency = 0}):Play(0)

	ts:Create(TextLabel,TweenInfo.new(2,Enum.EasingStyle.Quad),{TextTransparency = 0}):Play(0)
	ts:Create(TextLabel_2,TweenInfo.new(2,Enum.EasingStyle.Quad),{TextTransparency = 0.3}):Play(0)

	for i = 1, 3 do
		ts:Create(grad2,TweenInfo.new(2,Enum.EasingStyle.Quad),{Rotation = 360}):Play(0)
		task.wait(1.5)
		grad2.Rotation = 0
	end
	ts:Create(grad2,TweenInfo.new(2,Enum.EasingStyle.Quad),{Rotation = 360}):Play(0)
	ts:Create(Frame,TweenInfo.new(2,Enum.EasingStyle.Quad),{BackgroundTransparency = 1}):Play(0)
	ts:Create(Frame_2,TweenInfo.new(2,Enum.EasingStyle.Quad),{BackgroundTransparency = 1}):Play(0)
	ts:Create(ImageLabel,TweenInfo.new(2,Enum.EasingStyle.Quad),{ImageTransparency = 1}):Play(0)
	ts:Create(ImageLabel_2,TweenInfo.new(2,Enum.EasingStyle.Quad),{ImageTransparency = 1}):Play(0)
	ts:Create(TextLabel,TweenInfo.new(2,Enum.EasingStyle.Quad),{TextTransparency = 1}):Play(0)
	ts:Create(TextLabel_2,TweenInfo.new(2,Enum.EasingStyle.Quad),{TextTransparency = 1}):Play(0)

	task.wait(1.5)
	Startup:Destroy()
end
function stroke(frame: Frame)
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 3
	stroke.Transparency = .8
	stroke.Color  = Color3.fromRGB(0,0,0)
	stroke.Parent = frame
	return stroke
end
function GUI:Main(xt)
	local Startup = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local Frame_2 = Instance.new("Frame")
	local ImageLabel_2 = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local Frame_3 = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Frame_4 = Instance.new("Frame")
	local ScrollingFrame_2 = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Storage = Instance.new("Folder")
	local Tab = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local open = Instance.new("TextButton")
	local Drop = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local open_2 = Instance.new("TextButton")

	local grad1 = Instance.new("UIGradient")
	grad1.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0,Color3.fromRGB(255,85,127)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 170, 255)),
	})

	local grad2 = Instance.new("UIGradient")
	grad2.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0,Color3.fromRGB(255,85,127)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(85, 170, 255)),
	})

	grad1.Rotation = 270
	grad1.Parent = Frame_2
	grad2.Parent = ImageLabel
	-- Properties

	Startup.Name = math.random(1,10000000)
	Startup.Parent = game.CoreGui
	Startup.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Startup
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.499895751, 0, 0.499665737, 0)
	Frame.Size = UDim2.new(0, 603, 0, 364)

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(-0.107474715, 0, -0.108734801, 0)
	ImageLabel.Size = UDim2.new(0, 729, 0, 437)
	ImageLabel.ZIndex = -1
	ImageLabel.Image = "rbxassetid://13120772371"
	ImageLabel.ImageTransparency = 0.4000000059604645

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.501862049, 0, 0.502412915, 0)
	Frame_2.Size = UDim2.new(0, 601, 0, 361)
	Frame_2.ZIndex = 0

	ImageLabel_2.Parent = Frame
	ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Position = UDim2.new(0.00331674959, 0, 0.00549450563, 0)
	ImageLabel_2.Size = UDim2.new(0, 601, 0, 360)
	ImageLabel_2.Image = "rbxassetid://11114238336"
	ImageLabel_2.ImageTransparency = 0.4000000059604645

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0.0829187632, 0, 0.0204252321, 0)
	TextLabel.Size = UDim2.new(0, 498, 0, 60)
	TextLabel.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
	TextLabel.Text = xt
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true

	Frame_3.Parent = Frame
	Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_3.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame_3.BackgroundTransparency = 0.5
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.501862049, 0, 0.24142389, 0)
	Frame_3.Size = UDim2.new(0, 601, 0, 39)
	Frame_3.ZIndex = 0

	ScrollingFrame.Parent = Frame_3
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	ScrollingFrame.BackgroundTransparency = 1
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.04326123, 0, 0, 0)
	ScrollingFrame.Size = UDim2.new(0.95673877, 0, 1, 0)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
	ScrollingFrame.ScrollBarThickness = 0
	ScrollingFrame.ScrollingDirection = Enum.ScrollingDirection.X
	ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.X

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 7)

	Frame_4.Parent = Frame
	Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_4.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame_4.BackgroundTransparency = 0.5
	Frame_4.BorderSizePixel = 0
	Frame_4.Position = UDim2.new(0.501862049, 0, 0.652138174, 0)
	Frame_4.Size = UDim2.new(0, 601, 0, 246)
	Frame_4.ZIndex = 0

	ScrollingFrame_2.Parent = Frame_4
	ScrollingFrame_2.Active = true
	ScrollingFrame_2.BackgroundColor3 = Color3.new(1, 1, 1)
	ScrollingFrame_2.BackgroundTransparency = 1
	ScrollingFrame_2.BorderSizePixel = 0
	ScrollingFrame_2.Size = UDim2.new(1, 0, 1, 0)
	ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame_2.ScrollBarThickness = 0

	UIListLayout_2.Parent = ScrollingFrame_2
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 7)

	Storage.Name = "Storage"
	Storage.Parent = Startup.Parent

	Tab.Name = "Tab"
	Tab.Parent = Storage
	Tab.AnchorPoint = Vector2.new(0.5, 0.5)
	Tab.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.501862049, 0, 0.24142389, 0)
	Tab.Size = UDim2.new(0, 50, 0, 29)
	Tab.ZIndex = 0

	UICorner.Parent = Tab

	open.Name = "open"
	open.Parent = Tab
	open.BackgroundColor3 = Color3.new(1, 1, 1)
	open.BackgroundTransparency = 1
	open.Size = UDim2.new(1, 0, 1, 0)
	open.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
	open.Text = "Home"
	open.TextColor3 = Color3.new(1, 1, 1)
	open.TextScaled = true
	open.TextSize = 14
	open.TextWrapped = true

	Drop.Name = "Drop"
	Drop.Parent = Storage
	Drop.AnchorPoint = Vector2.new(0.5, 0.5)
	Drop.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
	Drop.BorderSizePixel = 0
	Drop.Position = UDim2.new(0.501862049, 0, 0.24142389, 0)
	Drop.Size = UDim2.new(0, 580, 0, 39)
	Drop.ZIndex = 0
	stroke(Drop)
	stroke(Tab)

	UICorner_2.Parent = Drop
	UICorner_2.CornerRadius = UDim.new(0, 3)

	open_2.Name = "open"
	open_2.Parent = Drop
	open_2.BackgroundColor3 = Color3.new(1, 1, 1)
	open_2.BackgroundTransparency = 1
	open_2.Position = UDim2.new(0.0155172413, 0, 0, 0)
	open_2.Size = UDim2.new(0.984482765, 0, 0, 36)
	open_2.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
	open_2.Text = "Dungeon Quest"
	open_2.TextColor3 = Color3.new(1, 1, 1)
	open_2.TextScaled = true
	open_2.TextSize = 14
	open_2.TextWrapped = true
	open_2.TextXAlignment = Enum.TextXAlignment.Left
	
	local ment = Instance.new("Frame")
	stroke(ment)
	ment.Size = UDim2.new(0,300,0,25)
	ment.Position = UDim2.new(.5,-150,1,-50)
	ment.BackgroundColor3 = Color3.fromRGB(30,30,30)
	
	local ii = Instance.new("ImageButton")
	ii.BackgroundTransparency = 1
	ii.Size = UDim2.new(0,25,0,25)
	ii.Position = UDim2.new(.5,-(25/2),0,0)
	Frame.Visible = false
	ii.Image = "rbxassetid://2790679829"
	ii.Parent = ment
	ii.MouseButton1Up:Connect(function()
		if Frame.Visible then
			Frame.Visible = false
			ii.Image = "rbxassetid://2790679829"
		else
			Frame.Visible = true
			ii.Image = "rbxassetid://2790679413"
		end
	end)
	task.spawn(function()
		task.wait(2)
		local ts = game:GetService("TweenService")
		ts:Create(ment,TweenInfo.new(2,Enum.EasingStyle.Quad),{Position = UDim2.new(.5,-150,1,30)}):Play(0)
		game.Players.LocalPlayer:GetMouse().Move:Connect(function()
			local y = game.Players.LocalPlayer:GetMouse().Y
			if y > game.Players.LocalPlayer:GetMouse().ViewSizeY - 100 then
				ts:Create(ment,TweenInfo.new(.5,Enum.EasingStyle.Quad),{Position = UDim2.new(.5,-150,1,-50)}):Play(0)
			else
				ts:Create(ment,TweenInfo.new(.5,Enum.EasingStyle.Quad),{Position = UDim2.new(.5,-150,1,50)}):Play(0)
			end
		end)
	end)
	
	ment.Parent = Startup

	local config = {
		["OriginalSize"] = Frame.Size;
	}
	local ts = game:GetService("TweenService")
	local uis = game:GetService("UserInputService")
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	
	ts:Create(TextLabel,TweenInfo.new(2,Enum.EasingStyle.Quad),{TextTransparency = 0}):Play(0)

	task.spawn(function()

		while true do
			ts:Create(grad2,TweenInfo.new(2,Enum.EasingStyle.Quad),{Rotation = 360}):Play(0)
			task.wait(1.5)
			grad2.Rotation = 0
		end
	end)
	local tabs = {}
	
	function newTab(text: string)
		local tab = Tab:Clone()
		tab.Parent = ScrollingFrame
		tab.open.Text = " ".. text.. " "
		tab.Name = text
		
		
		
		local scroll = Frame_4:Clone()
		scroll.Parent = Frame
		scroll.ZIndex = 1
		scroll:FindFirstChildOfClass("ScrollingFrame").AutomaticCanvasSize = Enum.AutomaticSize.Y
		table.insert(tabs,scroll)
		tab.open.MouseButton1Down:Connect(function()
			for i, v in pairs(tabs) do
				v.Visible = false
			end
			scroll.Visible = true
		end)
		function newLabel(text:string)
			local tab = Drop:Clone()
			tab.Parent = scroll:FindFirstChildOfClass("ScrollingFrame")
			tab.open.Text = " ".. text
			tab.open.TextXAlignment = Enum.TextXAlignment.Center
			tab.Name = text
			tab.open.FontFace =  Font.new("rbxassetid://12187365977",Enum.FontWeight.Medium)
		end
		function newDropdown(name: string)
			local drop = Drop:Clone()
			drop.Parent = scroll:FindFirstChildOfClass("ScrollingFrame")

			drop.open.Text = " ".. name
			drop.open.TextXAlignment = Enum.TextXAlignment.Center
			local container = Instance.new("Frame")
			container.Name = "container"
			container.Parent = drop
			container.BackgroundTransparency = 1
			container.Position = UDim2.new(0, 0, 0, 39)
			container.Size = UDim2.new(0, 580, 0, 0)
			container.Visible = false
			drop.container.AutomaticSize = Enum.AutomaticSize.Y

			UIListLayout_2 = Instance.new("UIListLayout")
			UIListLayout_2.Parent = drop.container
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0, 7)
			drop.open.MouseButton1Down:Connect(function()
				if drop.container.Visible then
					drop.container.Visible = false
					drop.Size = UDim2.new(0, 580,0, 36)
				else
					drop.container.Visible = true
					drop.Size = UDim2.new(0, 580,0, drop.container.AbsoluteSize.Y + 36)
				end

			end)
			function newButton(xrt,callback)
				local newButton = Instance.new("TextButton")
				newButton.Parent = drop.container
				newButton.TextXAlignment = Enum.TextXAlignment.Left
				newButton.TextScaled = true
				newButton.TextColor3 =Color3.new(1,1,1)
				newButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
				newButton.Text = xrt
				newButton.BorderSizePixel = 0
				newButton.Size = UDim2.new(1,0,0,36)
				newButton.MouseButton1Up:Connect(callback)
			end
			local function newLabel(xrt,bold: boolean)
				local newButton = Instance.new("TextLabel")
				newButton.Parent = drop.container
				newButton.TextXAlignment = Enum.TextXAlignment.Center
				newButton.TextScaled = true
				newButton.TextColor3 =Color3.new(1,1,1)
				newButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton.Text = xrt
				newButton.BorderSizePixel = 0
				newButton.Size = UDim2.new(1,0,0,36)
				if bold then
					newButton.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Medium)
				else
					newButton.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
				end
			end
			function newSwitch(xrt,enabled,callback)
				local newButton = Instance.new("TextButton")
				newButton.Parent = drop.container
				newButton.TextXAlignment = Enum.TextXAlignment.Left
				newButton.TextScaled = true
				newButton.TextColor3 =Color3.new(1,1,1)
				newButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
				newButton.Text = xrt
				newButton.BorderSizePixel = 0
				newButton.Size = UDim2.new(1,0,0,36)
				
				local function checkEnabled()
					if enabled then
						newButton.BackgroundColor3 =Color3.fromRGB(85, 170, 255)
					else
						newButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)

					end
				end
				checkEnabled()
				newButton.MouseButton1Up:Connect(function()
					enabled = not enabled
					checkEnabled()
					callback(enabled)
				end)
			end
			function newInput(xrt,pre,unfocused: "Callback")
				local newButton2 = Instance.new("TextLabel")
				newButton2.Parent = drop.container
				newButton2.TextXAlignment = Enum.TextXAlignment.Left
				newButton2.TextScaled = true
				newButton2.TextColor3 =Color3.new(1,1,1)
				newButton2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton2.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
				newButton2.BorderSizePixel = 0
				newButton2.Size = UDim2.new(.2,0,0,36)
				newButton2.Text = xrt
				local newButton = Instance.new("TextBox")
				newButton.Parent = newButton2
				newButton.TextXAlignment = Enum.TextXAlignment.Left
				newButton.TextScaled = true
				newButton.TextColor3 =Color3.new(1,1,1)
				newButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
				newButton.BorderSizePixel = 0
				newButton.Size = UDim2.new(4,0,0,36)
				newButton.Position = UDim2.new(1,0,0,0)
				newButton.PlaceholderText = pre
				newButton.FocusLost:Connect(function()
					unfocused({
						["Text"] = newButton.Text;
						["ChangeText"] = function(text: string)
							newButton.Text = text
						end,
					})
				end)
				return newButton
			end
			function newList(name)
				local newButton2 = Instance.new("TextButton")
				newButton2.Parent = drop.container
				newButton2.TextXAlignment = Enum.TextXAlignment.Left
				newButton2.TextScaled = true
				newButton2.TextColor3 =Color3.new(1,1,1)
				newButton2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton2.FontFace = Font.new("rbxassetid://12187365977",Enum.FontWeight.Light)
				newButton2.Text = name
				newButton2.BorderSizePixel = 0
				newButton2.Size = UDim2.new(1,0,0,36)
				
				local newButton = Instance.new("Frame")
				newButton.Parent = drop.container
				newButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
				newButton.BorderSizePixel = 0
				newButton.Size = UDim2.new(1,0,0,36)
				newButton.AutomaticSize = Enum.AutomaticSize.Y
				UIListLayout_2 = Instance.new("UIListLayout")
				UIListLayout_2.Parent = newButton
				UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.Padding = UDim.new(0, 7)
				UIListLayout_2.FillDirection = Enum.FillDirection.Vertical
				newButton.Visible = false
				newButton2.MouseButton1Up:Connect(function()
					newButton.Visible = not newButton.Visible
					if newButton.Visible then
						newButton2.Text = " > ".. name
					else
						newButton2.Text = " ".. name

					end
					drop.Size = UDim2.new(0, 580,0, drop.container.AbsoluteSize.Y + 36)
				end)
				
				
				local functions = {}
				local tabs = {}
				local tabs2 = {}
				
				function functions:NewSelect(name,onClick: "Callback")
					local tab = Tab:Clone()
					tab.Size = UDim2.new(1,0,0,36)
					tab.Parent = newButton
					tab.open.TextXAlignment = Enum.TextXAlignment.Left
					tab.open.Text = "	".. name.. " "
					tab.Name = text
					tabs[name] = tab
					table.insert(tabs2,tab)
					tab.open.MouseButton1Down:Connect(onClick)
				end
				function functions:RemoveSelect(name)
					local tab = tabs[name]
					if tab then
						tab:Destroy()
					end
				end
				function functions:ClearSelects()
					for i, v in pairs(tabs2) do
						if v then
							v:Destroy()
						end
					end
					tabs2 = {}
				end
				return functions
			end
			return {
				["NewButton"] = newButton;
				["NewList"] = newList;
				["NewInput"] = newInput;
				["NewSwitch"] = newSwitch;
				["NewLabel"] = newLabel;
			}
		end
		return {
			["newDropdown"] = newDropdown;
			["NewLabel"] = newLabel;
		}
	end
	return {["NewTab"] = newTab}
end
function module:Window(app)

GUI:Startup()
return GUI:Main(app)
end
return module
