local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("PlyDisableFaction");
COMMAND.tip = "Temporarily disable a faction so player's can't load characters on it.";
COMMAND.text = "<string Faction Name> <boolean Disabled>";
COMMAND.access = "s";
COMMAND.arguments = 2;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
    local faction = arguments[1];
    local disabled = arguments[2];

    PLUGIN.disabledFactions[faction] = tobool(disabled);

    Clockwork.player:Notify(player, "The " .. faction .. " faction had its disabled value set to: " .. tostring(PLUGIN.disabledFactions[faction]));
end;

COMMAND:Register();
