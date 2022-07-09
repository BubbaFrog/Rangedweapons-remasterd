

minetest.register_tool("rangedweapons:mlgrifle_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:mlgrifle_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_mlgrifle_rld.png",
})

minetest.register_tool("rangedweapons:mlgrifle_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:mlgrifle_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_mlgrifle.png",
})

minetest.register_tool("rangedweapons:mlgrifle_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:mlgrifle",
	load_sound = "rangedweapons_yeet",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_mlgrifle.png",
})


	minetest.register_tool("rangedweapons:mlgrifle", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","MLG RIFLE\n") ..core.colorize("#FFFFFF", "Gun damage: 7\n") ..core.colorize("#FFFFFF", "accuracy: 77%\n") ..core.colorize("#FFFFFF", "Gun knockback: 5\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 12%\n")..core.colorize("#FFFFFF", "Critical efficiency: 2.9x\n")  ..core.colorize("#FFFFFF", "Reload delay: 1.4\n") ..core.colorize("#FFFFFF", "Clip size: 30\n")   ..core.colorize("#FFFFFF", "Ammunition: 7.62mm rounds\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.10(full-auto)\n") ..core.colorize("#FFFFFF", "Gun type: magic gun\n") ..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "Enemy penetration: 15%\n") ..core.colorize("#FFFFFF", "Bullet velocity: 40"),
	range = 0,
	inventory_image = "rangedweapons_mlgrifle.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=7,knockback=5},
		gun_crit = 12,
		gun_critEffc = 2.9,
		suitable_ammo = {{"rangedweapons:762mm",30}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "rangedweapons_mlgrifle_icon.png",
		gun_unloaded = "rangedweapons:mlgrifle_r",
		gun_velocity = 40,
		gun_accuracy = 77,
		gun_cooldown = 0.1,
		gun_reload = 1.4/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1200,
		gun_smokeSize = 5,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_mlg",
		gun_sound = "rangedweapons_dn",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "rangedweapons_mlgrifle.png",
})

