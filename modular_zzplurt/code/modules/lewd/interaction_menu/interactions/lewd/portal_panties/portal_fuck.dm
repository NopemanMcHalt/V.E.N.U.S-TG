/datum/interaction/lewd/portal/fuck_vagina
	name = "Portal Fuck (Vagina)"
	description = "Fuck their pussy through the portal fleshlight."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)

	message = list(
		"rams their cock into %TARGET%'s pussy through the portal fleshlight",
		"pounds into %TARGET%'s vagina through the portal fleshlight",
		"thrusts deep into %TARGET%'s wet hole through the portal fleshlight",
		"fucks %TARGET%'s pussy through the portal fleshlight"
	)
	user_messages = list(
		"You feel %TARGET%'s warm pussy squeezing around your cock through the portal",
		"The wetness of %TARGET%'s vagina envelops your shaft through the portal",
		"You thrust deep into %TARGET%'s tight pussy through the portal fleshlight"
	)
	target_messages = list(
		"You feel %USER%'s cock pushing into your pussy through the portal panties",
		"%USER%'s shaft slides deep into your vagina through the portal",
		"The warmth of %USER%'s cock fills your pussy through the portal"
	)

	hidden_message = list(
		"rams their cock into the portal fleshlight's pussy",
		"pounds into the portal fleshlight's vagina",
		"thrusts deep into the portal fleshlight's wet hole",
		"fucks the portal fleshlight's pussy"
	)
	hidden_user_messages = list(
		"You feel the warm pussy squeezing around your cock through the portal",
		"The wetness of the portal fleshlight's vagina envelops your shaft",
		"You thrust deep into the portal fleshlight's tight pussy"
	)
	hidden_target_messages = list(
		"You feel a cock pushing into your pussy through the portal panties",
		"A shaft slides deep into your vagina through the portal",
		"The warmth of a cock fills your pussy through the portal"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING% cums hard into %CAME_IN%'s pussy through the portal fleshlight",
			"%CUMMING% fills %CAME_IN%'s vagina with their seed through the portal fleshlight",
			"%CUMMING% pumps their load deep into %CAME_IN%'s pussy through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%'s pussy squeezes tightly around %CAME_IN%'s cock as they cum through the portal",
			"%CUMMING% climaxes hard on %CAME_IN%'s shaft through the portal",
			"%CUMMING%'s vagina contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into %CAME_IN%'s pussy through the portal fleshlight",
			"You fill %CAME_IN%'s vagina with your seed through the portal fleshlight",
			"You pump your load deep into %CAME_IN%'s pussy through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your pussy squeezes tightly around %CAME_IN%'s cock as you cum through the portal",
			"You climax hard on %CAME_IN%'s shaft through the portal",
			"Your vagina contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel %CUMMING%'s hot seed flooding your pussy through the portal panties",
			"%CUMMING% fills your vagina with their cum through the portal panties",
			"Your pussy is filled with %CUMMING%'s warm cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel %CUMMING%'s pussy squeeze around your cock as they cum through the portal",
			"%CUMMING% climaxes on your shaft through the portal fleshlight",
			"The portal fleshlight's pussy contracts around your member as %CUMMING% cums"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"cums hard into the portal fleshlight's pussy",
			"fills the portal fleshlight's vagina with their seed",
			"pumps their load deep into the portal fleshlight's pussy"
		),
		CLIMAX_POSITION_TARGET = list(
			"The portal panties' pussy squeezes tightly around the cock as they cum",
			"The wearer climaxes hard through the portal panties",
			"The portal panties' vagina contracts in orgasm"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into the portal fleshlight's pussy",
			"You fill the portal fleshlight's vagina with your seed",
			"You pump your load deep into the portal fleshlight's pussy"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your pussy squeezes tightly around the cock as you cum through the portal",
			"You climax hard through the portal panties",
			"Your vagina contracts in orgasm around the member through the portal"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel hot seed flooding your pussy through the portal panties",
			"Warm cum fills your vagina through the portal panties",
			"Your pussy is filled with cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel the pussy squeeze around your cock as they cum through the portal",
			"The portal fleshlight's user climaxes on your shaft",
			"The portal fleshlight's pussy contracts around your member"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 8
	target_arousal = 8

/datum/interaction/lewd/portal/fuck_vagina/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET% moans in pleasure as they're fucked through the portal.",
			"%TARGET% gasps as the cock pushes deeper through the portal.",
			"%TARGET% trembles from the portal fucking.",
			"%TARGET% shudders in arousal from the portal penetration."
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/fuck_anus
	name = "Portal Fuck (Anus)"
	description = "Fuck their ass through the portal fleshlight."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_ANUS)
	message = list(
		"rams their cock into %TARGET%'s ass through the portal fleshlight",
		"pounds into %TARGET%'s anus through the portal fleshlight",
		"thrusts deep into %TARGET%'s tight hole through the portal fleshlight",
		"fucks %TARGET%'s ass through the portal fleshlight"
	)
	user_messages = list(
		"You feel %TARGET%'s tight ass squeezing around your cock through the portal",
		"The warmth of %TARGET%'s anus envelops your shaft through the portal",
		"You thrust deep into %TARGET%'s tight ass through the portal fleshlight"
	)
	target_messages = list(
		"You feel %USER%'s cock pushing into your ass through the portal panties",
		"%USER%'s shaft slides deep into your anus through the portal",
		"The warmth of %USER%'s cock fills your ass through the portal"
	)

	hidden_message = list(
		"rams their cock into the portal fleshlight's ass",
		"pounds into the portal fleshlight's anus",
		"thrusts deep into the portal fleshlight's tight hole",
		"fucks the portal fleshlight's ass"
	)
	hidden_user_messages = list(
		"You feel the tight ass squeezing around your cock through the portal",
		"The warmth of the portal fleshlight's anus envelops your shaft",
		"You thrust deep into the portal fleshlight's tight ass"
	)
	hidden_target_messages = list(
		"You feel a cock pushing into your ass through the portal panties",
		"A shaft slides deep into your anus through the portal",
		"The warmth of a cock fills your ass through the portal"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING% cums hard into %CAME_IN%'s ass through the portal fleshlight",
			"%CUMMING% fills %CAME_IN%'s anus with their seed through the portal fleshlight",
			"%CUMMING% pumps their load deep into %CAME_IN%'s ass through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%'s ass squeezes tightly around %CAME_IN%'s cock as they cum through the portal",
			"%CUMMING% climaxes hard on %CAME_IN%'s shaft through the portal",
			"%CUMMING%'s anus contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into %CAME_IN%'s ass through the portal fleshlight",
			"You fill %CAME_IN%'s anus with your seed through the portal fleshlight",
			"You pump your load deep into %CAME_IN%'s ass through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your ass squeezes tightly around %CAME_IN%'s cock as you cum through the portal",
			"You climax hard on %CAME_IN%'s shaft through the portal",
			"Your anus contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel %CUMMING%'s hot seed flooding your ass through the portal panties",
			"%CUMMING% fills your anus with their cum through the portal panties",
			"Your ass is filled with %CUMMING%'s warm cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel %CUMMING%'s ass squeeze around your cock as they cum through the portal",
			"%CUMMING% climaxes on your shaft through the portal fleshlight",
			"The portal fleshlight's ass contracts around your member as %CUMMING% cums"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"cums hard into the portal fleshlight's ass",
			"fills the portal fleshlight's anus with their seed",
			"pumps their load deep into the portal fleshlight's ass"
		),
		CLIMAX_POSITION_TARGET = list(
			"The portal panties' ass squeezes tightly around the cock as they cum",
			"The wearer climaxes hard through the portal panties",
			"The portal panties' anus contracts in orgasm"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into the portal fleshlight's ass",
			"You fill the portal fleshlight's anus with your seed",
			"You pump your load deep into the portal fleshlight's ass"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your ass squeezes tightly around the cock as you cum through the portal",
			"You climax hard through the portal panties",
			"Your anus contracts in orgasm around the member through the portal"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel hot seed flooding your ass through the portal panties",
			"Warm cum fills your anus through the portal panties",
			"Your ass is filled with cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel the ass squeeze around your cock as they cum through the portal",
			"The portal fleshlight's user climaxes on your shaft",
			"The portal fleshlight's ass contracts around your member"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 4
	user_arousal = 8
	target_arousal = 6
	target_pain = 2

/datum/interaction/lewd/portal/fuck_anus/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET% moans as they're fucked anally through the portal.",
			"%TARGET% gasps as the cock pushes deeper into their ass through the portal.",
			"%TARGET% trembles from the portal anal fucking.",
			"%TARGET% shudders in arousal from the portal penetration."
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/fuck_mouth
	name = "Portal Fuck (Mouth)"
	description = "Fuck their mouth through the portal fleshlight."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"rams their cock into %TARGET%'s mouth through the portal fleshlight",
		"pounds into %TARGET%'s throat through the portal fleshlight",
		"thrusts deep into %TARGET%'s mouth through the portal fleshlight",
		"fucks %TARGET%'s throat through the portal fleshlight"
	)
	user_messages = list(
		"You feel %TARGET%'s warm mouth around your cock through the portal",
		"The wetness of %TARGET%'s mouth envelops your shaft through the portal",
		"You thrust deep into %TARGET%'s throat through the portal fleshlight"
	)
	target_messages = list(
		"You feel %USER%'s cock pushing into your mouth through the portal panties",
		"%USER%'s shaft slides deep into your throat through the portal",
		"The warmth of %USER%'s cock fills your mouth through the portal"
	)

	hidden_message = list(
		"rams their cock into the portal fleshlight's mouth",
		"pounds into the portal fleshlight's throat",
		"thrusts deep into the portal fleshlight's mouth",
		"fucks the portal fleshlight's throat"
	)
	hidden_user_messages = list(
		"You feel the warm mouth around your cock through the portal",
		"The wetness of the portal fleshlight's mouth envelops your shaft",
		"You thrust deep into the portal fleshlight's throat"
	)
	hidden_target_messages = list(
		"You feel a cock pushing into your mouth through the portal panties",
		"A shaft slides deep into your throat through the portal",
		"The warmth of a cock fills your mouth through the portal"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING% cums hard into %CAME_IN%'s mouth through the portal fleshlight",
			"%CUMMING% fills %CAME_IN%'s throat with their seed through the portal fleshlight",
			"%CUMMING% pumps their load deep into %CAME_IN%'s mouth through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%'s mouth works eagerly around %CAME_IN%'s cock as they cum through the portal",
			"%CUMMING% moans around %CAME_IN%'s shaft as they climax through the portal",
			"%CUMMING%'s throat contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into %CAME_IN%'s mouth through the portal fleshlight",
			"You fill %CAME_IN%'s throat with your seed through the portal fleshlight",
			"You pump your load deep into %CAME_IN%'s mouth through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your mouth works eagerly around %CAME_IN%'s cock as you cum through the portal",
			"You moan around %CAME_IN%'s shaft as you climax through the portal",
			"Your throat contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel %CUMMING%'s hot seed flooding your mouth through the portal panties",
			"%CUMMING% fills your throat with their cum through the portal panties",
			"Your mouth is filled with %CUMMING%'s warm cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel %CUMMING%'s mouth work around your cock as they cum through the portal",
			"%CUMMING% moans around your shaft through the portal fleshlight",
			"The portal fleshlight's mouth contracts around your member as %CUMMING% cums"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"cums hard into the portal fleshlight's mouth",
			"fills the portal fleshlight's throat with their seed",
			"pumps their load deep into the portal fleshlight's mouth"
		),
		CLIMAX_POSITION_TARGET = list(
			"The portal panties' mouth works eagerly around the cock as they cum",
			"The wearer moans around the shaft through the portal panties",
			"The portal panties' throat contracts in orgasm"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into the portal fleshlight's mouth",
			"You fill the portal fleshlight's throat with your seed",
			"You pump your load deep into the portal fleshlight's mouth"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your mouth works eagerly around the cock as you cum through the portal",
			"You moan around the shaft as you climax through the portal",
			"Your throat contracts in orgasm around the member through the portal"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel hot seed flooding your mouth through the portal panties",
			"Warm cum fills your throat through the portal panties",
			"Your mouth is filled with cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel the mouth work around your cock as they cum through the portal",
			"The portal fleshlight's user moans around your shaft",
			"The portal fleshlight's mouth contracts around your member"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 2
	user_arousal = 8
	target_arousal = 4

/datum/interaction/lewd/portal/fuck_mouth/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET% moans around the cock in their mouth through the portal.",
			"%TARGET% gags slightly as the cock pushes deeper through the portal.",
			"%TARGET% trembles from the portal throat fucking.",
			"%TARGET% shudders in arousal from the oral portal penetration."
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/fuck_urethra
	name = "Portal Fuck (Urethra)"
	description = "Fuck their urethra through the portal fleshlight."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	message = list(
		"rams their cock into %TARGET%'s urethra through the portal fleshlight",
		"pounds into %TARGET%'s cockhole through the portal fleshlight",
		"thrusts deep into %TARGET%'s urethral opening through the portal fleshlight",
		"fucks %TARGET%'s urethra through the portal fleshlight"
	)
	user_messages = list(
		"You feel %TARGET%'s tight urethra squeezing around your cock through the portal",
		"The warmth of %TARGET%'s cockhole envelops your shaft through the portal",
		"You thrust deep into %TARGET%'s urethral passage through the portal fleshlight"
	)
	target_messages = list(
		"You feel %USER%'s cock pushing into your urethra through the portal panties",
		"%USER%'s shaft slides deep into your cockhole through the portal",
		"The warmth of %USER%'s cock fills your urethra through the portal"
	)

	hidden_message = list(
		"rams their cock into the portal fleshlight's urethra",
		"pounds into the portal fleshlight's cockhole",
		"thrusts deep into the portal fleshlight's urethral opening",
		"fucks the portal fleshlight's urethra"
	)
	hidden_user_messages = list(
		"You feel the tight urethra squeezing around your cock through the portal",
		"The warmth of the portal fleshlight's cockhole envelops your shaft",
		"You thrust deep into the portal fleshlight's urethral passage"
	)
	hidden_target_messages = list(
		"You feel a cock pushing into your urethra through the portal panties",
		"A shaft slides deep into your cockhole through the portal",
		"The warmth of a cock fills your urethra through the portal"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING% cums hard into %CAME_IN%'s urethra through the portal fleshlight",
			"%CUMMING% fills %CAME_IN%'s cockhole with their seed through the portal fleshlight",
			"%CUMMING% pumps their load deep into %CAME_IN%'s urethra through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%'s urethra squeezes tightly around %CAME_IN%'s cock as they cum through the portal",
			"%CUMMING% climaxes hard on %CAME_IN%'s shaft through the portal",
			"%CUMMING%'s cockhole contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into %CAME_IN%'s urethra through the portal fleshlight",
			"You fill %CAME_IN%'s cockhole with your seed through the portal fleshlight",
			"You pump your load deep into %CAME_IN%'s urethra through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your urethra squeezes tightly around %CAME_IN%'s cock as you cum through the portal",
			"You climax hard on %CAME_IN%'s shaft through the portal",
			"Your cockhole contracts in orgasm around %CAME_IN%'s member through the portal"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel %CUMMING%'s hot seed flooding your urethra through the portal panties",
			"%CUMMING% fills your cockhole with their cum through the portal panties",
			"Your urethra is filled with %CUMMING%'s warm cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel %CUMMING%'s urethra squeeze around your cock as they cum through the portal",
			"%CUMMING% climaxes on your shaft through the portal fleshlight",
			"The portal fleshlight's cockhole contracts around your member as %CUMMING% cums"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"cums hard into the portal fleshlight's urethra",
			"fills the portal fleshlight's cockhole with their seed",
			"pumps their load deep into the portal fleshlight's urethra"
		),
		CLIMAX_POSITION_TARGET = list(
			"The portal panties' urethra squeezes tightly around the cock as they cum",
			"The wearer climaxes hard through the portal panties",
			"The portal panties' cockhole contracts in orgasm"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard into the portal fleshlight's urethra",
			"You fill the portal fleshlight's cockhole with your seed",
			"You pump your load deep into the portal fleshlight's urethra"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your urethra squeezes tightly around the cock as you cum through the portal",
			"You climax hard through the portal panties",
			"Your cockhole contracts in orgasm around the member through the portal"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel hot seed flooding your urethra through the portal panties",
			"Warm cum fills your cockhole through the portal panties",
			"Your urethra is filled with cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel the urethra squeeze around your cock as they cum through the portal",
			"The portal fleshlight's user climaxes on your shaft",
			"The portal fleshlight's cockhole contracts around your member"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 4
	user_arousal = 8
	target_arousal = 6
	target_pain = 4

/datum/interaction/lewd/portal/fuck_urethra/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET% moans as their urethra is fucked through the portal.",
			"%TARGET% gasps as the cock pushes deeper into their cockhole through the portal.",
			"%TARGET% trembles from the portal urethral fucking.",
			"%TARGET% shudders in arousal from the urethral portal penetration."
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))

/datum/interaction/lewd/portal/frotting
	name = "Portal Frotting"
	description = "Rub your cock against theirs through the portal fleshlight."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = null, CLIMAX_POSITION_TARGET = null)
	message = list(
		"rubs their cock against %TARGET%'s penis through the portal fleshlight",
		"grinds their shaft against %TARGET%'s member through the portal fleshlight",
		"presses their dick against %TARGET%'s cock through the portal fleshlight",
		"frotts against %TARGET%'s penis through the portal fleshlight"
	)
	user_messages = list(
		"You feel %TARGET%'s cock rubbing against yours through the portal",
		"The warmth of %TARGET%'s shaft presses against your cock through the portal",
		"You grind your penis against %TARGET%'s through the portal fleshlight"
	)
	target_messages = list(
		"You feel %USER%'s cock rubbing against yours through the portal panties",
		"%USER%'s shaft grinds against your penis through the portal",
		"The warmth of %USER%'s cock presses against yours through the portal"
	)

	hidden_message = list(
		"rubs their cock against the portal fleshlight's penis",
		"grinds their shaft against the portal fleshlight's member",
		"presses their dick against the portal fleshlight's cock",
		"frotts against the portal fleshlight's penis"
	)
	hidden_user_messages = list(
		"You feel another cock rubbing against yours through the portal",
		"The warmth of another shaft presses against your cock through the portal",
		"You grind your penis against another through the portal fleshlight"
	)
	hidden_target_messages = list(
		"You feel a cock rubbing against yours through the portal panties",
		"A shaft grinds against your penis through the portal",
		"The warmth of another cock presses against yours through the portal"
	)

	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%CUMMING% cums hard against %CAME_IN%'s cock through the portal fleshlight",
			"%CUMMING% shoots their seed over %CAME_IN%'s shaft through the portal fleshlight",
			"%CUMMING% climaxes against %CAME_IN%'s penis through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"%CUMMING%'s cock throbs against %CAME_IN%'s shaft as they cum through the portal",
			"%CUMMING% climaxes hard against %CAME_IN%'s member through the portal",
			"%CUMMING%'s penis pulses in orgasm against %CAME_IN%'s cock through the portal"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard against %CAME_IN%'s cock through the portal fleshlight",
			"You shoot your seed over %CAME_IN%'s shaft through the portal fleshlight",
			"You climax against %CAME_IN%'s penis through the portal fleshlight"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your cock throbs against %CAME_IN%'s shaft as you cum through the portal",
			"You climax hard against %CAME_IN%'s member through the portal",
			"Your penis pulses in orgasm against %CAME_IN%'s cock through the portal"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel %CUMMING%'s hot seed splashing against your cock through the portal panties",
			"%CUMMING% covers your shaft with their cum through the portal panties",
			"Your penis is coated with %CUMMING%'s warm cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel %CUMMING%'s cock throb against yours as they cum through the portal",
			"%CUMMING% climaxes against your shaft through the portal fleshlight",
			"The portal fleshlight's penis pulses against your member as %CUMMING% cums"
		)
	)

	hidden_cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"cums hard against the portal fleshlight's cock",
			"shoots their seed over the portal fleshlight's shaft",
			"climaxes against the portal fleshlight's penis"
		),
		CLIMAX_POSITION_TARGET = list(
			"The portal panties' cock throbs against the shaft as they cum",
			"The wearer climaxes hard through the portal panties",
			"The portal panties' penis pulses in orgasm"
		)
	)
	hidden_cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You cum hard against the portal fleshlight's cock",
			"You shoot your seed over the portal fleshlight's shaft",
			"You climax against the portal fleshlight's penis"
		),
		CLIMAX_POSITION_TARGET = list(
			"Your cock throbs against the shaft as you cum through the portal",
			"You climax hard through the portal panties",
			"Your penis pulses in orgasm against the member through the portal"
		)
	)
	hidden_cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"You feel hot seed splashing against your cock through the portal panties",
			"Warm cum covers your shaft through the portal panties",
			"Your penis is coated with cum through the portal"
		),
		CLIMAX_POSITION_TARGET = list(
			"You feel the cock throb against yours as they cum through the portal",
			"The portal fleshlight's user climaxes against your shaft",
			"The portal fleshlight's penis pulses against your member"
		)
	)

	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 4
	user_arousal = 6
	target_arousal = 6

/datum/interaction/lewd/portal/frotting/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(prob(5 + target.arousal))
		var/list/arousal_messages = list(
			"%TARGET% moans as their cock is rubbed through the portal.",
			"%TARGET% gasps as the shaft grinds against theirs through the portal.",
			"%TARGET% trembles from the portal frotting.",
			"%TARGET% shudders in arousal from the cock-to-cock contact through the portal."
		)
		var/target_message = list(pick(arousal_messages))
		target.visible_message(span_lewd(replacetext(target_message, "%TARGET%", target)))
