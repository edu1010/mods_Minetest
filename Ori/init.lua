minetest.register_node("ori:orichalcum", {
    description = "Alien orichalcum",
    tiles = {"ori.png"},
    is_ground_content = true,
    groups = {cracky=3}
	
})


-- craftitem lump
minetest.register_craftitem("ori:orichalcum_lump", {
description = "Orichalcum Lump",
inventory_image = "ori_myitem.png"
})
-- craftitem ingot
minetest.register_craftitem("ori:orichalcum_ingot", {
description = "Orichalcum Ingot",
inventory_image = "mymod_myitem.png"
})
-- craft de ingot
minetest.register_craft({
    type = "cooking",
    output = "ori:orichalcum_ingot",
    recipe = {
        {"ori:orichalcum_lump", "",  ""},
        {"ori:orichalcum_lump", "",  ""},
        {"ori:orichalcum_lump", "",  ""}
    }
    cooktime = 10
})

