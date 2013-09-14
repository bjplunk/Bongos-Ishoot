--[[
	Bongos' Localization File
		French Language
		
	ANSI Formatted
--]]

local L = LibStub("AceLocale-3.0"):NewLocale("Bongos3", "frFR")
if not L then return end

--system messages
L.NewPlayer = "Nouveau profil cr�� pour %s"
L.Updated = "MAJ � v%s"
L.UpdatedIncompatible = "Mise � jour depuis une version incompatible. Param�tres par d�faut charg�"

--profiles
L.ProfileCreated = "Nouveau profil cr�� \"%s\""
L.ProfileLoaded = "D�finir profil a \"%s\""
L.ProfileDeleted = "Supprimer profil \"%s\""
L.ProfileCopied = "Copi� les param�tres depuis \"%s\""
L.ProfileReset = "Remettre � z�ro le profil \"%s\""
L.CantDeleteCurrentProfile = "Le profil courant ne peut �tre supprim�"

--slash command help
L.ShowOptionsDesc = "Montrer le menu options"
L.LockBarsDesc = "Activ�/D�sactiv� le verrouillage de la position des barres"
L.StickyBarsDesc = "Activ�/D�sactiv� ancrage automatique des barres"

L.SetScaleDesc = "D�finit l'�chelle de <barList>"
L.SetAlphaDesc = "D�finit l'opacit� de <barList>"

L.ShowBarsDesc = "Affiche <barList>"
L.HideBarsDesc = "Cache <barList>"
L.ToggleBarsDesc = "Affiche/Cache <barList>"

--slash commands for profiles
L.SetDesc = "Chang� les param�tres <profile>"
L.SaveDesc = "Sauve les param�tres courants et change les param�tres vers <profile>"
L.CopyDesc = "Copier les param�tres depuis <profile>"
L.DeleteDesc = "Supprimer <profile>"
L.ResetDesc = "Revenir aux param�tres par d�faut"
L.ListDesc = "Lister tous les profiles"
L.AvailableProfiles = "Profiles disponibles"
L.PrintVersionDesc = "Afficher la version courante de Bongos"

--dragFrame tooltips
L.ShowConfig = "<Click Droit> pour configurer"
L.HideBar = "<Click Milieu or Shift Click Droit> pour cacher"
L.ShowBar = "<Click Milieu or Shift Click Droit> pour afficher"
L.SetAlpha = "<Molette> pour d�finir l'opacit� (|cffffffff%d|r)"

--Menu Stuff
L.Scale = "Echelle"
L.Opacity = "Opacit�"
L.FadedOpacity = "AutoFade Opacity"
L.Visibility = "Visibilit�"
L.Spacing = "Espacement"
L.Layout = "Disposition"

--minimap button stuff
L.ShowMenuTip = "<Click Droit> pour afficher le menu des options"
L.HideMenuTip = "<Click Droit> pour cacher le menu des options"
L.LockBarsTip = "<Click Gauche> pour verrouiller la position des barres"
L.UnlockBarsTip = "<Click Gauche> to d�verrouiller la position des barres"
L.LockButtonsTip = "<Shift Click Gauche> pour verrouiller la position des boutons"
L.UnlockButtonsTip = "<Shift Click Gauche> pour d�verrouiller la position des bouttons"