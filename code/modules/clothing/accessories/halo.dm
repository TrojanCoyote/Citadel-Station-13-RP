/obj/item/clothing/accessory/halo_projector
	name = "halo projector"
	desc = "A small grey device that projects a holographic image."
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "projector"
	worn_render_flags = WORN_RENDER_SLOT_ONE_FOR_ALL

/obj/item/clothing/accessory/halo_projector/attack_self(mob/user)
	. = ..()
	if(.)
		return
	reskin_halo_projector(user)

/obj/item/clothing/accessory/halo_projector/ui_interact(mob/user, datum/tgui/ui, datum/tgui/parent_ui)
	. = ..()


/obj/item/clothing/accessory/halo_projector/proc/reskin_halo_projector(mob/living/L)
	var/obj/item/halo_projector
	var/list/halo_projector_list = subtypesof(/obj/item/clothing/accessory/halo_projector)
	var/list/display_names = list()
	var/list/halo_projector_icons = list()
	for(var/V in halo_projector_list)
		var/obj/item/clothing/accessory/halo_projector/halotype = V
		if (V)
			display_names[initial(halotype.name)] = halotype
			halo_projector_icons += list(initial(halotype.name) = image(icon = initial(halotype.icon), icon_state = initial(halotype.icon_state)))

	halo_projector_icons = sortList(halo_projector_icons)

	var/choice = show_radial_menu(L, src , halo_projector_icons, custom_check = CALLBACK(src, .proc/check_menu, L), radius = 42, require_near = TRUE)
	if(!choice || !check_menu(L))
		return

	var/A = display_names[choice] // This needs to be on a separate var as list member access is not allowed for new
	halo_projector = new A

	if(halo_projector)
		qdel(src)
		L.put_in_active_hand(halo_projector)

/obj/item/clothing/accessory/halo_projector/proc/check_menu(mob/user)
	if(!istype(user))
		return FALSE
	if(QDELETED(src))
		return FALSE
	if(user.incapacitated())
		return FALSE
	return TRUE

/obj/item/clothing/accessory/halo_projector/gabriel
	name = "messenger's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "gabriel"

/obj/item/clothing/accessory/halo_projector/threespike
	name = "triple starred halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "threespike"

/obj/item/clothing/accessory/halo_projector/brokenspike
	name = "prophet's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "brokenspike"

/obj/item/clothing/accessory/halo_projector/arrows
	name = "wayfinder's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "arrows"

/obj/item/clothing/accessory/halo_projector/circles
	name = "orbiting halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "circles"

/obj/item/clothing/accessory/halo_projector/thorns
	name = "judge's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "thorns"

/obj/item/clothing/accessory/halo_projector/cross
	name = "faithful halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "cross"

/obj/item/clothing/accessory/halo_projector/plus
	name = "unfaithful halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "crossalt"

/obj/item/clothing/accessory/halo_projector/moon
	name = "lunar halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "moon"

/obj/item/clothing/accessory/halo_projector/crown
	name = "lauded halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "crown"

/obj/item/clothing/accessory/halo_projector/shiroinv
	name = "focused halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "shiroinv"

/obj/item/clothing/accessory/halo_projector/shiroko
	name = "headstrong halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "shiroko"

/obj/item/clothing/accessory/halo_projector/wings
	name = "elevated's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "wings"

/obj/item/clothing/accessory/halo_projector/star
	name = "bright halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "star"

/obj/item/clothing/accessory/halo_projector/squares
	name = "logistician's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "squares"

/obj/item/clothing/accessory/halo_projector/spikes
	name = "intrepid halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "spikes"

/obj/item/clothing/accessory/halo_projector/reticle
	name = "marksman's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "reticle"

/obj/item/clothing/accessory/halo_projector/polygon
	name = "pragmatic's halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "polygon"

/obj/item/clothing/accessory/halo_projector/offset
	name = "mercurial halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "offset"

/obj/item/clothing/accessory/halo_projector/nanotrasen
	name = "corpo halo"
	icon = 'icons/clothing/accessories/halos/projector.dmi'
	icon_state = "nanotrasen"
