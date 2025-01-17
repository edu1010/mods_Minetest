-- Realizado por Eduard Corral López y Paula Ros Márquez.

minetest.register_node("rot:dirt", {
  description = "dirty dirt",
  tiles = {"dirt.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})
minetest.register_node("rot:purgator", {
  description = "This purgator restores the nearest nodes",
  tiles = {"purgator.png"},
  is_ground_content = true,
  groups = {cracky = 3},
})

-- Un ABM que ocurra muy de vez en cuando que convierta un nodo de tierra en tierra
--podrida (interval y chance altos).
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

--Un ABM que se encarge que los nodos de tierra junto a los nodos de tierra podrida se 
--conviertan tambien en tierra podrida (mirar propiedad neighbors).
minetest.register_abm({
 nodenames = {"default:dirt_with_grass"},
 neighbors = {"rot:dirt"},
 interval = 5.0,
 chance = 20,
 catch_up = false,
 action = function(pos, node, active_object_count, active_object_count_wider)
    local pos = {x = pos.x, y = pos.y, z = pos.z}
    minetest.set_node(pos, {name = "rot:dirt"})
 end
 })
--Un ABM que destruya la tierra podrida (para destruir un nodo basta con poder en su
--lugar un nodo air).
minetest.register_abm({
 nodenames = {"rot:dirt"},
 interval = 15,
 chance = 20,
 catch_up = false,
 action = function(pos, node, active_object_count, active_object_count_wider)
    local pos = {x = pos.x, y = pos.y, z = pos.z}
    minetest.set_node(pos, {name = "air"})--default:air no existe
 end
 })



--[[Cogiendo como referencia el codigo de ejemplo visto antes, cargaremos el content id de los
nodos default:dirt y rot:dirt, crearemos una función purge_rotdirt(pos, size) donde le
pasaremos una posición y en un cubo de tamaño size con centro pos convertiremos todos los
nodos de rot:dirt en default:dirt--]]

-- Get content IDs during load time, and store into a local
local c_dirt = minetest.get_content_id("default:dirt")
local c_RootDir = minetest.get_content_id("rot:dirt")
local function purge_rotdirt(pos, size)
  local pos1 = {x = pos.x -size, y = pos.y- size, z = pos.z-size}
  local pos2 = {x = pos.x+size, y = pos.y+size, z = pos.z+size}
  
  local vm = minetest.get_voxel_manip()
  local emin, emax = vm:read_from_map(pos1,pos2)
  local a = VoxelArea:new{ MinEdge = emin, MaxEdge = emax }
  local data = vm:get_data() 
  -- Modify data
  for z = pos1.z,pos2.z  do
    for y = pos1.y, pos2.y  do
      for x = pos1. x,pos2.x do
        local vi = a:index(x, y, z)
        if data[vi] == c_RootDir then
          data[vi] = c_dirt
        end
      end
    end
  end
  -- Write data
  vm:set_data(data)
  vm:write_to_map(true)

end
minetest.register_abm({
 nodenames = {"rot:purgator"},
 interval = 1.0,
 chance = 1,
 catch_up = false,
 action = function(pos)
   purge_rotdirt(pos,4)
 end
 
})