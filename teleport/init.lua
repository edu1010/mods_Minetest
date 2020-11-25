--default_stone_brick.png

minetest.register_node("teleport:pad", {
  description = "This node is a teleport platform",
  tiles = {"default_stone_brick.png"},
  is_ground_content = true,
  groups = {cracky = 3},
  on_punch = function(pos, node, player, pointed_thing)
    local player = minetest.get_player_by_name("singleplayer")
    local inv = player:get_inventory()
    local stack = ItemStack("teleport:command 1")
    local leftover = inv:add_item("main", stack)
  end
  local meta = stack:get_meta()
  meta:set_int("x", pos.x)
  meta:set_int("y", pos.y)
  meta:set_int("z", pos.z)  
})
minetest.register_node("teleport:command", {
  description = "object to be teleported to the platform",
  tiles = {"default_stone_brick.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})

