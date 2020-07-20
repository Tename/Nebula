/obj/item/tank/nitrogen
	name = "nitrogen tank"
	desc = "A tank of oxygen."
	icon_state = "oxygen"
	distribute_pressure = ONE_ATMOSPHERE*O2STANDARD
	starting_pressure = list(/decl/material/gas/nitrogen = 6*ONE_ATMOSPHERE)
	volume = 180

/obj/item/tank/emergency/nitrogen
	name = "emergency nitrogen tank"
	desc = "Used for emergencies. Contains very little oxygen, so try to conserve it until you actually need it."
	icon_state = "emergency"
	gauge_icon = "indicator_emergency"
	starting_pressure = list(/decl/material/gas/nitrogen = 10*ONE_ATMOSPHERE)

/obj/item/tank/emergency/nitrogen/double
	name = "double emergency nitrogen tank"
	icon_state = "emergency_double"
	gauge_icon = "indicator_emergency_double"
	volume = 90
	w_class = ITEM_SIZE_NORMAL
