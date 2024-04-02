--- STEAMODDED HEADER
--- MOD_NAME: Hilly Mod
--- MOD_ID: HillyMod
--- MOD_AUTHOR: [jeroen-meijer]
--- MOD_DESCRIPTION: Mods for fun for hilly or some shit
----------------------------------------------
------------MOD CODE -------------------------
function SMODS.INIT.HillyMod()
    -- Set up sprites
    local mod = SMODS.findModByID("HillyMod")
    local sprite_card = SMODS.Sprite:new("cards_1", mod.path, "HillyCards.png", 71, 95, "asset_atli")

    sprite_card:register()

    -- Set up localizations
    local language_key = "en-us"
    local lang_path = mod.path .. "l10n.lua"

    local function apply_localization_patch()
        G.localization = assert(loadstring(love.filesystem.read(lang_path)))()
        init_localization()
    end

    if G.LANG.key == language_key then
        apply_localization_patch()
    end

    G.set_language_ref = G.set_language
    function G:set_language()
        self:set_language_ref()

        if self.LANG.key == language_key then
            apply_localization_patch()
        end

        -- G.LANGUAGES['hilly'] = {
        --     font = 1,
        --     label = "Hilly",
        --     key = 'hilly',
        --     button = "Language Feedback",
        --     warning = {'This language is a shitpost.', 'Do not use it.', 'Click again to confirm'}
        -- }
    end

    -- FIXME: Doesn't work yet

    -- local function apply_suit_colors_patch(self)
    --     self.C.SO_1 = {
    --         Hearts = HEX('AB0003'),
    --         Clubs = HEX("F44D11"),
    --         Diamonds = HEX('85006E'),
    --         Spades = HEX("145399")
    --     }
    -- end

    -- apply_suit_colors_patch(G)

    -- G.set_globals_ref = G.set_globals
    -- function G:set_globals()
    --     self:set_globals_ref()
    --     apply_suit_colors_patch(self)
    -- end
end

----------------------------------------------
------------MOD CODE END----------------------
