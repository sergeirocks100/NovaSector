//Emergency rations, and their contents

/* RATION FOODPACK */

/obj/item/storage/box/foodpack/ration
	name = "\improper emergency ration"
	desc = "A blue plastic sack containing an emergency ration, meant to keep the crew fed in the event a chef is absent or incapable of working.\
			Intended for distribution in times of disaster or war, its contents are nourishing, and intended to be edible to a wide variety of potential species."
	icon = 'modular_nova/modules/locker_rations/icons/rations.dmi'
	icon_state = "foodpack_ration_big"
	custom_materials = list(/datum/material/plastic =SHEET_MATERIAL_AMOUNT)
	main_course = /obj/effect/spawner/random/vendor_meal_mains/ration_one //First main
	var/main_course_2 = /obj/effect/spawner/random/vendor_meal_mains/ration_two //Second Main
	side_item = /obj/effect/spawner/random/vendor_meal_sides/ration_one //First Side
	var/side_item_2 = /obj/effect/spawner/random/vendor_meal_sides/ration_two //Second side
	condiment_pack = /obj/item/reagent_containers/condiment/pack/peanut_butter
	
/obj/item/storage/box/foodpack/ration/PopulateContents()
	. = ..()
	new main_course(src)
	new main_course_2(src)
	new side_item(src)
	new side_item_2(src)
	new /obj/item/food/vendor_tray_meal/side/ration/bag/cracker(src) // Gauranteed crackers, no matter what.
	new condiment_pack(src)

/obj/item/storage/box/foodpack/ration/examine_more(mob/user)
	. = ..()
	. += span_notice("<i>You can make out a faded logo of some sort on the side, that almost looks like...</i>")
	return .

/* MAINS */

/obj/item/food/vendor_tray_meal/ration
	name = "\improper Emergency Ration Main"
	desc = "This is the base type for emergency ration mains. If you somehow managed to get this in normal gameplay, please file a bug report."
	icon = 'modular_nova/modules/locker_rations/icons/rations.dmi'
	icon_state = "foodtray_ricenbeans"
	foodtypes = VEGETABLES

/obj/item/food/vendor_tray_meal/ration/examine_more(mob/user) // Hopefully, this wipes out the examine more.
	. = ..()
	return

/obj/item/food/vendor_tray_meal/ration/ricenbeans
	name = "\improper Emergency Ration Main: Beans and Yellow Rice"
	desc = "Red beans and green onion, mixed in with steaming yellow rice."
	icon_state = "foodtray_ricenbeans"
	tastes = list("rice" = 1, "beans" = 1, "onion" = 1)

/obj/item/food/vendor_tray_meal/ration/peasnsauce
	name = "\improper Emergency Ration Main: Peas and Carrots in Sauce"
	desc = "Steamed carrots and peas, swimming in a savory tomato sauce."
	icon_state = "foodtray_peasnsauce"
	tastes = list("peas" = 1, "carrots" = 1, "tomatoes" = 1)
	
/obj/item/food/vendor_tray_meal/ration/pasta
	name = "\improper Emergency Ration Main: Gnocchi and Tomatoes in Sauce"
	desc = "Soft, gluten free potato gnocchi and tomato chunks, in marinara sauce."
	icon_state = "foodtray_pasta"
	tastes = list("potato pasta" = 1, "sauce" = 1, "tomatoes" = 1)

/obj/item/food/vendor_tray_meal/ration/bncstew
	name = "\improper Emergency Ration Main: Bean and Corn Stew"
	desc = "Pinto beans, green beans, and corn, simmering in a thick, vegetable-based stew."
	icon_state = "foodtray_bncstew"
	tastes = list("beans" = 1, "corn" = 1, "green beans" = 1)
	
/obj/item/food/vendor_tray_meal/ration/wildrice
	name = "\improper Emergency Ration Main: Wild Rice and Vegetables"
	desc = "Fluffy wild rice, with carrots and peas mixed in."
	icon_state = "foodtray_wildrice"
	tastes = list("rice" = 1, "carrots" = 1, "peas" = 1)
	
/obj/item/food/vendor_tray_meal/ration/splitpea
	name = "\improper Emergency Ration Main: Split Pea Stew"
	desc = "Thick, savory split pea stew, filled with pinto beans and sliced mushrooms."
	icon_state = "foodtray_splitpea"
	tastes = list("beans" = 1, "mushrooms" = 1, "peas" = 1)
	
/* SIDES */

/obj/item/food/vendor_tray_meal/side/ration
	name = "\improper Emergency Ration Side"
	desc = "This is the base type for emergency ration sides. If you somehow managed to get this in normal gameplay, please file a bug report."
	trash_type = /obj/item/trash/empty_side_pack/ration
	
/obj/item/food/vendor_tray_meal/side/ration/bag
	trash_type = /obj/item/trash/empty_side_pack/ration/bag
	
/obj/item/food/vendor_tray_meal/side/ration/bag/cracker
	name = "\improper Emergency Ration Side: Cracker"
	desc = "A crisp, rice flour cracker. Would go great with some peanut butter"
	icon_state = "bag_ration_cracker"
	tastes = list("cracker" = 1)
	foodtypes = VEGETABLES
	
/obj/item/food/vendor_tray_meal/side/ration/bag/cookie
	name = "\improper Emergency Ration Side: Sweet Potato Cookie"
	desc = "A crumbly, sweet potato-based cookie."
	icon_state = "bag_ration_cookie"
	tastes = list("sweet potato" = 1, "sugar" = 1)
	foodtypes = VEGETABLES | SUGAR
	
/obj/item/food/vendor_tray_meal/side/ration/bag/bstart
	name = "\improper Emergency Ration Side: Brown Sugar Toaster Pastry"
	desc = "A gluten-free, rice flour-based toaster pastry. This one's brown sugar flavored."
	icon_state = "bag_ration_bstart"
	tastes = list("brown sugar" = 1, "pastry" = 1)
	foodtypes = VEGETABLES | SUGAR
	
/obj/item/food/vendor_tray_meal/side/ration/shortbread
	name = "\improper Emergency Ration Side: Shortbread Bar"
	desc = "A rice flour shortbread cookie."
	icon_state = "foodpack_ration_shortbread"
	tastes = list("pastry" = 1)
	foodtypes = VEGETABLES | SUGAR
	
/obj/item/food/vendor_tray_meal/side/ration/figbar
	name = "\improper Emergency Ration Side: Fig Bar"
	desc = "A classic, gluten-free fig bar."
	icon_state = "bag_ration_bstart"
	tastes = list("pastry" = 1, "sweet fig" = 1)
	foodtypes = VEGETABLES | FRUIT | SUGAR
	
/obj/item/food/vendor_tray_meal/side/ration/bag/sbtart
	name = "\improper Emergency Ration Side: Strawberry Toaster Pastry"
	desc = "A gluten-free, rice flour-based toaster pastry. This one's strawberry flavored."
	icon_state = "bag_ration_sbtart"
	tastes = list("sweet strawberry" = 1, "pastry" = 1)
	foodtypes = VEGETABLES | FRUIT | SUGAR
	
/obj/item/food/vendor_tray_meal/side/ration/bag/cornnuts
	name = "\improper Emergency Ration Side: Corn Nut and Raisin Mix"
	desc = "Crunchy corn nuts, mixed with raisins."
	icon_state = "bag_ration_cornnuts"
	tastes = list("roasted corn" = 1, "raisins" = 1)
	foodtypes = VEGETABLES | FRUIT

/obj/item/reagent_containers/condiment/pack/peanut_butter
	name = "peanut butter pack"
	originalname = "peanut butter"
	volume = 10
	list_reagents = list(/datum/reagent/consumable/peanut_butter = 10)

/* MISC */

// Using two different main and side spawners, to ensure that you don't get the same main/side twice in a ration.

/obj/effect/spawner/random/vendor_meal_mains/ration_one
	name = "random ration first main spawner"
	icon_state = "loot"

/obj/effect/spawner/random/vendor_meal_mains/ration_one/Initialize(mapload)
	loot = list(
		/obj/item/food/vendor_tray_meal/ration/ricenbeans,
		/obj/item/food/vendor_tray_meal/ration/peasnsauce,
		/obj/item/food/vendor_tray_meal/ration/pasta,
	)
	. = ..()
	
/obj/effect/spawner/random/vendor_meal_mains/ration_two
	name = "random ration second main spawner"
	icon_state = "loot"

/obj/effect/spawner/random/vendor_meal_mains/ration_one/Initialize(mapload)
	loot = list(
		/obj/item/food/vendor_tray_meal/ration/bncstew,
		/obj/item/food/vendor_tray_meal/ration/wildrice,
		/obj/item/food/vendor_tray_meal/ration/splitpea,
	)
	. = ..()
	
/obj/effect/spawner/random/vendor_meal_sides/ration_one
	name = "random ration first side spawner"
	icon_state = "loot"

/obj/effect/spawner/random/vendor_meal_sides/ration_one/Initialize(mapload)
	loot = list(
		/obj/item/food/vendor_tray_meal/side/ration/bag/cookie,
		/obj/item/food/vendor_tray_meal/side/ration/bag/bstart,
		/obj/item/food/vendor_tray_meal/side/ration/shortbread,
	)
	. = ..()
	
/obj/effect/spawner/random/vendor_meal_sides/ration_two
	name = "random ration second side spawner"
	icon_state = "loot"

/obj/effect/spawner/random/vendor_meal_sides/ration_one/Initialize(mapload)
	loot = list(
		/obj/item/food/vendor_tray_meal/side/ration/figbar,
		/obj/item/food/vendor_tray_meal/side/ration/bag/sbtart,
		/obj/item/food/vendor_tray_meal/side/ration/bag/cornnuts,
	)
	. = ..()
	
/obj/item/trash/empty_side_pack/ration
	icon_state = "foodpack_ration_trash"
	
/obj/item/trash/empty_side_pack/ration/bag
	name = "empty side bag"
	icon_state = "bag_ration_trash"
