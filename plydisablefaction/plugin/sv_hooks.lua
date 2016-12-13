local PLUGIN = PLUGIN;

-- Called when a player's character screen info should be adjusted.
function PLUGIN:PlayerAdjustCharacterScreenInfo(player, character, info)
	if (PLUGIN.disabledFactions[character.faction] and !player:IsSuperAdmin()) then
		info.details = "This character's faction is temporarily disabled, try again later."; -- This probably won't work, not important though.
	end;
end;

-- Called when a player attempts to use a character.
function PLUGIN:PlayerCanUseCharacter(player, character)
	if (PLUGIN.disabledFactions[character.faction] and !player:IsSuperAdmin()) then
		return character.name .. "'s faction is temporarily disabled and cannot be used!";
	end;
end;
