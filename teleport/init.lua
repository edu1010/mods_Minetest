--default_stone_brick.png

minetest.register_node("teleport:pad", {
  description = "this node is a teleport platform",
  tiles = {
    "portalsuperior.png",    -- y+
    "portalLateral.png",  -- y-
    "portalLateral.png", -- x+
    "portalLateral.png",  -- x-
    "portalLateral.png",  -- z+
    "portalLateral.png", -- z-
  },
  is_ground_content = true,
  groups = {cracky = 3},
  after_place_node = function(pos, node, player, pointed_thing)
    local player = minetest.get_player_by_name("singleplayer")
    local inv = player:get_inventory()
    local stack = ItemStack("teleport:command")
    local leftover = inv:add_item("main", stack)
    
    local meta = player:get_meta()
    meta:set_int("x", pos.x)
    meta:set_int("y", pos.y+1)
    meta:set_int("z", pos.z)
  end,

})
minetest.register_craftitem("teleport:command", {
  description = "command to be teleported to the pad",
  inventory_image = "mando.png",
  
  on_use = function(pos, node, player, pointed_thing)
    local player = minetest.get_player_by_name("singleplayer")
    local meta = player:get_meta()
    local pos = {x=meta:get_int("x"), y=meta:get_int("y"), z=meta:get_int("z")}
    player:set_pos(pos)
  end,
})

