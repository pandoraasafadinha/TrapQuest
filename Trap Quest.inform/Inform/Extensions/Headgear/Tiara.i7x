Tiara by Headgear begins here.

A tiara is a kind of headgear. A tiara is usually metal. There is 1 tiara. Figure of tiara is the file "Items/Accessories/Head/royaltiara1.png". A tiara is blondeness-positive. A tiara is brightness-positive. A tiara is redness-positive. A tiara is usually hair growing. A tiara is usually intelligence-influencing. A tiara is usually roleplay. A tiara is womanly.

The printed name of tiara is usually "[clothing-title-before]tiara[clothing-title-after]". The text-shortcut of tiara is "ti".

To decide which figure-name is the clothing-image of (C - a tiara):
	decide on figure of tiara.

To say ClothingDesc of (H - a tiara):
	say "This silver [MediumDesc of H] looks like something a very important princess would wear. [one of]You can feel a small amount of magical energy coming from it.[or]It glitters brilliantly even with no nearby bright light source.[or]It feels completely weightless.[sticky random]".

To say ShortDesc of (H - a tiara):
	say "silver tiara".

Definition: a tiara is condom pinnable: decide yes.

Definition: a tiara is royalty themed: decide yes.
Definition: a tiara is gem themed: decide yes.
Definition: a tiara is grey themed: decide yes.

To compute SelfExamineDesc of (H - a metal tiara):
	say "You are wearing a[if the bimbo of the player > 11]n[line break][second custom style] absolutely gorgeous and shiny[roman type][line break][end if] metal [ShortDesc of H] on top of your [ShortDesc of hair]. ".

Chapter - Class Outfit

Definition: a tiara (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is not C and wearing-target is royalty themed, decide yes;
	if the quest of C is virginity-retention-quest and wearing-target is purity, decide yes;
	decide no.

To compute virginity-loss of (C - a tiara):
	if the quest of C is virginity-retention-quest:
		say "In an instant, false memories of being captured and sold into slavery fill your mind. Looking down at yourself again, you realise they are more real than you realised: you are now wearing the bondage that matches your memory: the bondage of a captured warrior princess repurposed as a sex slave for a cruel noble from the conquering nation.";
		summon slave-garb locked;
		now the quest of C is unlock-quest.


tiara-summoned is a number that varies.
To compute unique recycling of (C - a tiara):
	now tiara-summoned is 0.

To compute class outfit of (H - a tiara):
	let R be a random off-stage ballgown royal dress;
	if diaper quest is 0, now R is a random off-stage lolita royal dress;
	if diaper quest is 1 or R is nothing, now R is a random off-stage fetish appropriate short or longer royal dress;
	if R is actually summonable or (R is royal dress and tiara-summoned is 0 and the number of worn royal dress is 0 and (the number of worn warrior chestpiece is 0 or the quest of H is not virginity-retention-quest) and (the quest of H is not unlock-quest or the number of worn locked clothing is 0)):
		PinkWardrobeUnclash R;
		say "[bold type]Your tiara shines brightly, and a [if R is baby royal dress]childish[otherwise]silky[end if] pink dress materialises around you.[roman type][line break]";
		summon R uncursed;
		now tiara-summoned is 1;
		increase the raw-magic-modifier of R by the number of friendly alive royal guards;
		decrease the raw-magic-modifier of R by the number of unfriendly alive royal guards.

Chapter - Quest

betrothal-quest is a headgear-clothing-quest.
stealth-diaper-quest is a headgear-clothing-quest.
unlock-quest is a headgear-clothing-quest.

To uniquely set up (C - a tiara):
	if diaper quest is 1, now the quest of C is stealth-diaper-quest;
	otherwise now the quest of C is betrothal-quest.

To say QuestFlav of (Q - betrothal-quest):
	say "You sense it wants you to find a suitable... suitor, by either sleeping with the same man more than once, or by having sex with a man who isn't demanding it.".

To say QuestTitle of (Q - betrothal-quest):
	say " (betrothal quest)".

To say QuestFlav of (Q - unlock-quest):
	say "You sense it wants you to escape from your bondage.".

To say QuestTitle of (Q - unlock-quest):
	say " (bondage escape quest)".

To compute generic first time class reward of (Q - unlock-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is sapphire;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

To compute unique periodic effect of (H - a tiara):
	if the quest of H is unlock-quest and H is cursed and the number of worn locked clothing is 0, progress quest of unlock-quest.

Tiara ends here.
