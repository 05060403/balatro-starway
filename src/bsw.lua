sendDebugMessage("Launching Balatro Starway!")


------DECK SKIN SETUP------
local atlas_key = 'BSW'
local atlas_path = 'BSW_lc.png'
local atlas_path_hc = 'BSW_hc.png'
local suits = {'hearts', 'clubs', 'diamonds', 'spades'}
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",}
local description = 'Starway!'

------ATLASES------

--Atlas and adding deck skin

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false}, 
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end

AltTexture({
	key = 'starway',
	set = 'Joker',
	path = 'Jokers.png',
	original_sheet = true,
	keys = {
		'j_odd_todd',
		'j_even_steven',
		'j_green_joker',
		'j_banner',
		'j_baron',
		'j_cavendish',
		'j_egg',
		'j_gros_michel',
		'j_hanging_chad',
		'j_hiker',
		'j_hit_the_road',
		'j_photograph',
		'j_raised_fist',
		'j_runner',
		'j_scary_face',
		'j_shoot_the_moon',
		'j_smeared',
		'j_smiley',
		'j_sock_and_buskin',
		'j_space',
		'j_trading',
		'j_turtle_bean',
		'j_vagabond',
		'j_vampire',
		'j_hologram',
	},
	localization = {
		'j_odd_todd',
		'j_even_steven',
		'j_green_joker',
		'j_banner',
		'j_baron',
		'j_cavendish',
		'j_egg',
		'j_gros_michel',
		'j_hanging_chad',
		'j_hiker',
		'j_hit_the_road',
		'j_photograph',
		'j_raised_fist',
		'j_runner',
		'j_scary_face',
		'j_shoot_the_moon',
		'j_smeared',
		'j_smiley',
		'j_sock_and_buskin',
		'j_space',
		'j_trading',
		'j_turtle_bean',
		'j_vagabond',
		'j_vampire',
		'j_hologram',
	},
})

AltTexture({
	key = 'starway_legendary',
	set = 'Joker',
	path = 'Jokers.png',
	original_sheet = true,
	keys = {
		'j_triboulet',
	},
	localization = {
		'j_triboulet',
	},
})
	

TexturePack({
	key = 'BSW',
	textures = {
		'BSW_starway',
		'BSW_starway_legendary',
	}
})