minetest.register_node("rot:dirt", {
  description = "dirty dirt",
  tiles = {"dirt.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})
minetest.register_node("rot:purgator", {
  description = "This node destroy the nearest nodes",
  tiles = {"dirt.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})


minetest.register_abm({
 nodenames = {"default:dirt_with_grass"},
 neighbors = {"default:dirt_with_grass"},-- to avoid the spawn of same rot_dirt next each other
 interval = 30.0,
 chance = 350,
 catch_up = false,
 action = function(pos, node, active_object_count, active_object_count_wider)
 local pos = {x = pos.x, y = pos.y, z = pos.z}
 minetest.set_node(pos, {name = "rot:dirt"})
 end
})