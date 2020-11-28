minetest.register_craftitem("ori:stoneOri", {
  description = "stone with orichalcum",
  inventory_image = "oriStone.png"
})

minetest.register_node("ori:nodeOri", {
  description = "orichalcum node",
  tiles = {"oriStone.png"},
  is_ground_content = true,
  groups = {cracky = 3},
  drop = "ori:stoneOri"
})
--add stone to wordl
minetest.register_ore({--Makes appear the node in the world https://dev.minetest.net/minetest.register_ore
  ore_type = "scatter",--Randomly chooses a location and generates a cluster of ore
  ore = "ori:nodeOri",
  wherein         = {"default:stone"},
  clust_scarcity  = 16 * 16 * 16,
  clust_num_ores = 8,
  clust_size     = 3,
  height_min     = -31000,
  height_max     = 64,
})

minetest.register_craftitem("ori:ingotOri", {
  description = "ori's ingot",
  inventory_image = "oriIngot.png"
})
-- ingot's craft
minetest.register_craft({
  type = "cooking",
  output = "ori:ingotOri",
  recipe = "ori:stoneOri",
  cooktime = 4
})
-- complete set of tools
-- sword
minetest.register_tool("ori:swordOri", {
    description = "ori's sword",
    inventory_image = "oriSword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_craft({
  output = "ori:swordOri",
  recipe = {
    {"","ori:ingotOri","",},
    {"","ori:ingotOri","",},
    {"","default:stick","",},
  }
})
-- pick
minetest.register_tool("ori:pickOri", {
  description = "ori's pick",
  inventory_image = "oriPick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
  output = "ori:pickOri",
  recipe = {
    {"ori:ingotOri","ori:ingotOri","ori:ingotOri",},
    {"","default:stick",""},
    {"","default:stick",""},
  }
})
-- axe
minetest.register_tool("ori:axeOri", {
  description = "ori's axe",
  inventory_image = "oriAxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_craft({
  output = "ori:axeOri",
  recipe = {
    {"ori:ingotOri","ori:ingotOri","",},
    {"ori:ingotOri","default:stick","",},
    {"","default:stick","",},
  }
})
-- shovel
minetest.register_tool("ori:shovelOri", {
  description = "ori's shovel",
  inventory_image = "oriShovel.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_craft({
  output = "ori:shovelOri",
  recipe = {
    {"","ori:ingotOri","",},
    {"","default:stick","",},
    {"","default:stick","",},
  }
})