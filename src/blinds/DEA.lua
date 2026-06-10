SMODS.Blind {
    key = 'DEA',
    dollars = 5,
    discovered = true,
    atlas = 'drugagency',
    pos = {
        x = 0,
        y = 0
    },
    order = 4,
    mult = 2,
    boss = { min =4 },
    boss_colour = HEX("0c85a1"),
    calculate = function (self, blind, context)
        if not blind.disabled then
            if context.debuff_card and context.debuff_card.area ~= G.joker then
                local enhancements = SMODS.get_enhancements(context.debuff_card)
                if enhancements and next(enhancements) then
                    return {
                        debuff = true
                    }
                end
            end
        end
        
    end
}