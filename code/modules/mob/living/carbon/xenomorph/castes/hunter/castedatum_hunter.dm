/datum/xeno_caste/hunter
	caste_name = "Hunter"
	display_name = "Hunter"
	upgrade_name = ""
	caste_desc = "A fast, powerful front line combatant."

	caste_type_path = /mob/living/carbon/xenomorph/hunter

	tier = XENO_TIER_TWO
	upgrade = XENO_UPGRADE_BASETYPE
	wound_type = "hunter" //used to match appropriate wound overlays
	gib_anim = "Hunter Gibs"
	gib_flick = "Hunter Gibbed"

	// *** Melee Attacks *** //
	melee_damage = 24
	attack_delay = 7

	// *** Speed *** //
	speed = -1.4
	weeds_speed_mod = -0.1

	// *** Plasma *** //
	plasma_max = 200
	plasma_gain = 18

	// *** Health *** //
	max_health = 290

	// *** Evolution *** //
	evolution_threshold = 225
	upgrade_threshold = TIER_TWO_THRESHOLD

	evolves_to = list(/mob/living/carbon/xenomorph/ravager, /mob/living/carbon/xenomorph/widow)
	deevolves_to = /mob/living/carbon/xenomorph/runner

	// *** Flags *** //
	caste_flags = CASTE_EVOLUTION_ALLOWED
	can_flags = CASTE_CAN_BE_QUEEN_HEALED|CASTE_CAN_BE_GIVEN_PLASMA|CASTE_CAN_BE_LEADER
	caste_traits = list(TRAIT_CAN_VENTCRAWL)

	// *** Defense *** //
	soft_armor = list(MELEE = 55, BULLET = 30, LASER = 30, ENERGY = 30, BOMB = 0, BIO = 18, FIRE = 30, ACID = 18)

	// *** Ranged Attack *** //
	charge_type = CHARGE_TYPE_MEDIUM
	pounce_delay = 10.0 SECONDS

	// *** Stealth ***
	stealth_break_threshold = 15

	// *** Minimap Icon *** //
	minimap_icon = "hunter"

	// *** Abilities *** //
	actions = list(
		/datum/action/xeno_action/xeno_resting,
		/datum/action/xeno_action/watch_xeno,
		/datum/action/xeno_action/activable/psydrain,
		/datum/action/xeno_action/activable/pounce/hunter,
		/datum/action/xeno_action/stealth,
		/datum/action/xeno_action/activable/hunter_mark,
		/datum/action/xeno_action/psychic_trace,
		/datum/action/xeno_action/mirage,
	)

	// *** Vent Crawl Parameters *** //
	vent_enter_speed = HUNTER_VENT_CRAWL_TIME
	vent_exit_speed = HUNTER_VENT_CRAWL_TIME
	silent_vent_crawl = TRUE

/datum/xeno_caste/hunter/normal
	upgrade = XENO_UPGRADE_NORMAL

/datum/xeno_caste/hunter/primordial
	upgrade_name = "Primordial"
	upgrade = XENO_UPGRADE_PRIMO
	caste_desc = "A silent but deadly killing machine. It looks frighteningly powerful."
	primordial_message = "We are the ultimate predator. Let the hunt begin."

	actions = list(
		/datum/action/xeno_action/xeno_resting,
		/datum/action/xeno_action/watch_xeno,
		/datum/action/xeno_action/activable/psydrain,
		/datum/action/xeno_action/activable/pounce/hunter,
		/datum/action/xeno_action/stealth,
		/datum/action/xeno_action/stealth/disguise,
		/datum/action/xeno_action/activable/hunter_mark,
		/datum/action/xeno_action/psychic_trace,
		/datum/action/xeno_action/mirage,
	)
