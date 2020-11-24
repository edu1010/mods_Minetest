minetest.register_node("rot:dirt", {
  description = "dirty dirt",
  tiles = {"oriStone.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})
minetest.register_node("rot:purgator", {
  description = "This node destroy the nearest nodes",
  tiles = {"oriStone.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})