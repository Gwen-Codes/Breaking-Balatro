SMODS.Joker {
    key = 'kingpin',
    atlas = 'breakbad',
    blueprint_compat = false,
    eternal_compat = false,
    pos = {
        x = 4,
        y = 0
    },
    config = { 
        extra = {odds = 10, dollars = 15 } 
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'meth_kingpin')
        return { vars = { card.ability.extra.dollars, numerator, denominator } }
    end,
    calc_dollar_bonus = function (self, card)
        return card.ability.extra.dollars
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'meth_kingpin', 1, card.ability.extra.odds) then
                SMODS.destroy_cards(card, nil, nil, true)
                G.GAME.pool_flags.meth_kingpin_extinct = true
                return {
                    message = localize('k_melted_ex')
                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
    end,
    in_pool = function(self, args)
        return G.GAME.pool_flags.meth_chickenman_extinct
    end
    }