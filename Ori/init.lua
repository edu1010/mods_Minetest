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

-- craftitem lump
minetest.register_craftitem("mymod:orichalcum_lump", {
description = "Orichalcum Lump",
inventory_image = "mymod_myitem.png"
})
-- craftitem ingot
minetest.register_craftitem("mymod:orichalcum_ingot", {
description = "Orichalcum Ingot",
inventory_image = "mymod_myitem.png"
})
-- craft de ingot
minetest.register_craft({
    type = "cooking",
    output = "mymod:orichalcum_ingot",
    recipe = {
        {"mymod:orichalcum_lump", "",  ""},
        {"mymod:orichalcum_lump", "",  ""},
        {"mymod:orichalcum_lump", "",  ""}
    }
    cooktime = 10
})

