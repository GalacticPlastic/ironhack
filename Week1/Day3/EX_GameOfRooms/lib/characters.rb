races = [
	"Human",
	"Elf",
	"Half-Elf",
	"Dwarf",
	"Halfing",
	"Giant",
	"Dark Elf",
	"Kobold",
	"Half-Newt",
	"Vorlan"
]
professions [
	"Warrior",
	"Rogue",
	"Wizard",
	"Sorcerer",
	"Cleric",
	"Monk",
	"Ranger",
]
religions [
	"Common Religion",
	"New Devonites",
	"Orakans",
	"Adventists",
	"Wenos",
	"Rik'tan",			# Rangers required. Elf/Half-Elf
	"Avatars",			# Dark Elves
	"Kobold Cultural Lore"
]

CharacterName = {
	:stats => ["", ""],
	:race => "",
	:gender => "",
	:languages => "Common",
	:profession => "",
	:religion => ""
}
stats = [
	"Strength",		# => ST
	"Dexterity",	# => DE
	"Agility",		# => AG
	"Constitution",	# => CO
	"Discipline",	# => DI
	"Aura",			# => AU
	"Intelligence",	# => IN
	"Wisdom",		# => WI
	"Psi",			# => PS
	"Luck"			# => LU
]

# Training							Math									Possible Maximum
# ------------------------------------------------------------------------------------------
# PTP (Physical Training Points)	((DI + ST + DE + AG + CO) / 5) / 1.25	150
# MTP (Mental Training Points)		((AU + IN + PS + WI + LU) / 5) / 1.25	150

	"",
	"",
	"",
	"",