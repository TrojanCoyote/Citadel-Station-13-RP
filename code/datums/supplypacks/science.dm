/*
*	Here is where any supply packs
*	related to science tasks live
*/
/datum/supply_pack/sci
	group = "Science"

/datum/supply_pack/sci/virus
	name = "Virus sample crate"
	contains = list(/obj/item/virusdish/random = 4)
	cost = 25
	containertype = "/obj/structure/closet/crate/secure"
	containername = "Virus sample crate"
	access = access_cmo

/datum/supply_pack/sci/coolanttank
	name = "Coolant tank crate"
	contains = list(/obj/structure/reagent_dispensers/coolanttank)
	cost = 15
	containertype = /obj/structure/largecrate
	containername = "coolant tank crate"

/datum/supply_pack/sci/phoron
	name = "Phoron research crate"
	contains = list(
			/obj/item/tank/phoron = 3,
			/obj/item/tank/oxygen = 3,
			/obj/item/assembly/igniter = 3,
			/obj/item/assembly/prox_sensor = 3,
			/obj/item/assembly/timer = 3,
			/obj/item/assembly/signaler = 3,
			/obj/item/transfer_valve = 3
			)
	cost = 10
	containertype = /obj/structure/closet/crate/secure/phoron
	containername = "Phoron assembly crate"
	access = access_tox_storage

/datum/supply_pack/sci/exoticseeds
	name = "Exotic seeds crate"
	contains = list(
			/obj/item/seeds/replicapod = 2,
			/obj/item/seeds/ambrosiavulgarisseed = 2,
			/obj/item/seeds/libertymycelium,
			/obj/item/seeds/reishimycelium,
			/obj/item/seeds/random = 6,
			/obj/item/seeds/kudzuseed
			)
	cost = 15
	containertype = /obj/structure/closet/crate/hydroponics
	containername = "Exotic Seeds crate"
	access = access_hydroponics

/datum/supply_pack/sci/integrated_circuit_printer
	name = "Integrated circuit printer"
	contains = list(/obj/item/integrated_circuit_printer = 2)
	cost = 15
	containertype = /obj/structure/closet/crate
	containername = "Integrated circuit crate"

/datum/supply_pack/sci/integrated_circuit_printer_upgrade
	name = "Integrated circuit printer upgrade - advanced designs"
	contains = list(/obj/item/disk/integrated_circuit/upgrade/advanced)
	cost = 30
	containertype = /obj/structure/closet/crate
	containername = "Integrated circuit crate"

/datum/supply_pack/sci/xenoarch
	name = "Xenoarchaeology Tech crate"
	contains = list(
				/obj/item/pickaxe/excavationdrill,
				/obj/item/xenoarch_multi_tool,
				/obj/item/clothing/suit/space/anomaly,
				/obj/item/clothing/head/helmet/space/anomaly,
				/obj/item/storage/belt/archaeology,
				/obj/item/flashlight/lantern,
				/obj/item/core_sampler,
				/obj/item/gps,
				/obj/item/beacon_locator,
				/obj/item/radio/beacon,
				/obj/item/clothing/glasses/meson,
				/obj/item/pickaxe,
				/obj/item/storage/bag/fossils,
				/obj/item/hand_labeler)
	cost = 100
	containertype = /obj/structure/closet/crate/secure/science
	containername = "Xenoarchaeology Tech crate"
	access = access_research

/datum/supply_pack/sci/jukebox_circuitboard
	name = "Jukebox Circuit Board crate"
	contains = list(/obj/item/circuitboard/jukebox = 2)
	cost = 25
	containertype = /obj/structure/closet/crate
	containername = "Jukebox Circuit Board crate"
