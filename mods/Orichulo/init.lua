minetest.register_node("mymod:orichalcum", {
    description = "Alien orichalcum",
    tiles = {"mymod_diamond.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("mymod:orichalcum", {
    description = "Alien orichalcum",
    tiles = {
        "mymod_diamond_up.png",    -- y+
        "mymod_diamond_down.png",  -- y-
        "mymod_diamond_right.png", -- x+
        "mymod_diamond_left.png",  -- x-
        "mymod_diamond_back.png",  -- z+
        "mymod_diamond_front.png", -- z-
    },
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "mymod:diamond_fragments"
    -- ^  Rather than dropping orichalcum, drop mymod:diamond_fragments
})