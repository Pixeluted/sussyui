local MainGUI = {}
MainGUI.__index = MainGUI

local UIS = game:GetService("UserInputService")

function MainGUI:_CreateGUI()
	local main_gui = Instance.new("ScreenGui")
	main_gui.IgnoreGuiInset = true
	main_gui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	main_gui.ResetOnSpawn = true
	main_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main_gui.Name = "MainGUI"
	
	if syn then
		syn.protect_gui(main_gui)
	end
	
	main_gui.Parent = game.CoreGui

	local main_frame = Instance.new("Frame")
	main_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	main_frame.BackgroundColor3 = Color3.new(0, 0, 0)
	main_frame.BackgroundTransparency = 0.8999999761581421
	main_frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	main_frame.Size = UDim2.new(0.280000001, 0, 0.400000006, 0)
	main_frame.Visible = true
	main_frame.Name = "MainFrame"
	main_frame.Parent = main_gui
	
	local draggable_box = Instance.new("Frame")
	draggable_box.AnchorPoint = Vector2.new(0.5, 0.5)
	draggable_box.BackgroundColor3 = Color3.new(1, 1, 1)
	draggable_box.BackgroundTransparency = 1
	draggable_box.Position = UDim2.new(0.50000006, 0, 0.0683108866, 0)
	draggable_box.Size = UDim2.new(1, 0, 0.133378223, 0)
	draggable_box.Visible = true
	draggable_box.Name = "DraggableBox"
	draggable_box.Parent = main_frame

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 10)
	uicorner.Parent = main_frame

	local uistroke = Instance.new("UIStroke")
	uistroke.Color = Color3.new(1, 1, 1)
	uistroke.Parent = main_frame

	local menu_name = Instance.new("TextLabel")
	menu_name.Font = Enum.Font.RobotoMono
	menu_name.Text = "Rake Evolved V3"
	menu_name.TextColor3 = Color3.new(1, 1, 1)
	menu_name.TextScaled = true
	menu_name.TextSize = 14
	menu_name.TextWrapped = true
	menu_name.AnchorPoint = Vector2.new(0.5, 0.5)
	menu_name.BackgroundColor3 = Color3.new(1, 1, 1)
	menu_name.BackgroundTransparency = 1
	menu_name.Position = UDim2.new(0.49999997, 0, 0.0616943613, 0)
	menu_name.Size = UDim2.new(1, 0, 0.113388695, 0)
	menu_name.Visible = true
	menu_name.Name = "MenuName"
	menu_name.Parent = main_frame

	local uitext_size_constraint = Instance.new("UITextSizeConstraint")
	uitext_size_constraint.MaxTextSize = 27
	uitext_size_constraint.Parent = menu_name

	local tabs = Instance.new("ScrollingFrame")
	tabs.BottomImage = ""
	tabs.CanvasSize = UDim2.new(0, 0, 0, 239)
	tabs.MidImage = ""
	tabs.ScrollBarImageColor3 = Color3.new(0, 0, 0)
	tabs.ScrollBarThickness = 0
	tabs.ScrollingDirection = Enum.ScrollingDirection.Y
	tabs.TopImage = ""
	tabs.Active = true
	tabs.AnchorPoint = Vector2.new(0.5, 0.5)
	tabs.BackgroundColor3 = Color3.new(1, 1, 1)
	tabs.BackgroundTransparency = 1
	tabs.Position = UDim2.new(0.144018903, 0, 0.549000025, 0)
	tabs.Size = UDim2.new(0.256548762, 0, 0.827000022, 0)
	tabs.Visible = true
	tabs.Name = "Tabs"
	tabs.Parent = main_frame

	local uilist_layout = Instance.new("UIListLayout")
	uilist_layout.Padding = UDim.new(0.000009999999747378752, 0)
	uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
	uilist_layout.Parent = tabs

	local tab = Instance.new("TextButton")
	tab.Font = Enum.Font.RobotoMono
	tab.Text = "Teleportation"
	tab.TextColor3 = Color3.new(1, 1, 1)
	tab.TextScaled = true
	tab.TextSize = 14
	tab.TextWrapped = true
	tab.AnchorPoint = Vector2.new(0.5, 0.5)
	tab.BackgroundColor3 = Color3.new(1, 1, 1)
	tab.BackgroundTransparency = 1
	tab.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
	tab.Size = UDim2.new(1, 0, 0.146165267, 0)
	tab.Visible = true
	tab.Name = "Tab"
	tab.Parent = uilist_layout

	local uitext_size_constraint_2 = Instance.new("UITextSizeConstraint")
	uitext_size_constraint_2.MaxTextSize = 41
	uitext_size_constraint_2.MinTextSize = 5
	uitext_size_constraint_2.Parent = tab

	local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint.AspectRatio = 4
	uiaspect_ratio_constraint.AspectType = Enum.AspectType.ScaleWithParentSize
	uiaspect_ratio_constraint.Parent = tab

	local tab_content = Instance.new("ScrollingFrame")
	tab_content.BottomImage = ""
	tab_content.CanvasSize = UDim2.new(0, 0, 0, 123)
	tab_content.MidImage = ""
	tab_content.ScrollBarThickness = 0
	tab_content.ScrollingDirection = Enum.ScrollingDirection.Y
	tab_content.TopImage = ""
	tab_content.AnchorPoint = Vector2.new(0.5, 0.5)
	tab_content.BackgroundColor3 = Color3.new(1, 1, 1)
	tab_content.BackgroundTransparency = 1
	tab_content.Position = UDim2.new(0.633486807, 0, 0.561834037, 0)
	tab_content.Size = UDim2.new(0.690999985, 0, 0.800000012, 0)
	tab_content.Visible = true
	tab_content.Name = "TabContent"
	tab_content.Parent = main_frame

	local uilist_layout_2 = Instance.new("UIListLayout")
	uilist_layout_2.Padding = UDim.new(0.03999999910593033, 0)
	uilist_layout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uilist_layout_2.SortOrder = Enum.SortOrder.LayoutOrder
	uilist_layout_2.Parent = tab_content

	local button = Instance.new("Frame")
	button.AnchorPoint = Vector2.new(0.5, 0.5)
	button.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	button.BackgroundTransparency = 0.8999999761581421
	button.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	button.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
	button.Size = UDim2.new(0.950000048, 0, 0.126105815, 0)
	button.Visible = true
	button.Name = "Button"
	button.Parent = uilist_layout_2

	local uistroke_2 = Instance.new("UIStroke")
	uistroke_2.Color = Color3.new(1, 1, 1)
	uistroke_2.Parent = button

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.Parent = button

	local uiaspect_ratio_constraint_2 = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint_2.AspectRatio = 12
	uiaspect_ratio_constraint_2.Parent = button

	local button_name = Instance.new("TextLabel")
	button_name.Font = Enum.Font.RobotoMono
	button_name.Text = "Kill Rake"
	button_name.TextColor3 = Color3.new(1, 1, 1)
	button_name.TextScaled = true
	button_name.TextSize = 14
	button_name.TextWrapped = true
	button_name.AnchorPoint = Vector2.new(0.5, 0.5)
	button_name.BackgroundColor3 = Color3.new(1, 1, 1)
	button_name.BackgroundTransparency = 1
	button_name.Position = UDim2.new(0.5, 0, 0.5, 0)
	button_name.Size = UDim2.new(1, 0, 1, 0)
	button_name.Visible = true
	button_name.Name = "ButtonName"
	button_name.Parent = button

	local uitext_size_constraint_3 = Instance.new("UITextSizeConstraint")
	uitext_size_constraint_3.MaxTextSize = 24
	uitext_size_constraint_3.Parent = button_name

	local button_detector = Instance.new("TextButton")
	button_detector.Font = Enum.Font.SourceSans
	button_detector.Text = ""
	button_detector.TextColor3 = Color3.new(0, 0, 0)
	button_detector.TextScaled = true
	button_detector.TextSize = 14
	button_detector.TextWrapped = true
	button_detector.AnchorPoint = Vector2.new(0.5, 0.5)
	button_detector.BackgroundColor3 = Color3.new(1, 1, 1)
	button_detector.BackgroundTransparency = 1
	button_detector.Position = UDim2.new(0.5, 0, 0.5, 0)
	button_detector.Size = UDim2.new(1, 0, 1, 0)
	button_detector.Visible = true
	button_detector.Name = "ButtonDetector"
	button_detector.Parent = button

	local hotkey = Instance.new("Frame")
	hotkey.AnchorPoint = Vector2.new(0.5, 0.5)
	hotkey.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	hotkey.BackgroundTransparency = 0.8999999761581421
	hotkey.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	hotkey.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
	hotkey.Size = UDim2.new(0.950000048, 0, 0.126105815, 0)
	hotkey.Visible = true
	hotkey.Name = "Hotkey"
	hotkey.Parent = uilist_layout_2

	local uistroke_3 = Instance.new("UIStroke")
	uistroke_3.Color = Color3.new(1, 1, 1)
	uistroke_3.Parent = hotkey

	local uicorner_3 = Instance.new("UICorner")
	uicorner_3.Parent = hotkey

	local uiaspect_ratio_constraint_3 = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint_3.AspectRatio = 12
	uiaspect_ratio_constraint_3.Parent = hotkey

	local hotkey_name = Instance.new("TextLabel")
	hotkey_name.Font = Enum.Font.RobotoMono
	hotkey_name.Text = "Fast Run"
	hotkey_name.TextColor3 = Color3.new(1, 1, 1)
	hotkey_name.TextScaled = true
	hotkey_name.TextSize = 14
	hotkey_name.TextWrapped = true
	hotkey_name.AnchorPoint = Vector2.new(0.5, 0.5)
	hotkey_name.BackgroundColor3 = Color3.new(1, 1, 1)
	hotkey_name.BackgroundTransparency = 1
	hotkey_name.Position = UDim2.new(0.280000001, 0, 0.5, 0)
	hotkey_name.Size = UDim2.new(0.5, 0, 1, 0)
	hotkey_name.Visible = true
	hotkey_name.Name = "HotkeyName"
	hotkey_name.Parent = hotkey

	local uitext_size_constraint_4 = Instance.new("UITextSizeConstraint")
	uitext_size_constraint_4.MaxTextSize = 24
	uitext_size_constraint_4.Parent = hotkey_name

	local toggle_background = Instance.new("Frame")
	toggle_background.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle_background.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
	toggle_background.ClipsDescendants = true
	toggle_background.Position = UDim2.new(0.850000024, 0, 0.5, 0)
	toggle_background.Size = UDim2.new(0.180000007, 0, 0.699999988, 0)
	toggle_background.Visible = true
	toggle_background.Name = "ToggleBackground"
	toggle_background.Parent = hotkey

	local uicorner_4 = Instance.new("UICorner")
	uicorner_4.Parent = toggle_background

	local click_detector = Instance.new("TextButton")
	click_detector.Font = Enum.Font.RobotoMono
	click_detector.Text = "Q"
	click_detector.TextColor3 = Color3.new(1, 1, 1)
	click_detector.TextScaled = true
	click_detector.TextSize = 14
	click_detector.TextWrapped = true
	click_detector.AnchorPoint = Vector2.new(0.5, 0.5)
	click_detector.BackgroundColor3 = Color3.new(1, 1, 1)
	click_detector.BackgroundTransparency = 1
	click_detector.Position = UDim2.new(0.5, 0, 0.5, 0)
	click_detector.Size = UDim2.new(1, 0, 1, 0)
	click_detector.Visible = true
	click_detector.Name = "ClickDetector"
	click_detector.Parent = toggle_background

	local uitext_size_constraint_5 = Instance.new("UITextSizeConstraint")
	uitext_size_constraint_5.MaxTextSize = 16
	uitext_size_constraint_5.Parent = click_detector

	local toggle = Instance.new("Frame")
	toggle.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	toggle.BackgroundTransparency = 0.8999999761581421
	toggle.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	toggle.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
	toggle.Size = UDim2.new(0.950000048, 0, 0.127353221, 0)
	toggle.Visible = true
	toggle.Name = "Toggle"
	toggle.Parent = uilist_layout_2

	local uistroke_4 = Instance.new("UIStroke")
	uistroke_4.Color = Color3.new(1, 1, 1)
	uistroke_4.Parent = toggle

	local uicorner_5 = Instance.new("UICorner")
	uicorner_5.Parent = toggle

	local uiaspect_ratio_constraint_4 = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint_4.AspectRatio = 12
	uiaspect_ratio_constraint_4.Parent = toggle

	local toggle_name = Instance.new("TextLabel")
	toggle_name.Font = Enum.Font.RobotoMono
	toggle_name.Text = "Auto Hit"
	toggle_name.TextColor3 = Color3.new(1, 1, 1)
	toggle_name.TextScaled = true
	toggle_name.TextSize = 14
	toggle_name.TextWrapped = true
	toggle_name.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle_name.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle_name.BackgroundTransparency = 1
	toggle_name.Position = UDim2.new(0.280000001, 0, 0.5, 0)
	toggle_name.Size = UDim2.new(0.5, 0, 1, 0)
	toggle_name.Visible = true
	toggle_name.Name = "ToggleName"
	toggle_name.Parent = toggle

	local uitext_size_constraint_6 = Instance.new("UITextSizeConstraint")
	uitext_size_constraint_6.MaxTextSize = 24
	uitext_size_constraint_6.Parent = toggle_name

	local toggle_background_2 = Instance.new("Frame")
	toggle_background_2.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle_background_2.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
	toggle_background_2.ClipsDescendants = true
	toggle_background_2.Position = UDim2.new(0.850000024, 0, 0.5, 0)
	toggle_background_2.Size = UDim2.new(0.150000006, 0, 0.699999988, 0)
	toggle_background_2.Visible = true
	toggle_background_2.Name = "ToggleBackground"
	toggle_background_2.Parent = toggle

	local uicorner_6 = Instance.new("UICorner")
	uicorner_6.Parent = toggle_background_2

	local toggle_off = Instance.new("Frame")
	toggle_off.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle_off.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle_off.Position = UDim2.new(0.300000012, 0, 0.5, 0)
	toggle_off.Size = UDim2.new(0.600000024, 0, 1, 0)
	toggle_off.Visible = true
	toggle_off.Name = "ToggleOff"
	toggle_off.Parent = toggle_background_2

	local uicorner_7 = Instance.new("UICorner")
	uicorner_7.Parent = toggle_off

	local toggle_on = Instance.new("Frame")
	toggle_on.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle_on.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle_on.Position = UDim2.new(0.699999988, 0, 0.5, 0)
	toggle_on.Size = UDim2.new(0.600000024, 0, 1, 0)
	toggle_on.Visible = false
	toggle_on.Name = "ToggleOn"
	toggle_on.Parent = toggle_background_2

	local uicorner_8 = Instance.new("UICorner")
	uicorner_8.Parent = toggle_on

	local click_detector_2 = Instance.new("TextButton")
	click_detector_2.Font = Enum.Font.SourceSans
	click_detector_2.Text = ""
	click_detector_2.TextColor3 = Color3.new(0, 0, 0)
	click_detector_2.TextScaled = true
	click_detector_2.TextSize = 14
	click_detector_2.TextWrapped = true
	click_detector_2.AnchorPoint = Vector2.new(0.5, 0.5)
	click_detector_2.BackgroundColor3 = Color3.new(1, 1, 1)
	click_detector_2.BackgroundTransparency = 1
	click_detector_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	click_detector_2.Size = UDim2.new(1, 0, 1, 0)
	click_detector_2.Visible = true
	click_detector_2.Name = "ClickDetector"
	click_detector_2.Parent = toggle_background_2

	local uipadding = Instance.new("UIPadding")
	uipadding.PaddingTop = UDim.new(0.009999999776482582, 0)
	uipadding.Parent = tab_content

	local content_outline = Instance.new("Frame")
	content_outline.AnchorPoint = Vector2.new(0.5, 0.5)
	content_outline.BackgroundColor3 = Color3.new(1, 1, 1)
	content_outline.BackgroundTransparency = 1
	content_outline.Position = UDim2.new(0.633000016, 0, 0.548500001, 0)
	content_outline.Size = UDim2.new(0.690999985, 0, 0.827000022, 0)
	content_outline.Visible = true
	content_outline.Name = "ContentOutline"
	content_outline.Parent = main_frame

	local uicorner_9 = Instance.new("UICorner")
	uicorner_9.Parent = content_outline

	local uistroke_5 = Instance.new("UIStroke")
	uistroke_5.Color = Color3.new(1, 1, 1)
	uistroke_5.Parent = content_outline

	local uiaspect_ratio_constraint_5 = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint_5.AspectRatio = 1.8441860675811768
	uiaspect_ratio_constraint_5.Parent = main_frame
	
	self.GUIObject = main_gui
end

function MainGUI:CalculateCanvasSize(ScrollBar, UIListLayout)
	local yOffset = UIListLayout.AbsoluteContentSize.Y + 10
	return UDim2.new(0, 0, 0, yOffset)
end

function MainGUI:UpdateCanvasSizes()
	self.GUIObject.MainFrame.Tabs.CanvasSize = self:CalculateCanvasSize(self.GUIObject.MainFrame.Tabs, self.GUIObject.MainFrame.Tabs.UIListLayout)
	self.GUIObject.MainFrame.TabContent.CanvasSize = self:CalculateCanvasSize(self.GUIObject.MainFrame.TabContent, self.GUIObject.MainFrame.TabContent.UIListLayout)
end

function MainGUI:UpdateInput(input)
	local delta = input.Position - self.dragStart
	local position = UDim2.new(self.startPos.X.Scale, self.startPos.X.Offset + delta.X, self.startPos.Y.Scale, self.startPos.Y.Offset + delta.Y)
	
	game:GetService("TweenService"):Create(self.GUIObject.MainFrame, TweenInfo.new(self.dragSpeed), {Position = position}):Play()
end

function MainGUI:SetDraggable(boolean)
	self.isDraggable = boolean
end

function MainGUI:InitGUI()
	if self.GUIObject ~= nil then
		self:UpdateCanvasSizes()
		
		self.GUIObject.MainFrame.Tabs.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			self:UpdateCanvasSizes()
		end)
		
		self.GUIObject.MainFrame.TabContent.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			self:UpdateCanvasSizes()
		end)
		
		local draggableBox = self.GUIObject.MainFrame.DraggableBox
		
		draggableBox.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				if self.isDraggable == false then
					return
				end
				
				self.isDragging = true
				self.dragStart = input.Position
				self.startPos = self.GUIObject.MainFrame.Position
				
				local changedConnection 
				changedConnection = input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						if self.isDragging == true then
							self.isDragging = false
							changedConnection:Disconnect()
						end
					end
				end)
			end
		end)
		
		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if self.isDragging == true then
					self:UpdateInput(input)
				end
			end
		end)
	end
end

function MainGUI:ViewTab(TabName)
	if self.CreatedTabs[TabName] ~= nil then
		for _, frame in pairs(self.GUIObject.MainFrame.TabContent:GetChildren()) do
			if frame:IsA("Frame") then
				frame:Destroy()
			end
		end
		
		for objectName, object in pairs(self.CreatedTabs[TabName].Content) do 
			if object.objectType == "button" then
				local button = Instance.new("Frame")
				button.AnchorPoint = Vector2.new(0.5, 0.5)
				button.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
				button.BackgroundTransparency = 0.8999999761581421
				button.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
				button.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
				button.Size = UDim2.new(0.899999976, 0, 0.150000006, 0)
				button.Visible = true
				button.Name = "Button"
				button.Parent = self.GUIObject.MainFrame.TabContent

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Parent = button

				local uicorner = Instance.new("UICorner")
				uicorner.Parent = button

				local button_name = Instance.new("TextLabel")
				button_name.Font = Enum.Font.RobotoMono
				button_name.Text = objectName
				button_name.TextColor3 = Color3.new(1, 1, 1)
				button_name.TextScaled = true
				button_name.TextSize = 14
				button_name.TextWrapped = true
				button_name.AnchorPoint = Vector2.new(0.5, 0.5)
				button_name.BackgroundColor3 = Color3.new(1, 1, 1)
				button_name.BackgroundTransparency = 1
				button_name.Position = UDim2.new(0.5, 0, 0.5, 0)
				button_name.Size = UDim2.new(1, 0, 1, 0)
				button_name.Visible = true
				button_name.Name = "ButtonName"
				button_name.Parent = button

				local uitext_size_constraint = Instance.new("UITextSizeConstraint")
				uitext_size_constraint.MaxTextSize = 24
				uitext_size_constraint.Parent = button_name

				local button_detector = Instance.new("TextButton")
				button_detector.Font = Enum.Font.SourceSans
				button_detector.Text = ""
				button_detector.TextColor3 = Color3.new(0, 0, 0)
				button_detector.TextScaled = true
				button_detector.TextSize = 14
				button_detector.TextWrapped = true
				button_detector.AnchorPoint = Vector2.new(0.5, 0.5)
				button_detector.BackgroundColor3 = Color3.new(1, 1, 1)
				button_detector.BackgroundTransparency = 1
				button_detector.Position = UDim2.new(0.5, 0, 0.5, 0)
				button_detector.Size = UDim2.new(1, 0, 1, 0)
				button_detector.Visible = true
				button_detector.Name = "ButtonDetector"
				button_detector.Parent = button

				local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
				uiaspect_ratio_constraint.AspectRatio = 12
				uiaspect_ratio_constraint.Parent = button
				
				button_detector.MouseButton1Click:Connect(object.callback)
			elseif object.objectType == "toggle" then
				local toggle = Instance.new("Frame")
				toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
				toggle.BackgroundTransparency = 0.8999999761581421
				toggle.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
				toggle.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
				toggle.Size = UDim2.new(0.899999976, 0, 0.150000006, 0)
				toggle.Visible = true
				toggle.Name = "Toggle"
				toggle.Parent = self.GUIObject.MainFrame.TabContent

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Parent = toggle

				local uicorner = Instance.new("UICorner")
				uicorner.Parent = toggle

				local toggle_name = Instance.new("TextLabel")
				toggle_name.Font = Enum.Font.RobotoMono
				toggle_name.Text = objectName
				toggle_name.TextColor3 = Color3.new(1, 1, 1)
				toggle_name.TextScaled = true
				toggle_name.TextSize = 14
				toggle_name.TextWrapped = true
				toggle_name.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_name.BackgroundColor3 = Color3.new(1, 1, 1)
				toggle_name.BackgroundTransparency = 1
				toggle_name.Position = UDim2.new(0.280000001, 0, 0.5, 0)
				toggle_name.Size = UDim2.new(0.5, 0, 1, 0)
				toggle_name.Visible = true
				toggle_name.Name = "ToggleName"
				toggle_name.Parent = toggle

				local uitext_size_constraint = Instance.new("UITextSizeConstraint")
				uitext_size_constraint.MaxTextSize = 24
				uitext_size_constraint.Parent = toggle_name

				local toggle_background = Instance.new("Frame")
				toggle_background.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_background.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
				toggle_background.ClipsDescendants = true
				toggle_background.Position = UDim2.new(0.860000014, 0, 0.5, 0)
				toggle_background.Size = UDim2.new(0.150000006, 0, 0.800000012, 0)
				toggle_background.Visible = true
				toggle_background.Name = "ToggleBackground"
				toggle_background.Parent = toggle

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.Parent = toggle_background

				local toggle_off = Instance.new("Frame")
				toggle_off.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_off.BackgroundColor3 = Color3.new(1, 1, 1)
				toggle_off.Position = UDim2.new(0.300000012, 0, 0.5, 0)
				toggle_off.Size = UDim2.new(0.600000024, 0, 1, 0)
				toggle_off.Visible = true
				toggle_off.Name = "ToggleOff"
				toggle_off.Parent = toggle_background

				local uicorner_3 = Instance.new("UICorner")
				uicorner_3.Parent = toggle_off

				local toggle_on = Instance.new("Frame")
				toggle_on.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_on.BackgroundColor3 = Color3.new(1, 1, 1)
				toggle_on.Position = UDim2.new(0.699999988, 0, 0.5, 0)
				toggle_on.Size = UDim2.new(0.600000024, 0, 1, 0)
				toggle_on.Visible = false
				toggle_on.Name = "ToggleOn"
				toggle_on.Parent = toggle_background

				local uicorner_4 = Instance.new("UICorner")
				uicorner_4.Parent = toggle_on

				local click_detector = Instance.new("TextButton")
				click_detector.Font = Enum.Font.SourceSans
				click_detector.Text = ""
				click_detector.TextColor3 = Color3.new(0, 0, 0)
				click_detector.TextScaled = true
				click_detector.TextSize = 14
				click_detector.TextWrapped = true
				click_detector.AnchorPoint = Vector2.new(0.5, 0.5)
				click_detector.BackgroundColor3 = Color3.new(1, 1, 1)
				click_detector.BackgroundTransparency = 1
				click_detector.Position = UDim2.new(0.5, 0, 0.5, 0)
				click_detector.Size = UDim2.new(1, 0, 1, 0)
				click_detector.Visible = true
				click_detector.Name = "ClickDetector"
				click_detector.Parent = toggle_background

				local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
				uiaspect_ratio_constraint.AspectRatio = 12
				uiaspect_ratio_constraint.Parent = toggle
				
				if self.ToggleValues[objectName] == true then
					toggle_off.Position = toggle_on.Position
				end
				
				click_detector.MouseButton1Down:Connect(function()
					local newValue = not self.ToggleValues[objectName]
					
					if newValue == true then
						toggle_off:TweenPosition(toggle_on.Position, nil, nil, 0.1)
					else
						toggle_off:TweenPosition(UDim2.new(0.3, 0 , 0.5, 0), nil, nil, 0.1)
					end
					
					self.ToggleValues[objectName] = newValue
					task.spawn(function()
						object.updateCallback(newValue)
					end)
				end)
			end
		end
	end
end

function MainGUI:CreateTab(TabName)
	if typeof(TabName) ~= "string" then
		warn("Tried to name tab something different than string!")
		return
	end
	
	local CurrentTab = {}
	
	local tab = Instance.new("TextButton")
	tab.Font = Enum.Font.RobotoMono
	tab.Text = TabName
	tab.TextColor3 = Color3.new(1, 1, 1)
	tab.TextScaled = true
	tab.TextSize = 14
	tab.TextWrapped = true
	tab.AnchorPoint = Vector2.new(0.5, 0.5)
	tab.BackgroundColor3 = Color3.new(1, 1, 1)
	tab.BackgroundTransparency = 1
	tab.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
	tab.Visible = true
	tab.Name = "Tab"
	tab.Parent = self.GUIObject.MainFrame.Tabs
	tab.Size = UDim2.new(1, 0 , 0.146, 0)

	local uitext_size_constraint = Instance.new("UITextSizeConstraint")
	uitext_size_constraint.MaxTextSize = 41
	uitext_size_constraint.MinTextSize = 5
	uitext_size_constraint.Parent = tab

	local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint.AspectRatio = 4
	uiaspect_ratio_constraint.AspectType = Enum.AspectType.ScaleWithParentSize
	uiaspect_ratio_constraint.Parent = tab
	
	local tabObject = {
		["Content"] = {
			
		}
	}
	
	self.CreatedTabs[TabName] = tabObject
	
	function CurrentTab.CreateButton(buttonName, buttonCallback)
		if typeof(buttonName) ~= "string" then
			warn("Tried to name tab something different than string!")
			return
		end
		
		if typeof(buttonCallback) ~= "function" then
			warn("Callback must be function")
			return
		end
		
		tabObject.Content[buttonName] = {
			["objectType"] = "button",
			["callback"] = buttonCallback
		}
		
		self.CreatedTabs[TabName] = tabObject
		
		print(self.CreatedTabs[TabName])
	end
	
	function CurrentTab.CreateToggle(toggleName, toggleUpdateCallback, defaultValue)
		if typeof(toggleName) ~= "string" then
			warn("Tried to name tab something different than string!")
			return
		end

		if typeof(toggleUpdateCallback) ~= "function" then
			warn("Callback must be function")
			return
		end
		
		if typeof(defaultValue) ~= "boolean" then
			warn("Default value must be an boolean!")
			return
		end
		
		
		tabObject.Content[toggleName] = {
			["objectType"] = "toggle",
			["updateCallback"] = toggleUpdateCallback
		}
		
		self.CreatedTabs[TabName] = tabObject
		
		table.insert(self.CreatedToggles, toggleName)
		self.ToggleValues[toggleName] = defaultValue
		
		print(self.CreatedTabs[TabName])
	end
	
	tab.MouseButton1Down:Connect(function()
		self:ViewTab(TabName)
	end)
	
	return CurrentTab
end

function MainGUI.create()
	local self = setmetatable({}, MainGUI)
	
	self.GUIObject = nil
	
	self.isDraggable = true	
	self.isDragging = false
	self.dragSpeed = 0.01
	self.dragStart = nil
	self.startPos = nil
	
	
	--{
	--- ["Rake ESP"] = false/true
	--}
	self.ToggleValues = {}
	
	-- {
	--  "Rake ESP",
	--  "Always Day"
	-- }
	
	self.CreatedToggles = {}
	
	--{
	--- ["Fast Run"] = Enum.KeyCode.L
	--}
	self.HotkeyValues = {}
	
	-- {
	--  "Fast Run",
	-- }
	self.CreatedHokeys = {}
	
	-- {
	--  ["Visuals"] = {
	--		["Content"] = {
	--			"Always Day",
	--			"Always Night"
	--			"Fullbright"
	--		}
	--  },
	-- }
	self.CreatedTabs = {}
	
	
	self:_CreateGUI()
	self:InitGUI()
	
	return self
end


return MainGUI
