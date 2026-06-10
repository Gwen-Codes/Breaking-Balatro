SMODS.Back {
    key = "methhead",
    atlas = 'dea_deck',
    pos = {
        x = 0,
        y = 0
    },
    apply = function ()
         G.E_MANAGER:add_event(Event({
            func = function()
                for i = #G.playing_cards, 1, -1 do 
                    local playing_card = G.playing_cards[i]
                    if playing_card:is_face() then
                    playing_card:set_ability('m_bonus')
                    playing_card:set_edition('e_foil', true, true)
                end
            
            end    return true
        end
        }))
end
}
