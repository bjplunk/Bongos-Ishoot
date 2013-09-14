--[[
	LibKeyBound-1.0 localization file
		French by ?
--]]

if (GetLocale() ~= "frFR") then
	return
end

local REVISION = tonumber(("$Revision: 75188 $"):match("%d+"))
if (LibKeyBoundLocale10 and REVISION <= LibKeyBoundLocale10.REVISION) then
	return
end

LibKeyBoundLocale10 = {
	REVISION = REVISION;
	Enabled = "Bindings mode enabled";
	Disabled = "Bindings mode disabled";
	ClearTip = format("Appuyer sur %s pour effacer tous les bindings", GetBindingText("ESCAPE", "KEY_"));
	NoKeysBoundTip = "No current bindings";
	ClearedBindings = "Suppression de tous les binding de %s";
	BoundKey = "Définir %s à %s";
	UnboundKey = "Unbound %s depuis %s";
	CannotBindInCombat = "Cannot bind keys in combat";
	CombatBindingsEnabled = "Sortie de combat, keybinding mode activé";
	CombatBindingsDisabled = "Entrée en combat, keybinding mode désactivé";
	BindingsHelp = "Hover over a button, then press a key to set its binding.  To clear a button's current keybinding, press %s.";

	-- This is the short display version you see on the Button
	["Alt"] = "A",
	["Ctrl"] = "C",
	["Shift"] = "S",
	["NumPad"] = "N",

	["Backspace"] = "BS",
	["Button1"] = "S1",
	["Button2"] = "S2",
	["Button3"] = "S3",
	["Button4"] = "S4",
	["Button5"] = "S5",
	["Capslock"] = "Cp",
	["Clear"] = "Cl",
	["Delete"] = "Del",
	["End"] = "En",
	["Home"] = "HM",
	["Insert"] = "Ins",
	["Mouse Wheel Down"] = "WD",
	["Mouse Wheel Up"] = "WU",
	["Num Lock"] = "NL",
	["Page Down"] = "PD",
	["Page Up"] = "PU",
	["Scroll Lock"] = "SL",
	["Spacebar"] = "Sp",
	["Tab"] = "Tb",

	["Down Arrow"] = "BA",
	["Left Arrow"] = "GA",
	["Right Arrow"] = "DA",
	["Up Arrow"] = "HA",
}