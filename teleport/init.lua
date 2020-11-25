--default_stone_brick.png
n nodo teleport:pad
y un item teleport:command

minetest.register_node("teleport:pad", {
  description = "This node destroy the nearest nodes",
  tiles = {"default_stone_brick.png"},
  is_ground_content = true,
  groups = {cracky = 3},
  on_punch = function(pos, node, player, pointed_thing)
    local player = minetest.get_player_by_name("singleplayer")
    local inv = player:get_inventory()
    local stack = ItemStack("teleport:command 1")
    local leftover = inv:add_item("main", stack)
  end
})
minetest.register_node("teleport:command", {
  description = "This node destroy the nearest nodes",
  tiles = {"default_stone_brick.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})

