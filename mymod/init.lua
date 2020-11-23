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




minetest.register_tool("default:swordOri", {
    description = "Steel ori",
    inventory_image = "default_tool_steelsword.png",
    tool_capabilities = {
        -- Digging capabilities
        max_drop_level = 1,
        groupcaps = {
            fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
            snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
            choppy={times={[3]=0.65}, uses=40, maxlevel=0}
        },
        -- Damage capabilities
        full_punch_interval = 0.8,
        damage_groups = {fleshy=8, snappy=4, choppy=2},
    }
})

minetest.register_craft({
      output = "mymod:swordOri 1"
      recipe = {
        {"mymod:ingotOri","mymod:ingotOri",},
        {"mymod:ingotOri","mymod:ingotOri",},
      }
})
--[[
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
--]]


