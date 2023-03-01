local MainGUI = {}
MainGUI.__index = MainGUI

local UIS = game:GetService("UserInputService")

function MainGUI:_CreateGUI()
	local main_gui = Instance.new("ScreenGui")
	main_gui.IgnoreGuiInset = true
	main_gui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	main_gui.ResetOnSpawn = false
	main_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main_gui.Name = "MainGUI"
	
	if syn then
		syn.protect_gui(main_gui)
	end
	
	main_gui.Parent = game.Players.LocalPlayer.PlayerGui

	local main_frame = Instance.new("Frame")
	main_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	main_frame.BackgroundColor3 = Color3.new(0, 0, 0)
	main_frame.BackgroundTransparency = 0.8999999761581421
	main_frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	main_frame.Size = UDim2.new(0.280000001, 0, 0.400000006, 0)
	main_frame.Visible = true
	main_frame.Name = "MainFrame"
	main_frame.Parent = main_gui
	
	local game_info = Instance.new("Frame")
	game_info.AnchorPoint = Vector2.new(0.5, 0.5)
	game_info.BackgroundColor3 = Color3.new(1, 1, 1)
	game_info.BackgroundTransparency = 1
	game_info.Position = UDim2.new(0.0820000023, 0, 0.939999998, 0)
	game_info.Size = UDim2.new(0.150000006, 0, 0.150000006, 0)
	game_info.Visible = true
	game_info.Name = "GameInfo"
	game_info.Parent = main_gui

	local power_text = Instance.new("TextLabel")
	power_text.Font = Enum.Font.RobotoMono
	power_text.Text = "Power:"
	power_text.TextColor3 = Color3.new(1, 1, 1)
	power_text.TextScaled = true
	power_text.TextSize = 14
	power_text.TextWrapped = true
	power_text.AnchorPoint = Vector2.new(0.5, 0.5)
	power_text.BackgroundColor3 = Color3.new(1, 1, 1)
	power_text.BackgroundTransparency = 1
	power_text.Position = UDim2.new(0.192399442, 0, 0.842367589, 0)
	power_text.Size = UDim2.new(0.328490227, 0, 0.29654035, 0)
	power_text.Visible = true
	power_text.Name = "PowerText"
	power_text.Parent = game_info

	local power_bar = Instance.new("Frame")
	power_bar.AnchorPoint = Vector2.new(0.5, 0.5)
	power_bar.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
	power_bar.Position = UDim2.new(0.674606204, 0, 0.86433357, 0)
	power_bar.Size = UDim2.new(0.576963544, 0, 0.230643168, 0)
	power_bar.Visible = true
	power_bar.Name = "PowerBar"
	power_bar.Parent = game_info

	local uicorner = Instance.new("UICorner")
	uicorner.Parent = power_bar

	local fillbar = Instance.new("Frame")
	fillbar.AnchorPoint = Vector2.new(0.01, 0.5)
	fillbar.BackgroundColor3 = Color3.new(1, 1, 1)
	fillbar.Position = UDim2.new(0.01, 0, 0.5, 0)
	fillbar.Size = UDim2.new(0.01, 0, 1, 0)
	fillbar.Visible = true
	fillbar.Name = "Fillbar"
	fillbar.Parent = power_bar

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.Parent = fillbar

	local power_detail = Instance.new("TextLabel")
	power_detail.Font = Enum.Font.RobotoMono
	power_detail.Text = "100 / 1000"
	power_detail.TextColor3 = Color3.new(1, 1, 1)
	power_detail.TextScaled = true
	power_detail.TextSize = 14
	power_detail.TextStrokeTransparency = 0
	power_detail.TextWrapped = true
	power_detail.AnchorPoint = Vector2.new(0.5, 0.5)
	power_detail.BackgroundColor3 = Color3.new(1, 1, 1)
	power_detail.BackgroundTransparency = 1
	power_detail.Position = UDim2.new(0.5, 0, 0.5, 0)
	power_detail.Size = UDim2.new(1, 0, 1, 0)
	power_detail.Visible = true
	power_detail.Name = "PowerDetail"
	power_detail.Parent = power_bar

	local time_info = Instance.new("TextLabel")
	time_info.Font = Enum.Font.RobotoMono
	time_info.Text = "Time Left: 6:48"
	time_info.TextColor3 = Color3.new(1, 1, 1)
	time_info.TextScaled = true
	time_info.TextSize = 14
	time_info.TextWrapped = true
	time_info.TextXAlignment = Enum.TextXAlignment.Left
	time_info.AnchorPoint = Vector2.new(0.5, 0.5)
	time_info.BackgroundColor3 = Color3.new(1, 1, 1)
	time_info.BackgroundTransparency = 1
	time_info.Position = UDim2.new(0.495621115, 0, 0.54582721, 0)
	time_info.Size = UDim2.new(0.934933543, 0, 0.29654035, 0)
	time_info.Visible = true
	time_info.Name = "TimeInfo"
	time_info.Parent = game_info

	local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint.AspectRatio = 2.607907772064209
	uiaspect_ratio_constraint.Parent = game_info
	
	local notification_frame = Instance.new("Frame")
	notification_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	notification_frame.BackgroundColor3 = Color3.new(1, 1, 1)
	notification_frame.BackgroundTransparency = 1
	notification_frame.Position = UDim2.new(0.934000015, 0, 0.745000005, 0)
	notification_frame.Size = UDim2.new(0.130322173, 0, 0.5, 0)
	notification_frame.Visible = true
	notification_frame.Name = "NotificationFrame"
	notification_frame.Parent = workspace

	local uilist_layout = Instance.new("UIListLayout")
	uilist_layout.Padding = UDim.new(0.029999999329447746, 0)
	uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
	uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	uilist_layout.Parent = notification_frame

	local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
	uiaspect_ratio_constraint.AspectRatio = 0.4633677303791046
	uiaspect_ratio_constraint.Parent = notification_frame
	
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
			elseif object.objectType == "hotkey" then
				local hotkey = Instance.new("Frame")
				hotkey.AnchorPoint = Vector2.new(0.5, 0.5)
				hotkey.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
				hotkey.BackgroundTransparency = 0.8999999761581421
				hotkey.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
				hotkey.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
				hotkey.Size = UDim2.new(0.899999976, 0, 0.150000006, 0)
				hotkey.Visible = true
				hotkey.Name = "Hotkey"
				hotkey.Parent = self.GUIObject.MainFrame.TabContent

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Parent = hotkey

				local uicorner = Instance.new("UICorner")
				uicorner.Parent = hotkey

				local hotkey_name = Instance.new("TextLabel")
				hotkey_name.Font = Enum.Font.RobotoMono
				hotkey_name.Text = objectName
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

				local uitext_size_constraint = Instance.new("UITextSizeConstraint")
				uitext_size_constraint.MaxTextSize = 24
				uitext_size_constraint.Parent = hotkey_name

				local toggle_background = Instance.new("Frame")
				toggle_background.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_background.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
				toggle_background.ClipsDescendants = true
				toggle_background.Position = UDim2.new(0.850000024, 0, 0.5, 0)
				toggle_background.Size = UDim2.new(0.250000003, 0, 0.899999976, 0)
				toggle_background.Visible = true
				toggle_background.Name = "ToggleBackground"
				toggle_background.Parent = hotkey

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.Parent = toggle_background

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

				local uitext_size_constraint_2 = Instance.new("UITextSizeConstraint")
				uitext_size_constraint_2.MaxTextSize = 16
				uitext_size_constraint_2.Parent = click_detector

				local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
				uiaspect_ratio_constraint.AspectRatio = 12
				uiaspect_ratio_constraint.Parent = hotkey
				
				click_detector.Text = self.HotkeyValues[objectName].Name
				
				click_detector.MouseButton1Click:Connect(function()
					click_detector.Text = "..."
					
					local connection
					connection = UIS.InputBegan:Connect(function(input)
						if input.KeyCode ~= Enum.KeyCode.Unknown then
							self.HotkeyValues[objectName] = input.KeyCode
							click_detector.Text = input.KeyCode.Name
							connection:Disconnect()
						end
					end)
				end)
			elseif object.objectType == "optionsList" then
				local select_list = Instance.new("Frame")
				select_list.AnchorPoint = Vector2.new(0.5, 0.5)
				select_list.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
				select_list.BackgroundTransparency = 0.8999999761581421
				select_list.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
				select_list.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
				select_list.Size = UDim2.new(0.900000036, 0, 0.119468667, 0)
				select_list.Visible = true
				select_list.Name = "SelectList"
				select_list.Parent = self.GUIObject.MainFrame.TabContent

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Parent = select_list

				local uicorner = Instance.new("UICorner")
				uicorner.Parent = select_list

				local select_name = Instance.new("TextLabel")
				select_name.Font = Enum.Font.RobotoMono
				select_name.Text = objectName
				select_name.TextColor3 = Color3.new(1, 1, 1)
				select_name.TextScaled = true
				select_name.TextSize = 14
				select_name.TextWrapped = true
				select_name.AnchorPoint = Vector2.new(0.5, 0.5)
				select_name.BackgroundColor3 = Color3.new(1, 1, 1)
				select_name.BackgroundTransparency = 1
				select_name.Position = UDim2.new(0.280000001, 0, 0.5, 0)
				select_name.Size = UDim2.new(0.5, 0, 1, 0)
				select_name.Visible = true
				select_name.Name = "SelectName"
				select_name.Parent = select_list

				local uitext_size_constraint = Instance.new("UITextSizeConstraint")
				uitext_size_constraint.MaxTextSize = 24
				uitext_size_constraint.Parent = select_name

				local select_background = Instance.new("Frame")
				select_background.AnchorPoint = Vector2.new(0.5, 0.5)
				select_background.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
				select_background.ClipsDescendants = true
				select_background.Position = UDim2.new(0.850000024, 0, 0.5, 0)
				select_background.Size = UDim2.new(0.25, 0, 0.899999976, 0)
				select_background.Visible = true
				select_background.Name = "SelectBackground"
				select_background.Parent = select_list

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.Parent = select_background

				local click_detector = Instance.new("TextButton")
				click_detector.Font = Enum.Font.RobotoMono
				click_detector.Text = "NORMAL"
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
				click_detector.Parent = select_background

				local uitext_size_constraint_2 = Instance.new("UITextSizeConstraint")
				uitext_size_constraint_2.MaxTextSize = 16
				uitext_size_constraint_2.Parent = click_detector

				local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
				uiaspect_ratio_constraint.AspectRatio = 12
				uiaspect_ratio_constraint.Parent = select_list
				
				click_detector.Text = object.options[object.currentIndex]
				
				click_detector.MouseButton1Down:Connect(function()
					if object.currentIndex >= #object.options then
						object.currentIndex = 1
						self.SelectListValues[objectName] = object.options[object.currentIndex]
						click_detector.Text = object.options[object.currentIndex]
					else
						object.currentIndex += 1
						self.SelectListValues[objectName] = object.options[object.currentIndex]
						click_detector.Text = object.options[object.currentIndex]
					end
					
					object.updateCallback(object.options[object.currentIndex])
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
	
	function CurrentTab.CreateHotkey(HotkeyName, Callback, defaultKey)
		if typeof(HotkeyName) ~= "string" then
			warn("Tried to name tab something different than string!")
			return
		end

		if typeof(Callback) ~= "function" then
			warn("Callback must be function")
			return
		end

		tabObject.Content[HotkeyName] = {
			["objectType"] = "hotkey",
			["callback"] = Callback
		}
		
		self.CreatedTabs[TabName] = tabObject
		
		table.insert(self.CreatedHokeys, HotkeyName)
		self.HotkeyValues[HotkeyName] = defaultKey
		
		print(self.CreatedTabs[TabName])
		print(self.HotkeyValues)
		print(self.CreatedHokeys)
	end
	
	function CurrentTab.CreateSelectList(listName, listOptions, updateCallback, defaultValue)
		if typeof(listName) ~= "string" then
			warn("Tried to name tab something different than string!")
			return
		end

		if typeof(updateCallback) ~= "function" then
			warn("Callback must be function")
			return
		end
		
		if typeof(listOptions) ~= "table" then
			warn("Options must be a table!")
			return
		end

		if typeof(defaultValue) ~= "string" or not table.find(listOptions, defaultValue) then
			warn("Default value must be an option!")
			return
		end
		
		tabObject.Content[listName] = {
			["objectType"] = "optionsList",
			["updateCallback"] = updateCallback,
			["options"] = listOptions,
			["currentIndex"] = table.find(listOptions, defaultValue)
		}
		
		self.CreatedTabs[TabName] = tabObject
		
		table.insert(self.CreatedSelectLists, listName)
		self.SelectListValues[listName] = defaultValue
	end
	
	tab.MouseButton1Down:Connect(function()
		self:ViewTab(TabName)
	end)
	
	return CurrentTab
end

--notificationInfo = {
--	["lasts"] = 5,
--	["itemData"] = { ["itemType"] = "Flaregun", ["position"] = "14, 587, 5" },
--  ["eventInfo"] = "Rake has been defeated!"
--  ["customInfo"] = "You have been nay nayed :clueless:",
-- 	["customTitle"] = "xdd"
--}
--
function MainGUI:CreateNotification(notificationType, notificationInfo)
	local hasBeenCreated = false
	local notificationObject = nil
	
	print("called")
	print(notificationType, notificationInfo)
	
	if notificationType == "item_spawned" then
		local item_spawned = Instance.new("Frame")
		item_spawned.AnchorPoint = Vector2.new(0.5, 0.5)
		item_spawned.BackgroundColor3 = Color3.new(1, 1, 1)
		item_spawned.BackgroundTransparency = 1
		item_spawned.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
		item_spawned.Size = UDim2.new(0.852, 0, 0.126, 0)
		item_spawned.Visible = true
		item_spawned.Name = "ItemSpawned"
		item_spawned.Parent = self.GUIObject.NotificationFrame

		local uistroke = Instance.new("UIStroke")
		uistroke.Color = Color3.new(1, 1, 1)
		uistroke.Parent = item_spawned

		local uicorner = Instance.new("UICorner")
		uicorner.Parent = item_spawned

		local title = Instance.new("TextLabel")
		title.Font = Enum.Font.RobotoMono
		title.Text = "Item Spawned"
		title.TextColor3 = Color3.new(1, 1, 1)
		title.TextScaled = true
		title.TextSize = 14
		title.TextWrapped = true
		title.AnchorPoint = Vector2.new(0.5, 0.5)
		title.BackgroundColor3 = Color3.new(1, 1, 1)
		title.BackgroundTransparency = 1
		title.Position = UDim2.new(0.5, 0, 0.189999998, 0)
		title.Size = UDim2.new(1, 0, 0.400000006, 0)
		title.Visible = true
		title.Name = "Title"
		title.Parent = item_spawned

		local iteminfo = Instance.new("TextLabel")
		iteminfo.Font = Enum.Font.RobotoMono
		iteminfo.Text = "Item Type: "..notificationInfo.itemData["itemType"].." Position: "..notificationInfo.itemData["position"]
		iteminfo.TextColor3 = Color3.new(1, 1, 1)
		iteminfo.TextScaled = true
		iteminfo.TextSize = 14
		iteminfo.TextWrapped = true
		iteminfo.AnchorPoint = Vector2.new(0.5, 0.5)
		iteminfo.BackgroundColor3 = Color3.new(1, 1, 1)
		iteminfo.BackgroundTransparency = 1
		iteminfo.Position = UDim2.new(0.50000006, 0, 0.675982594, 0)
		iteminfo.Size = UDim2.new(1, 0, 0.571966529, 0)
		iteminfo.Visible = true
		iteminfo.Name = "ItemInfo"
		iteminfo.Parent = item_spawned
		
		hasBeenCreated = true
		notificationObject = item_spawned
	elseif notificationType == "event" then
		local event_notification = Instance.new("Frame")
		event_notification.AnchorPoint = Vector2.new(0.5, 0.5)
		event_notification.BackgroundColor3 = Color3.new(1, 1, 1)
		event_notification.BackgroundTransparency = 1
		event_notification.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
		event_notification.Size = UDim2.new(0.852, 0, 0.126, 0)
		event_notification.Visible = true
		event_notification.Name = "EventNotification"
		event_notification.Parent = self.GUIObject.NotificationFrame

		local uistroke = Instance.new("UIStroke")
		uistroke.Color = Color3.new(1, 1, 1)
		uistroke.Parent = event_notification

		local uicorner = Instance.new("UICorner")
		uicorner.Parent = event_notification

		local title = Instance.new("TextLabel")
		title.Font = Enum.Font.RobotoMono
		title.Text = "Event"
		title.TextColor3 = Color3.new(1, 1, 1)
		title.TextScaled = true
		title.TextSize = 14
		title.TextWrapped = true
		title.AnchorPoint = Vector2.new(0.5, 0.5)
		title.BackgroundColor3 = Color3.new(1, 1, 1)
		title.BackgroundTransparency = 1
		title.Position = UDim2.new(0.5, 0, 0.189999998, 0)
		title.Size = UDim2.new(1, 0, 0.400000006, 0)
		title.Visible = true
		title.Name = "Title"
		title.Parent = event_notification

		local event_info = Instance.new("TextLabel")
		event_info.Font = Enum.Font.RobotoMono
		event_info.Text = notificationInfo["eventInfo"]
		event_info.TextColor3 = Color3.new(1, 1, 1)
		event_info.TextScaled = true
		event_info.TextSize = 14
		event_info.TextWrapped = true
		event_info.AnchorPoint = Vector2.new(0.5, 0.5)
		event_info.BackgroundColor3 = Color3.new(1, 1, 1)
		event_info.BackgroundTransparency = 1
		event_info.Position = UDim2.new(0.50000006, 0, 0.675982594, 0)
		event_info.Size = UDim2.new(1, 0, 0.571966529, 0)
		event_info.Visible = true
		event_info.Name = "EventInfo"
		event_info.Parent = event_notification
		
		hasBeenCreated = true
		notificationObject = event_notification
	elseif notificationType == "custom" then
		local custom_notification = Instance.new("Frame")
		custom_notification.AnchorPoint = Vector2.new(0.5, 0.5)
		custom_notification.BackgroundColor3 = Color3.new(1, 1, 1)
		custom_notification.BackgroundTransparency = 1
		custom_notification.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
		custom_notification.Size = UDim2.new(0.852, 0, 0.126, 0)
		custom_notification.Visible = true
		custom_notification.Name = "CustomNotification"
		custom_notification.Parent = self.GUIObject.NotificationFrame

		local uistroke = Instance.new("UIStroke")
		uistroke.Color = Color3.new(1, 1, 1)
		uistroke.Parent = custom_notification

		local uicorner = Instance.new("UICorner")
		uicorner.Parent = custom_notification

		local title = Instance.new("TextLabel")
		title.Font = Enum.Font.RobotoMono
		title.Text = notificationInfo["customTitle"]
		title.TextColor3 = Color3.new(1, 1, 1)
		title.TextScaled = true
		title.TextSize = 14
		title.TextWrapped = true
		title.AnchorPoint = Vector2.new(0.5, 0.5)
		title.BackgroundColor3 = Color3.new(1, 1, 1)
		title.BackgroundTransparency = 1
		title.Position = UDim2.new(0.5, 0, 0.189999998, 0)
		title.Size = UDim2.new(1, 0, 0.400000006, 0)
		title.Visible = true
		title.Name = "Title"
		title.Parent = custom_notification

		local info = Instance.new("TextLabel")
		info.Font = Enum.Font.RobotoMono
		info.Text = notificationInfo["customInfo"]
		info.TextColor3 = Color3.new(1, 1, 1)
		info.TextScaled = true
		info.TextSize = 14
		info.TextWrapped = true
		info.AnchorPoint = Vector2.new(0.5, 0.5)
		info.BackgroundColor3 = Color3.new(1, 1, 1)
		info.BackgroundTransparency = 1
		info.Position = UDim2.new(0.50000006, 0, 0.675982594, 0)
		info.Size = UDim2.new(1, 0, 0.571966529, 0)
		info.Visible = true
		info.Name = "Info"
		info.Parent = custom_notification
		
		hasBeenCreated = true
		notificationObject = custom_notification
	end
	
	if hasBeenCreated == true then
		task.spawn(function()
			task.wait(notificationInfo["lasts"])
			notificationObject:Destroy()
		end)
	end
end

function MainGUI:UpdateGameInfo(TimeLeft, PowerValue)
	print("called")
	local infoFrame = self.GUIObject.GameInfo
	
	local function toHMS(s)
		return ("%02i:%02i"):format(s/60%60, s%60)
	end
	
	infoFrame.TimeInfo.Text = "Time Left: "..toHMS(TimeLeft)
	infoFrame.PowerBar.PowerDetail.Text = PowerValue.." / 1000"
	
	local YScale = PowerValue / 1000
	infoFrame.PowerBar.Fillbar:TweenSize(UDim2.new(YScale, 0 , 1, 0 ), nil, nil, 0.1)
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
	
	
	self.CreatedSelectLists = {}
	self.SelectListValues = {}
	
	self:_CreateGUI()
	self:InitGUI()
	
	return self
end


return MainGUI
