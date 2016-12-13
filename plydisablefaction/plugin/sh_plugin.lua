local PLUGIN = PLUGIN;

local factions = Clockwork.faction:GetAll();
PLUGIN.disabledFactions = {};

for k, v in pairs (factions) do
    PLUGIN.disabledFactions[v.name] = false; -- Do NOT change this, unless you want all factions disabled.
end;

Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
