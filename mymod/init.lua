minetest.register_craftitem("mymod:stoneOri", {
    description = "stone with orichalcum",
    inventory_image = "oriStone.png"
})


minetest.register_craft({
    type = "cooking",
    output = "mymod:stoneOri_fragments",
    recipe = "default:coalblock",
    cooktime = 10,
})