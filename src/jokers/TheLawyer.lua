SMODS.Joker {
    key = 'saul',
    atlas = 'breakbad',
    pos = {
        x = 1,
        y = 0
    },
    rarity = 3,
    cost = 8,
    config = { extra = { sell_value = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.sell_value } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            for _, area in ipairs({ G.jokers }) do
                for _, other_card in ipairs(area.cards) do
                    if other_card.set_cost then
                        other_card.ability.extra_value = (other_card.ability.extra_value or 0) +
                            card.ability.extra.sell_value
                        other_card:set_cost()
                    end
                end
            end
            return {
                message = "Defended!",
                colour = G.C.MONEY
            }
        end
    end
    }

