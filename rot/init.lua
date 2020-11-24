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