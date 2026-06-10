--#region Atlases

SMODS.Atlas {
    key = 'breakbad',
    path = 'breakingbalatross.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'drugagency',
    atlas_table = "ANIMATION_ATLAS",
    path = 'BBDEASS.png',
    px = 34,
    py = 32,
    frames = 21,
}
SMODS.Atlas {
    key = 'dea_deck',
    path = 'BBDeckSS.png',
    px = 72,
    py = 95
}
--#endregion

--#region File Loading

local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("src/jokers/" .. file))()
end

local decks_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/decks")
for _, file in ipairs(decks_src) do
    assert(SMODS.load_file("src/decks/" .. file))()
end

local blinds_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/blinds")
for _, file in ipairs(blinds_src) do
    assert(SMODS.load_file("src/blinds/" .. file))()
end
--#endregion