/mob/living/simple_animal/hostile/pirate
	name = "Pirate"
	desc = "Does what he wants cause a pirate is free."
	icon_state = "piratemelee"
	icon_living = "piratemelee"
	icon_dead = "piratemelee_dead"
	speak_chance = 0
	turns_per_move = 5
	response_help = "pushes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	stop_automated_movement_when_pulled = 0
	maxHealth = 100
	health = 100
	can_escape = TRUE
	
	natural_weapon = /obj/item/energy_blade/sword/pirate/activated
	unsuitable_atmos_damage = 15
	var/corpse = /obj/effect/landmark/corpse/pirate
	var/weapon1 = /obj/item/energy_blade/sword/pirate

	faction = "pirate"

/mob/living/simple_animal/hostile/pirate/ranged
	name = "Pirate Gunner"
	icon_state = "pirateranged"
	icon_living = "pirateranged"
	icon_dead = "piratemelee_dead"
	projectilesound = 'sound/weapons/laser.ogg'
	ranged = 1
	rapid = 1
	projectiletype = /obj/item/projectile/beam
	corpse = /obj/effect/landmark/corpse/pirate/ranged
	weapon1 = /obj/item/gun/energy/laser


/mob/living/simple_animal/hostile/pirate/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	if(corpse)
		new corpse (src.loc)
	if(weapon1)
		new weapon1 (src.loc)
	qdel(src)
	return