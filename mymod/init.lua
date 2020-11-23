minetest.register_craftitem("mymod:stoneOri", {
  description = "stone with orichalcum",
  inventory_image = "oriStone.png"
})

minetest.register_node("mymod:nodeOri", {
  description = "orichalcum node",
  tiles = {"oriStone.png"},
  is_ground_content = true,
  groups = {cracky = 3},
  drop = "mymod:stoneOri"
})

minetest.register_craftitem("mymod:ingotOri", {
  description = "ori's ingot",
  inventory_image = "oriIngot.png"
})

minetest.register_craft({
  type = "cooking",
  output = "mymod:ingotOri",
  recipe = "mymod:stoneOri",
  cooktime = 4
})

-- set completo de herramientas:
minetest.register_tool("mymod:pickOri", {
  
})

minetest.register_craft({
  type = "shapeless", --? ns
  output = "mymod:pickOri",
  recipe = ""
})


