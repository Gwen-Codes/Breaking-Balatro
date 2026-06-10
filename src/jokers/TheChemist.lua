SMODS.Joker {
    key = 'chemist',
    atlas = 'breakbad',
    pos = {
        x = 0,
        y = 1
    },
    config = { 
        extra = { chips = 0, chip_mod = 5 } 
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips
            }
        }
    end,
    calculate = function(self, card, context)
         if context.selling_card and not context.blueprint then
             card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
            }
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}
