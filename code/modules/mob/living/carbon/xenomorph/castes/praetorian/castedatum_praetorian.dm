/datum/xeno_caste/praetorian
	caste_name = "Praetorian"
	display_name = "Praetorian"
	upgrade_name = ""
	caste_desc = "A giant ranged monster. It looks pretty strong."
	caste_type_path = /mob/living/carbon/xenomorph/praetorian
	tier = XENO_TIER_THREE
	upgrade = XENO_UPGRADE_BASETYPE
	wound_type = "praetorian" //used to match appropriate wound overlays

	// *** Melee Attacks *** //
	melee_damage = 23

	// *** Speed *** //
	speed = -0.5

	// *** Plasma *** //
	plasma_max = 1000
	plasma_gain = 80

	// *** Health *** //
	max_health = 360

	// *** Evolution *** //
	upgrade_threshold = TIER_THREE_THRESHOLD

	deevolves_to = /mob/living/carbon/xenomorph/spitter

	// *** Flags *** //
	can_flags = CASTE_CAN_BE_QUEEN_HEALED|CASTE_CAN_BE_GIVEN_PLASMA|CASTE_CAN_BE_LEADER
	caste_traits = null

	// *** Defense *** //
	soft_armor = list(MELEE = 45, BULLET = 50, LASER = 50, ENERGY = 50, BOMB = 10, BIO = 38, FIRE = 50, ACID = 38)

	// *** Ranged Attack *** //
	spit_delay = 1 SECONDS
	spit_types = list(/datum/ammo/xeno/toxin/heavy/upgrade3, /datum/ammo/xeno/acid/heavy)

	acid_spray_duration = 10 SECONDS
	acid_spray_range = 5
	acid_spray_damage = 16
	acid_spray_damage_on_hit = 47
	acid_spray_structure_damage = 69

	// *** Pheromones *** //
	aura_strength = 4.5 //Praetorian's aura starts strong. They are the Queen's right hand.

	// *** Minimap Icon *** //
	minimap_icon = "praetorian"

	// *** Abilities *** //
	actions = list(
		/datum/action/xeno_action/xeno_resting,
		/datum/action/xeno_action/watch_xeno,
		/datum/action/xeno_action/activable/psydrain,
		/datum/action/xeno_action/place_acidwell,
		/datum/action/xeno_action/activable/corrosive_acid,
		/datum/action/xeno_action/activable/xeno_spit,
		/datum/action/xeno_action/activable/spray_acid/cone,
		/datum/action/xeno_action/pheromones,
		/datum/action/xeno_action/pheromones/emit_recovery,
		/datum/action/xeno_action/pheromones/emit_warding,
		/datum/action/xeno_action/pheromones/emit_frenzy,
	)

/datum/xeno_caste/praetorian/normal
	upgrade = XENO_UPGRADE_ZERO

/datum/xeno_caste/praetorian/primordial
	upgrade_name = "Primordial"
	caste_desc = "An aberrant creature extremely proficient with acid, keep your distance if you don't wish to be burned."
	upgrade = XENO_UPGRADE_ONE
	primordial_message = "The strongest of acids flows through our veins, let's reduce them to dust."

// *** Ranged Attack *** //
	charge_type = CHARGE_TYPE_LARGE

	actions = list(
		/datum/action/xeno_action/xeno_resting,
		/datum/action/xeno_action/watch_xeno,
		/datum/action/xeno_action/activable/psydrain,
		/datum/action/xeno_action/place_acidwell,
		/datum/action/xeno_action/activable/corrosive_acid,
		/datum/action/xeno_action/activable/xeno_spit,
		/datum/action/xeno_action/activable/spray_acid/cone,
		/datum/action/xeno_action/activable/acid_dash,
		/datum/action/xeno_action/pheromones,
		/datum/action/xeno_action/pheromones/emit_recovery,
		/datum/action/xeno_action/pheromones/emit_warding,
		/datum/action/xeno_action/pheromones/emit_frenzy,
	)
