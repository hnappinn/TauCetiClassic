/obj/machinery/door/unpowered
	autoclose = 0
	var/locked = 0


/obj/machinery/door/unpowered/Bumped(atom/AM)
	if(locked)
		return
	..()
	return


/obj/machinery/door/unpowered/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/weapon/melee/energy/blade))
		return
	if(locked)
		return
	..()
	return

/obj/machinery/door/unpowered/emag_act(mob/user)
	return FALSE


/obj/machinery/door/unpowered/shuttle
	icon = 'icons/turf/shuttle.dmi'
	name = "door"
	icon_state = "door1"
	opacity = 1
	density = 1
