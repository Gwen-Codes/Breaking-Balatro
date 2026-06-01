SMODS.Joker {
    key = 'pinkman',
    atlas = 'breakbad',
    pos = {
        x = 3,
        y = 0
    },
    config = { 
        extra = { xmult = 3 } 
    },
    rarity = 2,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult
            }
        }
    end,
    calculate = function(self, card, context)
         if context.final_scoring_step and SMODS.calculate_round_score() > 300 then
    return { xmult = 3 }
    end
end
}
