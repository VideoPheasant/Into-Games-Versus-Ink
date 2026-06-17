INCLUDE Functions.ink
INCLUDE Deprecated.ink

VAR time = 0
VAR dinner_time = 120
VAR VendingMachineInteraction = 0

*[Start]

->Vending_Machine_Entrance

===Vending_Machine_Entrance===
~ report_time()


{VendingMachineInteraction == 3:
    3 Interactions, and probably a direct on to the next part of the game.
  - else:{VendingMachineInteraction == 2:
  2 interactions.
  - else:{VendingMachineInteraction == 1:
  1 interaction.
  - else:
    {The vending machine looms over you. It hums with the low irregularity of an old fridge. It wants you to push its buttons.|The vending machine waits hungrily for you to make another selection. Go on. Treat yourself. Open yourself up to new experiences.}
}
    }
        }


+{not Thomas_Button.Pushed}Sister Tilly Sizzle's Slightly Too Spicy Slices!
->Thomas_Button

*Satisfaction? Maybe.
->Lucy_Button

+Oobleck Enterprise's Non-Newtonian Nutrition
->Lyra_Button

+{not Teo_Button.ForcefullyPressAgain}Sir Jerry Breen's Fantastical Jellybeans
->Teo_Button

*Jon's Vending Machine Button.
->Jon_Button

+{not Incomprehensible_Word.Pushed}Incomprehensible Word.
->Incomprehensible_Word

+{not Jenyth_Button.Pushed}<i>MSN de POMP. VINS.</i>
->Jenyth_Button

*The Empty Wrapper Company
->Fautical_Button

===Thomas_Button===

The eponymous & iconic Tilly Sizzle is depicted on the logo for TSSTSS in her usual form. That of a cartoon flamethrower with eyelashes. She was a more appropriate mascot back when her company sold weapons, but she seems happier now they've moved on to snacks. She still has that far off look in her eyes though.

Tilly's slices come with an absolute guarantee that they will be slightly too spicy for the consumer. You'd have to be pretty hardcore to pick something that you're guaranteed not to enjoy.

*[Push the button because you're hardcore.]
->Pushed
*[Push the button because you're curious.]
->Pushed
+Leave the button alone for now.
->Vending_Machine_Entrance

=Pushed

The vending machine shudders and smokes slightly before a dry foil package drops into its pick-up box with a light crinkling sound. You can smell it already, without opening it. Seems intimidatingly spicy.

The packaging is almost entirely disclaimer text printed on an image of Tilly Sizzle's face. She looks concerned.

*[Read the disclaimer.]

<i>WARNING. THIS PRODUCT CONTAINS GLUTEN, PEANUTS, QUANTUM WAVEFORM RECEIVERS AP-105,AP-103,AP-5^787,AP-0000,AP-0,AP-ZERO,AP-DOROTHY.</i>

<i>Depending on your physiology and disposition the collapse of these quantum waveforms is guaranteed to and in some cases has already caused negative symptoms ranging from DISCOMFORT to EXISTENCE.</i>

<i>This product is not suitable for consumption by Highly Improbable Entities or Wusses. This product is not suitable for enjoyment.</i>

    **[On second thought... No.]
    
        The packaging senses your hesitation, and the look in Tilly Sizzle's eyes seems to shift from haunted worry to bitter disappointment. Too spicy for you, is it? The package heats up rapidly in your hand until it's slightly too hot to hold and you drop it with a yelp. It cooks itself to ash right there on the floor in front of you. The thick smoke wafting from the torched packaging carries complex layers of pepper and caraway. It makes your mouth water.
        ->Vending_Machine_Entrance
    
    **[They only write this stuff to make you feel cool for eating something so dangerous... and it's working...]
    ->Eaten
    
    **[This is a rare opportunity to eat something with QUANTUM WAVEFORM RECEIVERS whatever those are. Better not pass it up.]
    ->Eaten

*[Just tear open the bag and give them a try. Hopefully someone will see you eating them and be impressed.]
->Eaten

=Eaten
~ VendingMachineInteraction = VendingMachineInteraction +1
The slices themselves are damp leathery discs that remind you of dried apricot. You drop one onto the palm of your hand to examine it, and almost immediately your hand begins to tingle. The spice is on your skin and it's a little bit much. You instinctively pop the slice in your mouth.

*[Chew.]

*[Take it slow. Just let it sit on your tongue.]

-

It tastes incredible. It's savoury. It's complex. It's sweet but also mature. It's earthy but also refreshing. It's... Oh here comes the spice. No. No. It's too spicy. It's just a little bit too spicy to enjoy it really.

*[Spit it out.]

    You splutter and spit it out.

    
*[Just bear it. Force yourself to finish what you started.]

No. No. It's really <i>too</i> spicy. You try to inhale and the air passing over the slice becomes hostile to all human life on its way down your throat. You splutter and just like that you've lost it.

-

The slightly too spicy slice slops onto the ground trailing smoke like the tail of a slimy comet. What a waste. You have failed.

*[Fortify yourself. Pick it up. Finish it.]
->Eaten_Again
*[Give up and consign yourself to littering and waste.]

The packaging seems to sense your rejection and heats up rapidly in your hand until it's slightly too hot to hold and you drop it with a yelp. It cooks itself to ash right there on the floor in front of you. The thick smoke wafting from the torched packaging makes your mouth water, but you know it's actually too spicy to enjoy.
    ->Vending_Machine_Entrance


=Eaten_Again
The slice has fallen into- or perhaps excreted- a pool of hot fragrant scum. The liquid seems to hold on like the stomach of a hungry anemone. You peel the slice off the ground and your naked fingers immediately start to protest.

*[Mmm. Yummy. Yes. Time for round two. It's only spice. What could go wrong?]

Seriously?

    **[Put the slice in your mouth.]
    
    There's a layer of thin metallic grit between you and the slice, but once you've licked it away and returned to chewing, the sensation that originally repelled you returns. It's slightly too spicy. There's also something new: Shame.
    
        ***[JUST SWALLOW IT. WIN.]
        
        You swallow. Your mouth, throat, and vision go red. You can hear yourself bleating and heaving, but you can't feel anything any more. By the time it's over, the slightly too spicy slice is lying in a puddle on the floor, unswallowed. The slice lies there with the dejected triumph of someone who has won a war they never should have started.
        
        This has not been a good meal.
        ->Vending_Machine_Entrance
        
        ***[Come to your senses and spit it out one last time.]
        
        You spit it out and congratulate yourself on giving it a real fair try.
        ->Eaten_Again_Rejected

*[Throw it away and question what you were even thinking.]
->Eaten_Again_Rejected

=Eaten_Again_Rejected
The packaging seems to sense your rejection and heats up rapidly in your hand until it's slightly too hot to hold and you drop it with a yelp. It cooks itself to ash right there on the floor in front of you. The thick smoke wafting from the torched packaging makes your mouth water, but you know it's actually too spicy to enjoy.
    ->Vending_Machine_Entrance

===Lucy_Button===
Thank you for pressing this button - we guarantee we have products that will always leave you wanting more!

There {is 1 more button on the machine to press | is now a 2nd button to press | is now a 3rd button to press} - how exciting! // Each option appears the more player presses through the food/drink options.
*Press normal-sized button
->Normal_sized_button

*Press slightly smaller button
->Slightly_smaller_button

*Press even smaller button
->Even_smaller_button

==Normal_sized_button==
Please choose one of the following options:
*Drink
->Drink

*Food
->Food

==Slightly_smaller_button==
Please choose one of the following options:
*Normal sized drink
->Normal_sized_drink

*Normal-sized cake
->Normal_sized_cake

==Even_smaller_button==
Please choose one of the following options:
*Above average sized drink
->Above_average_sized_drink

*Above average sized cake
->Above_average_sized_cake

==Drink==
A tiny bottle rolls out the size of half your middle finger. 

The label reads: "Dangerous substance - might not be drinkable".
*Drink the substance
->Drink_the_Substance

*Pour the substance away
->Pour_the_substance_away

==Drink_the_Substance==
The bottle is so small that there surely couldn't be any lasting damage, right?

After drinking the substance, you immediately feel nauseous and on edge and yet... something deep within leaves you craving more.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Pour_the_substance_away==
Not taking any chances, you pour the substance away. It looks gloopy.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Food==
Something rolls out - a cake, you realise, the size of a single pea. 
The cake is a vibrant purple.
*Eat the cake
->Eat_the_cake

*Don't eat the cake
->Dont_eat_the_cake

==Eat_the_cake==
The cake is delicious.

The size leaves you feeling entirely unsatisfied.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Dont_eat_the_cake==
You decide it's not worth eating a pea-sized cake.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Normal_sized_drink==
A drink that is normal sized rolls out - you couldn't be happier at average it looks.

The only thing you can discern from the label and the colour of the liquid, is that it must be lemon flavoured.

*Drink lemon flavoured drink
->Drink_lemon_flavoured_drink

*Don't drink lemon flavoured drink
->Dont_drink_lemon_flavoured_drink

==Drink_lemon_flavoured_drink==
You down the whole thing.
You realise too late how much flavour this drink holds. The lemon is so strong, you feel it in every fibre of your being.

You worry you might actually be turning into a lemon until the flavour subsides and you realise how ridiculous that is.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Dont_drink_lemon_flavoured_drink==
You decide you don't want it - lemon-hater.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Normal_sized_cake==
You almost cry looking at the size of this cake (after the basically non-existent one you just ate) // Include this line if player previously ate the tiny cake.

*Eat normal sized cake
->Eat_normal_sized_cake

*Don't eat normal sized cake
->Dont_eat_normal_sized_cake

==Eat_normal_sized_cake==
You bite into the cake, (eager to taste more of the deliciousness you did before).

The inside of the cake is hollow.

The cake has a slight under-baked flavour.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Dont_eat_normal_sized_cake
Despite its normal size, you decide this cake isn't worth eating.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Above_average_sized_drink==
The drink is slightly above average. It looks thicker than a drink should.
*Drink above average drink
->Drink_above_average_drink

*Don't drink above average drink
->Dont_drink_above_average_drink

==Drink_above_average_drink==
You take a sip of the drink (as learned from last time) // If player downed the bottle previously.

The drink? immediately sticks to the inside of your mouth, making it hard to swallow or move your tongue.

You think you might be trapped like this forever, until suddenly the drink? starts dissolving in your mouth. No traces of it are left, except a slight burnt bitter aftertaste.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Dont_drink_above_average_drink==
With the strange thickness of the drink, you don't think it's worth taking the risk.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Above_average_sized_cake==
The size of this cake is even more impressive (than the others).

*Eat above average sized cake
->Eat_above_average_sized_cake

*Don't eat above average sized cake
->Dont_eat_above_average_sized_cake

==Eat_above_average_sized_cake==
You take a tentative bite of the cake - the flavour is phenomenal, but the cake is incredibly dry.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance

==Dont_eat_above_average_sized_cake==
You have had one too many disappointments today, so you decide not to eat the cake. // Again, said if player has chosen a few options - work with variables.

*Choose another item?
->Lucy_Button

*Leave
->Vending_Machine_Entrance


===Lyra_Button===
VAR GreyCubesEaten = 0
{The button is slightly sticky to the touch.|You're still hungry for cubes...}
+Press it
->Sticky_Button

+Reconsider your choice
->Vending_Machine_Entrance


===Sticky_Button===
{The button yields to your touch - it feels a lot like a poking your fingertips into a pot of homemade slime.|}

The vending machine's speakers crackle into life.

"Thank you for choosing Oobleck Enterprise's non-Newtonian products - the most efficient way to delight your tastebuds while meeting your base nutritional needs.

Please select an option from our curated selection of exceptionally adequate flavours."
+Press the green button
->Green_Button

+Press the red button
->Red_Button

+Press the grey button
->Grey_Button

*Try something else
->Vending_Machine_Entrance


===Green_Button===
The machine whirs - there's a muffled <i>thud</i> as a small gelatinous cube falls into the open vending slot.

+Pick it up
->Pick_Green_Cube

*Yeah, no thanks
->Vending_Machine_Entrance

===Pick_Green_Cube===
{You pick up the green cube and inspect it. It looks like ordinary jelly, but feels denser. There are small specks of what you assume to be some kind of ground-up leaf suspended inside it.|You pick up the leaf-filled cube.}

+Eat the green cube
->Eat_Green_Cube

*Try something else
->Vending_Machine_Entrance

===Eat_Green_Cube===
{It tastes... minty, with a faint floral undertone. It's surprisingly pleasant.|You're still not entirely convinced by the texture, but your mouth feels a little fresher.}

+Try something else
->Vending_Machine_Entrance

===Red_Button===
{Something plops unceremoniously into the open vend slot.|Another red cube plops unceremoniously into the open vend slot.} 

+Pick it up
->Pick_Red_cube

*Have second thoughts
->Vending_Machine_Entrance

===Pick_Red_cube===
It looks like a cube of ordinary jelly. Its colour evokes synethetic strawberry flavours.

+Eat the red cube
->Eat_Red_Cube

*Try something else
->Vending_Machine_Entrance

===Eat_Red_Cube===
{It takes a moment for you to place the savory, metallic taste. The cube bursts in your mouth, releasing a creamy fondant centre. It's the taste of an extremely rare steak combined with the texture of a soufflé.|Yeah, it's definitely blood flavoured - but perhaps you're developing a taste for it?}

{Was that... blood flavoured?|}

+Try something else
->Vending_Machine_Entrance

===Grey_Button===
{GreyCubesEaten == 3:The machine whirs, but nothing comes out.->GreyCubesOut}
{GreyCubesEaten == 0-2:What appears to be a clump of grey dust falls into the open vend slot.|Another grey cube appears in the open vend slot.} 

+Pick it up
->Pick_Grey_Cube

*Have second thoughts
->Vending_Machine_Entrance

===Pick_Grey_Cube===
{You pick up what appears to be fine grey powder compressed into a cube around a soft centre. Some of the powder crumbles away and sticks to your fingertips.|You feel yourself begin to salivate at the memory of grey powder's sweet flavour.}

+Eat the grey cube
->Eat_Grey_Cube

*Decide against it
->Vending_Machine_Entrance

===Eat_Grey_Cube===
~GreyCubesEaten = GreyCubesEaten + 1
It's sweet and delicious, like eating powdered cookies and cream. {You're struck by the immediate urge to eat a dozen more of them.|Your urge for more intensifies.}

+Try something else
->Vending_Machine_Entrance

===GreyCubesOut===
You press the button again in the hope that you simply didn't press it hard enough last time. 

Nothing happens.

*Press harder.
->2ndOutPress

===2ndOutPress===
Still nothing.

*Give up.
->GreyCubeGiveUp

*Press the button repeatedly until the machine responds.
->3rdOutPress

===3rdOutPress===
The machine makes an ominous clanking sound.

*Back away slowly.
->BackAway

*Lean in closer.
->LeanCloser

===BackAway===
As you take a few tentative steps away from the machine you notice a split in its surface begin to open.

->CubeVendorAppearance

===LeanCloser===
As you lean closer a metal panel in the machine's surface swings open, narrowly missing the tip of your nose.

->CubeVendorAppearance

===CubeVendorAppearance===
The hatch opens fully to reveal a small... creature? It's vaguelly humanoid in shape with a small cuboid body and four ropy limbs. You're not sure where its face is, but the tension in its squishy body gives you the impression that it's annoyed.

The only indication that it has a head is the chef's hat perched on one of its corners.

"No more cubes for you!" it says in in a thin, nasal voice. "We're out of the grey flavour for the day. Come back tomorrow."

It reaches for the hatch, as though about to slam it closed again.

*Grab the hatch before it can close it.
->GrabHatch

*Panic. You need your cube fix.
->Panic

*Do nothing.
->DidNothing

===GrabHatch===
You catch the hatch as it closes. The creature makes a disgruntled noise.

"Didn't you hear me? We don't have any more."

->InteractedWithCubeVendor

===Panic===
Your palms begin to sweat - your stomach feels empty and hollow. You need more cubes.

->InteractedWithCubeVendor

===InteractedWithCubeVendor===
"Come. Back. Later," the creature says, with patronising clarity.

**"But I need more cubes!"
"No. No more."
***Where can I get some?"
The creature sighs. It whipes what might be its forehead with one boneless appendage.
"[Go to the interdemensional food festival]"

[redirect to food fest]
->Vending_Machine_Entrance

===DidNothing===
The hatch slams closed. You're not sure what you just saw. 

->Vending_Machine_Entrance

===GreyCubeGiveUp===
You're sweating a little, but willing to accept defeat.

->Vending_Machine_Entrance

===Teo_Button===

The name "Sir Jerry Breen's Fantastical Jellybeans" is one you are very familiar with. It is one of the most infamous, and exorbitantly expensive candies in the multi-verse. Despite their unreasonable pricing, the jellybeans still see wide use. In fact they are dubbed the "perfect jellybeans".

+[Today is a special occasion, you can have some.]
->HaveSome
*[On second thought, I'd like to try something else.]
->Vending_Machine_Entrance

=HaveSome
Your gaze falls on the green, square button with the iconic figure of "Sir Jerry Breen" appearing to be worn out. Only one last bag of jellybeans sits in the vending machine. You press the button. It feels soft and dampened.

It doesn't seem to work.
+[Press the button again.]
->PressAgain
*[Don't bother, it's probably broken.]
->Vending_Machine_Entrance

=PressAgain
You press the button. It softly slides back inside, and out...

+[Forcefully press the button again.]
->ForcefullyPressAgain
*[Give Up.]
->Vending_Machine_Entrance

=ForcefullyPressAgain
Unexpectedly... The vending machine responds to your selection with a soulless, automated message sounding from its speaker:

"Sir Jerry Breen's Fantastical Jellybeans are sure to delight you and sure not to disappoint!"

The vending machine clacks and whirs, struggling to push your item in the drop box.

*[Give it a minute.]
->GiveItAMinute
*[Give it a good shake (like in the movies).]
->GiveItAShake

=GiveItAMinute
Patience is a virtue, you think to yourself.
*[Wait a bit longer.]
->Wait

=Wait
Catching yourself dozing off, you snap back to reality, finding the jellybeans bag in the drop box. 

You enthusiastically pick them up.
*[Read the item's description.]
->ReadDescription1
*[You can't wait. You need to have a jellybean right now.]
->HaveAJellybean

=GiveItAShake
Hoping someone watches, you put on a performance. You bump into the vending machine, shaking it, again, and again, until the plastic rustling against the metal and the final thud of the drop cap off the show.

You proudly look around to find out not a soul turned to pay attention. You feel a bit embarrassed, but nonetheless brush it off and pick up the jellybeans bag.
*[Read the item's description.]
->ReadDescription1
*[You can't wait. You need to have a jellybean right now.]
->HaveAJellybean


=ReadDescription1
The tale of our founder Sir Jerry Breen is well-known across the multi-verse. A tale of an inventor, a saviour, and a peacemaker. His “fantastical” jellybeans united the multi-verse after millennia of war and devastation. Where there was nothing but difference and division, Sir Jerry Breen showed the world that there was much more in common, and where differences remained, his jellybeans more than made up for.
*[Continue reading.]
->ReadDescription2
*[Enough with reading, a jellybean is in order.]
->HaveAJellybean

=ReadDescription2
"Sir Jerry Breen's Fantastical Jellybeans" don't have any taste to begin with, but once they come into contact with saliva they perform a rapid, harmless analysis of the organism's genetic make-up. The result? Flavours adapt to your unique preferences, making them truly countless, and colours can range far beyond the visible light spectrum often making them hardly visible to the naked human eye.

Have these jellybeans at your discretion, as once you've tasted perfection, there's no going back.
*[It's jellybean time!]
->HaveAJellybean

=HaveAJellybean
You swiftly tear the bag open in one clean cut.

You gaze inside, and see a sea of shining colour, jellybeans ranging from ruby red, emerald green, diamond blue, golden yellow, even to silvery see-through, colours far beyond your eyes allow you to discern.

You close your eyes and give them a good shuffle. You sink your fingers deep in the bag, and pick out...

A {~Ruby Red|Emerald Green|Diamond Blue|Golden Yellow|Silvery See-through} jellybean!

You playfully toss it in your mouth and chew. The jellybean initially leaves you unimpressed, tasting bland.As you continue chewing, you gradually start to sense a new flavour, one that words can't describe. It's unlike the taste of a fruit, chocolate, or sugary drink. It's a novelty, a flavour unique to you and one that no other has experienced.

You continue chewing and enjoying the jellybean...

->Vending_Machine_Entrance

===Jon_Button===
->Vending_Machine_Entrance

===Incomprehensible_Word===
{The button glows with a dizzying light not suitable for mortal eyes. Bizarre glyphs flicker in and out of view around the button while the sound of ambient guttural chanting (or is it whispering?) can be heard the longer one looks. | The button waits, eager for you to take action.}
*Listen closely.
->Listen
*Push the button.
->Pushed
*Don't push the button.
->Vending_Machine_Entrance

=Listen
The whispering chants (or chanting whispers?) gain clarity as you hear a voice that is annoyingly far away and yet somehow right at the back of your head say "Trying to harness long forgotten powers wielded by ancient beings so grand in scale that the very idea of them might cause unsolicited madness? Try <i>Incomprehensible Word</i>!" 

<i>Incomprehensible Word</i> packs HUGE flavor and CENTURIES worth of occult wisdom in every bite! No rituals necessary, no tentacles, and no chance of pesky mutations! Try <i>Incomprehensible Word</i>, it's incomprehensible!"

->Incomprehensible_Word

=Pushed
The vending machine trembles as ancient magic is beckoned, threatening to sunder the skeins of reality and call unspeakable abominations through its dispenser, before it ejects a holographic package decorated with the unassuming black logo of an open eye.

*Inspect the package
->Inspected

=Inspected
You notice a small notch at the upper left side of the foil package beckoning - no, demanding - you cross the precipice of destiny and receive that which only those blessed by the Ancients could ever hope to obtain.

*Open the package.
->Opened

*Don't open the package.
A sense of overwhelming dread grips you. Maybe you should open this later.
->Vending_Machine_Entrance

=Opened
The stars begin to align at this singular cosmic focal point.

A thought stirs within you, suggesting that every moment in your life has led to this. Did you choose the Button, or did the Button choose you? 

You open the package and empty the contents into the palm of your hand. Perhaps more startling than any multi-limbed, ooze-covered, thousand-eyed abomination that <i>could</i> have manifested from the package, you are met with the frankly disappointing shape of a raisin.

...well, at least it's not tentacles.

*Eat it.
->Eaten

=Eaten
You pop the dried, leathery snack into your mouth and chew, releasing the flavors trapped within. At first, there is the sweetness of an apricot, though the texture feels more like a date. But...

*What's this?
->whatitis

=whatitis
The flavor begins to transform, undergoing some chemical metamorphosis as your taste buds struggle to make sense of what you've introduced them to. Sweet becomes tart becomes... something else entirely. 

*Taste the non-Euclidean rainbow
->NonEuRainbow

=NonEuRainbow
A sensation of etheriality washes over you as you swallow, and the effects of the snack take hold. 
Your vision softens. Your breathing relaxes. And, at the climax of your mortal form having tasted the fruit of the gods, you begin to <b>see</b>.
 New pathways reveal themselves as walls become doors and doors become windows into new realms. Euphoria takes hold of you as your perception transcends into a metaphysical state.
 
 Your snack apotheosis is complete.
->Vending_Machine_Entrance

===Jenyth_Button===
VAR playerCorrectFrench = 0
VAR playerIncorrectFrench = 0
VAR voiceIncorrectFrench = 0
VAR currentWinesTasted = 0

VAR voiceKickedPlayerOut = false
VAR likesWine = true
VAR wantsDifferentWineColour = false
VAR wantsDifferentWineType = false
VAR correctedVoicesFrench = false
VAR ranOutOfWineTypes = false
VAR askedForDifferentTypeOfWine = false

LIST WineColours = (red), (white), (orange), (silver)
VAR currentWineColour = ()
VAR currentWineType = ()

LIST RedWineTypes = (shiraz), (merlot), (cabernetSauvignon)
LIST WhiteWineTypes = (chardonnay), (savignonBlanc)
LIST OrangeWineTypes = (goûtDeGirofle)
LIST SilverWineTypes = (boleau), (pinotÉtoilé)

LIST NegativeWineNouns = plonk, corkedRubbish, swill, rotgut
LIST PositiveWineAdjectives = special, interesting

LIST NotesNoun = citrus, peach, melon, battery, fig, sharpie, cardboard, stardust, tyre, horseSweat, petrol, ripeBerries, mocha, blackPepper
LIST BodyAdjectives = angular, full, flabby, approachable, balanced, crisp, dense, supple, sticky, slick, light, dainty, heavy, brooding, rich, thick
LIST FlavourAdjectives = dry, earthy, elegant, herbaceous, jammy, savoury, silky, spicy, tart, unctuous, zesty, peppery, chalky, grassy, bitter, sour, acrid, sharp, caramelised, medicinal, nutty, spoiled, sulfurous, metallic, tangy
LIST BarrelAdjectives = oak, cedar, birch, cherryWood, mahogany, pine, laminate, clay, sandstone, rubber, plastic
LIST RegionDescriptors = desert, ancientForest, swamp, greatPlains
LIST RegionAdverbs = diligently, cautiously, doggedly, triumphantly
LIST places = surrey, newKensington, moon, paradise, cave
LIST TanninsAdjectives = chewy, grippy, rough, round, soft, structured, euclidean, abrasive, clean, confused, coagulated, fluffy, frothy, itchy, mucky, refined, soggy, syrupy
LIST NumberOfYears = five = 5, ten = 10, fifteen = 15, twenty = 20, notSure, unfathomableNumber

//For now I want the list of adjectives and nouns here to reset every time. I couldn't be bothered putting brackets around every item in the list, so this autopopulates the list with every possible adjective defined within it when the player first enters the button.
~ NotesNoun = LIST_ALL(NotesNoun)
~ TanninsAdjectives = LIST_ALL(TanninsAdjectives)
~ FlavourAdjectives = LIST_ALL(FlavourAdjectives)
~ BarrelAdjectives = LIST_ALL(BarrelAdjectives)
~ NumberOfYears = LIST_ALL(NumberOfYears)
~ NotesNoun = LIST_ALL(NotesNoun)

 {At least, that is what this button reads. It seems like a cork bottlestop has been shoved into an otherwise normal button slot. |The cork button is still there. Waiting.} 
 
 * [Inspect the button further.]
 ->Read_Button
 *[P{|erhaps now you'll p}ress the button.]
 -> Pushed
 *[Look at something else.]
-> Vending_Machine_Entrance

 =Read_Button
It bears a faded ink insignia: a bunch of grapes, heavy on the vine. Its leaves twist and curl untidily around it.
->Jenyth_Button

 =Pushed
Something clicks, then whirrs within the machine. And then a faint loop of static, before a tinny voice pipes up.

<i>Ah, bonjour, my dear cus-de-mér!</i> #audio_ID_8_Jenyth

*[Look at the other buttons. Anything but whatever this is.]
->Vending_Machine_Entrance
*[Reply with, <b>Hello?</b>]You reply with, <b>Hello?</b>
->Intro
*[Reply with, <b>Bonjour?</b>]You reply with, <b>Bonjour?</b>
    ~ playerCorrectFrench++
    <i>Ahon, a fellow... Français!</i> The voice laughs, but then hesitates for a second, leaving you alone with the static. Then it clears its throat.
    #audio_ID_9_Jenyth
    ->Intro
    
=Intro
{playerCorrectFrench > 0:
    <i>Mais, I digress... <>
- else:
    <i>Alors: <>
}
    bienvenue en la Maison de Pomponville!</i>
The voice gains a certain glassy-eyed quality, as if reading from an autocue. <i>We are the home of the finest of wines. We 'ave you covered, no matter your taste: old worlds, new worlds, worlds as of yet undiscovered: we 'ave them all!</i>
#audio_ID_11_Jenyth
*[Remain silent as a sign of assent.] You wait, patiently, for the machine to continue. You're listening.
    <i>Ah, I can tell you are a... how you say. Person of great taste!</i> The voice descends into a series of guffaws, noises you can only imagine being made by someone swilling wine around a glass at a dinner party.
*[Remain silent and thoroughly unimpressed.] You allow your silence to flow forth towards the machine.
    A nervous crackle of laughter, and a few extra clicks. Then, the voice continues.#audio_ID_12_Jenyth
*Hmm... something seems off about the voice's French.
    ~ correctedVoicesFrench = true
    You ponder what could be wrong.
    ** Isn't <i>maison</i> masculine? Doesn't the voice mean <i>le maison</i>?
        ~ playerIncorrectFrench++
        The voice guffaws. <i>Ah, le cus-de-mér may not always be right, non? Maison is most</i> definitely <i>le feminine.</i>
        #audio_ID_12_Jenyth
    ** Why did the voice say <i>bienvenue en</i>? And not <i>bienvenue à</i>?
        ~ playerCorrectFrench++
        You hear a metallic buzz and gurgle near the back of machine, like a refrigerator suddenly kicked into life. <i>Ah... mais that is what I said! Bienvenue </i>à<i> le Maison de Pomponville!</i>
        #audio_ID_15_Jenyth
                ***[Maybe this isn't worth it.]
                ***<b>But <i>maison</i> is feminine. Don't you mean <i>la Maison?</b>
                    The vending machine jolts. Click, click, click: then the quiet static again. <i>Ah, my dear cus-de-mér, I cannot 'ear you: there is so much... in-tér-fear-ance...</i>
                    ~ voiceKickedPlayerOut = true
                    **** [It doesn't seem that loud to you.]
                    -> Exit_Button
- 
{correctedVoicesFrench: The voice clears its throat.} <i>Well, uh, would you 'ave any vin to ensample?</i> #audio_ID_12_Jenyth

*Tu penses oui.
~ playerCorrectFrench++
->Order_Wine
*You think yes.
->Order_Wine
* You think not.
->Exit_Button
*Tu penses non.
~ playerCorrectFrench++
->Exit_Button

=Order_Wine
// Choose a random wine type from the list to be served, as long as the customer hasn't said they want something of the same colour of wine.
{
- wantsDifferentWineColour == true:
    ~ askedForDifferentTypeOfWine = false
    ~ WineColours -= currentWineColour
    ~ currentWineColour = LIST_RANDOM(WineColours)
    ~ wantsDifferentWineColour = false
- ranOutOfWineTypes == true:
    ~ askedForDifferentTypeOfWine = false
    ~ WineColours -= currentWineColour
    ~ currentWineColour = LIST_RANDOM(WineColours)
    ~ wantsDifferentWineType = false
    ~ ranOutOfWineTypes = false
- wantsDifferentWineType == true:
    ~ wantsDifferentWineType = false
- else:
    ~ currentWineColour = LIST_RANDOM(WineColours)
    ~ WineColours -= currentWineColour
}

{LIST_COUNT(WineColours) > 0:
{<i>Sur bien!</i> The vending machine vibrates gently, then ends with a sudden record scratch. The static returns.|Another judder and hum from the machine.}

{A small hatch opens, revealing a spout not unlike an automatic coffee machine. A scratched |And another} plastic {wine glass falls down from above, and as teeters in place, {currentWineColour} wine gushes out of the spout to fill it.| glass precariously drops. This time, {currentWineColour} wine fills it.} #audio_ID_9_Jenyth

<i>{Now, here is something|And here, this bev-vér-age is|I am certain that this time, this will be} very special: <>
}</i><>
{
- currentWineColour == red && LIST_COUNT(RedWineTypes) > 0:
    ~ currentWineType = LIST_RANDOM(RedWineTypes)
    ~ RedWineTypes -= currentWineType
    <i>a {nameOfThing(currentWineType)}.</i> <>

- currentWineColour  == white && LIST_COUNT(WhiteWineTypes) > 0:
    ~ currentWineType = LIST_RANDOM(WhiteWineTypes)
    ~ WhiteWineTypes -= currentWineType
    <i>a {nameOfThing(currentWineType)}.</i> <>

- currentWineColour == orange && LIST_COUNT(OrangeWineTypes) > 0:
    ~ currentWineType = LIST_RANDOM(OrangeWineTypes)
    ~ OrangeWineTypes -= currentWineType
    <i>a {nameOfThing(currentWineType)}.</i> <>

- currentWineColour == silver && LIST_COUNT(SilverWineTypes) > 0:
    ~ currentWineType = LIST_RANDOM(SilverWineTypes)
    ~ SilverWineTypes -= currentWineType
    <i>a {nameOfThing(currentWineType)}.</i> <>
- else:
~ likesWine = false
The voice has gained a new quality: as if you can hear the sweat running down its brow. <i>Mais, my dear cus-de-mér... we 'ave no other types of wine.</i>
}

{likesWine:
    <i>Grown {nameOfThing(LIST_RANDOM(LIST_ALL(RegionAdverbs)))} in the {nameOfThing(LIST_RANDOM(LIST_ALL(RegionDescriptors)))} region of {nameOfThing(LIST_RANDOM(LIST_ALL(places)))}, this vintage has been aged in {nameOfThing(LIST_RANDOM(BarrelAdjectives))} barrels for {nameOfThing(LIST_RANDOM(NumberOfYears))} years. </i>
}

*{currentWineColour == silver || currentWineColour == orange}[What even... is {currentWineColour} wine?]
    {
    - currentWineColour == silver:
        <i>Ah, that is one of our</i> newer... <i> new world wines.</i> The voice offers no further explanation.
    - currentWineColour == orange:
        <i>I...</i> The voice sounds genuinely perplexed. <i>I thought this dimension had orange wine. Maybe you've just never had any?</i> #audio_ID_13_Jenyth
        
    }
    Do you want this glass of wine, or not?
    ++No, {currentWineColour} wine sounds weird.
    ~ wantsDifferentWineColour = false
    -> Reorder_Wine
    ++No, but you'd try a different type of {currentWineColour} wine.
    ~ wantsDifferentWineType = true
    -> AskForDifferentWineType
    ++Hell yeah, you'll have this {currentWineColour} wine, whatever it is.
    <i>Excellent!</i> The voice awaits eagerly as you take a sip.
    -> Taste_Wine
+{likesWine}You bring the glass to your lips.
->Taste_Wine
+{likesWine}{!askedForDifferentTypeOfWine}But you don't like {currentWineColour} wine.
~ wantsDifferentWineColour = true 
->Reorder_Wine
+{likesWine}{askedForDifferentTypeOfWine}On second thoughts, you don't like {currentWineColour} wine.
~ wantsDifferentWineColour = true 
->Reorder_Wine
+{likesWine}Actually... you would like to try a different type of {currentWineColour} wine.
~ wantsDifferentWineType = true
-> AskForDifferentWineType
+{!likesWine}Maybe you just don't like wine. Time to move on.
->Exit_Button

= AskForDifferentWineType
~ askedForDifferentTypeOfWine = true
{
    - (currentWineColour == red && LIST_COUNT(RedWineTypes) > 0) || (currentWineColour == white && LIST_COUNT(WhiteWineTypes) > 0) || (currentWineColour == orange && LIST_COUNT(OrangeWineTypes) > 0) || (currentWineColour == silver && LIST_COUNT(SilverWineTypes) > 0):
        <i>Mais of course!</i>
        ++ Excellent.
        -> Reorder_Wine
    - else:
        ~ ranOutOfWineTypes = true
        <i>Ah... oh... oh, non. We 'ave no more variations of {currentWineColour} wine.</i>
        ++ A shame. Try something else.
        -> Reorder_Wine
        
        ++ No. You're done with wine.
        -> Exit_Button
}

=Reorder_Wine
// to do: add in some variation depending on if reordering because doesn't like colour or doesn't like type of wine

{
    - wantsDifferentWineColour == true:
    {A nervous chortle. <i>Le cus-de-mér is always right. If you please, just throw that, uh...</i>|Je suis</i> so <i>sorry, my dear cus-dé-mer: please, throw that|Once again, I can only apologise: fling that} {nameOfThing(LIST_RANDOM(LIST_ALL(NegativeWineNouns)))} <i> on le floor. {Where it belongs.</i>|} #audio_ID_12_Jenyth
    - wantsDifferentWineType == false:
        <i>Ah, mais of course!</i>
    - ranOutOfWineTypes == true:
        ~ wantsDifferentWineType = true
        ~ wantsDifferentWineColour = false
}
-> Order_Wine

=Taste_Wine
~ currentWinesTasted++

// Later, if I want to make it so that all the adjectives are unique (or at least comment if they are repeated across wines), I can copy the below in order to record whether they have been chosen or not. Then, I can run if statement and check whether the noun is present in the list.
~ temp firstNoteNoun = ""
~ firstNoteNoun = LIST_RANDOM(NotesNoun)
~ NotesNoun -= firstNoteNoun

~ temp secondNoteNoun = ""
~ secondNoteNoun = LIST_RANDOM(NotesNoun)
~ NotesNoun -= secondNoteNoun

~ temp firstTanninsAdjective = ""
~ firstTanninsAdjective = LIST_RANDOM(TanninsAdjectives)
~ TanninsAdjectives -= firstTanninsAdjective

~ temp secondTanninsAdjective = ""
~ secondTanninsAdjective = LIST_RANDOM(TanninsAdjectives)
~ TanninsAdjectives -= secondTanninsAdjective

~ temp firstFlavourAdjective = ""
~ firstFlavourAdjective = LIST_RANDOM(FlavourAdjectives)
~ FlavourAdjectives -= firstFlavourAdjective

~ temp secondFlavourAdjective = ""
~ secondFlavourAdjective = LIST_RANDOM(FlavourAdjectives)
~ FlavourAdjectives -= secondFlavourAdjective

Hmm... how would you describe this? Notes of... {nameOfThing(firstNoteNoun)}, and {nameOfThing(secondNoteNoun)}. You might say the body feels {LIST_RANDOM(LIST_ALL(BodyAdjectives))}. #audio_ID_16_Jenyth

As it sits on your palate, it develops a new flavour. Something {firstFlavourAdjective}. Then, {secondFlavourAdjective}.

<i>Ahhh... my dear cus-de-mér, 'ow are you liking your wine? The tannins, they are delicious, no?</i>
+[They feel {firstTanninsAdjective}.]
    ->WineVerdict
+[You would say they're {secondTanninsAdjective}.]
    ->WineVerdict
    
=WineVerdict
<i>Ahh, I see...</i> You hear a pencil scribbling on paper. <i>And... your verdict? Does this wine live up to your expectations?</i>
#audio_ID_17_Jenyth

+You love it.
    
    Over the speaker, you hear something new. A faint French horn, tooting out a victory tune.
    The voice is breathless, ecstatic, sharing in your delight. You swear you can hear the clapping of its hands. <i>Oh, bloody marvellous!</i> #audio_ID_18_Jenyth
    
    It seems, however, to suddenly catch itself after this outburst. <i>Uh... I mean... My dear cus-dé-mer, I am </i>so <i> glad to 'ear it!</i> The French accent returns, dripping off every word.
+You think, eh.
    <i>Interessent...</i> You hear more scribbling, as the voice mutters under its breath. <i>Distinctly... av-ér-age... alors...</i> #audio_ID_20_Jenyth
+You had been waiting this whole time to spit it out.
    <i>Oh...</i> The voice has the distinct quality of someone looking at a squished insect on a dinner plate. <i>Ah, no. I knew we should have provided disposable spitoons as well...</i> #audio_ID_19_Jenyth

-
{currentWinesTasted < 3:
    <i>So...</i> The voice is back to its soft, but business-like tone. <i>Would you 'ave another?</i>
    +[Yes, try another wine.] You nod assent. And somehow, the voice sees you.
    ->Reorder_Wine
    +No. Time to line your stomach with something else.
    ->Exit_Button
- else:
    <i>My dear cus-de-mér, I would love to offer you another bev-ér-age, mais... the legal limit for this con-trap-tion is three wines.</i> #audio_ID_13_Jenyth
    +You suppress a hiccup. Perhaps it's good you're stopping here.
    ->Exit_Button
    +You feel totally fine, but whatever.
    ->Exit_Button
    +You could have had <i>twenty</i> more wines: what does this stupid voice know?!
    ->Exit_Button
}
=Exit_Button
~ VendingMachineInteraction++
{
- voiceKickedPlayerOut == true:
    <i>Non... ah non...</i> You hear a chair creak, as if the voice is leaning away from the microphone. <i>Non, je ne able pas to 'ear you... goodbye, my dear cus-de-mér...</i> #audio_ID_21_Jenyth
- currentWinesTasted > 0:
    The voice seems to sense your eyes drifting to other buttons. <i>Ah, I see you are leaving... please, uh, consider leaving a review of the wines you 'ave enjoyed on our webs-</i> #audio_ID_22_Jenyth
-else:
    The voice seems to sense your eyes drifting to other buttons. <i>Ah, o-kay, c'est... fine, mais, I do get paid by the number of reviews on our website, so please do-</i> #audio_ID_22_Jenyth
}
#TODO make this part a new scene so can play a record scratch at the start of it.
A pop, static, then a click. Silence. <>
{voiceKickedPlayerOut:The button is now unresponsive. }

The voice is gone. #audio_ID_23_Jenyth

->Vending_Machine_Entrance

=== function nameOfThing(what)
{ what:
    - savignonBlanc: savignon blanc
    - ancientForest: ancient forest
    - greatPlains: great plains
    - cabernetSauvignon: cabernet sauvignon
    - goûtDeGirofle: goût de girofle
    - pinotÉtoilé: pinot étoilé
    - corkedRubbish: corked rubbish
    - rotgut: rot gut
    - ancientForest: ancientForest
    - greatPlains: great plains
    - surrey: Surrey
    - moon: a tiny lunar satellite
    - newKensington: New Kensington
    - cave: the Umberhills
    - cherryWood: cherry wood
    - notSure: ...</i> The voice pauses. <i>Actually, I'm not sure for how many
    - unfathomableNumber: an unfathomable number of
    - blackPepper: black pepper
    - ripeBerries: ripe berries
    - horseSweat: horse sweat
    - else: {what}
}

===Fautical_Button===
The Empty Wrapper Company sounds like it should have gone bankrupt a long time ago. Who would purchase nothing? But then again, you were drawn to it for some reason...

You eye the dull red wrapper, and read the only thing printed on it: "It's not what you expect, but it's what you need."

*[I wouldn't expect a million pounds but it's certainly what I need. Hit me up.]
You push the button. The machine makes no noise and doesn't appear to disperse anything. For a moment you think you've been scammed, and wish you'd grabbed your phone to record the injustice. You're raising your foot to try to kick the machine into life, but as you look down you see the empty wrapper has appeared in the pick-up-box.
    **[Kick the machine anyway.]
    You accomplish nothing but a stubbed toe.
        ***[Pick up the empty wrapper whilst wincing.]
    ->empty_wrapper
    **[Pick up the empty wrapper.]
    ->empty_wrapper


*[That sounds dodgy. I don't need anything.]
->Vending_Machine_Entrance

===empty_wrapper====

You pick up the litle wrapper and press the foil between your thumb and forefinger. It crinkles pathetically. Definitely empty. You suppose you've gotten what you asked for. You wonder if it's even worth opening or just tossing into the nearest recycling bin.

*[A million pounds, a million pounds, a million pounds!]
    You rip it open like your mother taught you. ->confectionery
*[No. This is some seriously bad mojo.]
    text again ->Vending_Machine_Entrance

===confectionery===


VAR choice = 0
~ choice = RANDOM(1,1)

//whilst testing adjust the random to what you need, but remember to change it back!

{ choice:
-1: ->hobnob
-2: ->teacake
-3: ->gummy_worm
}

===hobnob===
<> To your astonishment, a humble chocolate hobnob somehow falls out of the tiny wrapper. You take it in for a moment. Ah, the hobnob. The superior cousin to the digestive, argue with the wall. It looks perfectly ordinary. You can't imagine it really belongs here. I mean, it was a fun party trick, it appearing from nowhere, but surely it's just, y'know, a hobnob?

*[Consume that oaty chocolatey goodness.]

    It crumbles over your tongue. Mmm, you haven't had one of these in... how long? You can't seem to remember. Oh well. It's gone before you can recall. But so are you.
    
    **[What the hell?]
    **[I'm one with nothing.]
    
- And then, after some time, or no time at all, you're back. But not in front of the vending machine. You breathe in cool, salty air and try to stand up straight. You lose your balance immediately.

*[Brace for impact.]
*[Embrace the impact.]

-"Woah, there!" A rough voice cries out. "Yer ain't got yer spacelegs! Don' try standin' up now!"

It catches you in its many arms and plops you down on a squishy seat. Your head is spinning. A squishy seat isn't exactly what you need right now. Your saviour is grinning down at you, a rather purple-looking thing, humanoid but definitely not human.

"If yer want to explore, look ou' the window!" it laughs. "Got 'em just fer people like you!"

*["People like me?"]
    "Yer landlubbers! ->space_legs

*["What's out the window?"]
   "Space! ->space_legs

*["Wait - spacelegs?"]
    "Like sealegs but fer space! ->space_legs
    
===space_legs===

<> Ar, it takes a while ter develop the stomach ter stand up on a fisherthing's ricke'y ole vessel!"

You rub your temples. It seems The Empty Wrapper Company has a place in the market after all. For those that need some mental. You have to admit, it's not what you expected. But did you really need this, instant teleportation to a fishing boat in space?

*["What's even out here to fish?"]
    The Fisherthing frowns at you.
"If yer know where ter look, landlubber, yer can find anythin' and everythin' ou' here. Though yer won't be here fer long. Yer should make the mos' of it."
    **["What sort of anything and everything?"]
    "Well, we're headin' into an asteroid field, good place fer mini spacemites. Makes grea' food for larger gol' whales... though they're a protected species! Har! Imagine that, landlubber! As if a gol' whale needs protectin!
        ***["I can only imagine. Are we going to see one?"]
        ->golden_whale
        
    **["How long will I be here?"]
    The Fisherthing checks many watches on many hands.
    "It depends. Their slogan, ''it's wha' yer need'' or somethin' like tha,' means tha' until yer get wha' yer need ou' of this, yer stuck here."
        ***["So... where are we going? That might help."]
        "We're heain' to an asteroid field." The Fisherthing said. "And ar, if I'm righ'... I thin' it migh' be jus' the thin' you need."
            ****[Nod politely.] ->golden_whale

*["Have you heard of The Empty Wrapper Company?]
The Fisherthing nods.
"Aye, landlubber. Everyone has. If somethin' strange 'appens, yer can always bet it was them tha' had a hand in it. So no one questions anythin.' Like righ' now. I din' question your sudden appearance."
    **["Do strange things happen often then?"]
    The Fisherthing laughs a haggered laugh.
    "All the time! This company's bigger than yer or me or mos' things in this mul'iverse! In sheer terms of bein' the cause of weird things happenin,' they're up there!"
        ***["And so they want to take me with you. Why?]
        ->golden_whale
    
    **["I'm questioning your appearance."]
    You do not quite know what made you say it. Its purple body and many arms shudder with a sudden rage. It occurs to you that you do not know anything about its species. You do not even know its name. You cannot assume anything about it. What if what you'd just said was the equivalent of murder to it?
        ***[Apologise profusely like the good human you are]
        You don't have a chance to get the words out before it rears its arms in what can only be assumed - though you just learned you can't assume anything - an attacking stance. ->running
        ***[OH GODS RUN]
        ->running

*[Scream really really really really loudly.]
The Fisherthing jumps.
"Bijeezus, landlubber! Wha're you playin' at? Did yer not know wha' you ate?"
You are perfectly aware of what you ate. But you're screaming, and now you've started you can't stop. Your heart rate skyrockets. Your throat burns. The Fisherthing seems unsure of what to do, first curling its arms around itself in some sort of comfort against your dreadful noise, then tries to comfort you, but at least ten alien arms wrapping around you is not what you'd call comforting.
    **["AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"]
->scrunch_the_wrapper

===running===
You book it. You rise from the squishy chair, which does a fantastially inconvenient job of making that a challenge, and head for the door to the open deck. You wobble and stumble out and collapse onto the wood. Damned spacelegs. You have just a moment to appreciate the beauty of it, the impossibility of it, of looking straight out into the void with no barrier of any kind in your way. Breathtaking. Then the Fisherthing enters your vision. You're tempted to cry out, "just one more moment!" But then you're gone.

*[Did it throw me overboard?]
->scrunch_the_wrapper
*[Did it give me a few moments?]
->scrunch_the_wrapper
*[Scream really really really really REALLY loudly.]
->scrunch_the_wrapper

===scrunch_the_wrapper===
You blink and the machine is back in front of you. The wrapper is still in your hand. You turn it over as you try to process what just happened. In so doing, you catch an eye of a fine print.
'The Empty Wrapper Company assures its customers no harm can possibly come to them during their transport. This does not affect your statutory rights.'
*[Scrunch the empty wrapper into a ball.]
->Vending_Machine_Entrance
*[Treasure it forever.]
->Vending_Machine_Entrance

===golden_whale===
"If we're lucky, we'll collec' up the mini spacemites, cast our rods over por' or starbord, and catch ourselves a gol' whale!" The Fisherthing punches the air with a few arms. "Well, I say catch, the gol' whale won' have tha', but its a manner of speakin.' I reckon tha'll get yer home in a jiffy."

Home. That sounds nice. But on the other hand, this is pretty fun now that you don't think you're going to die at any moment.

*["The gold whale can send me home?"]
    "Not quite, landlubber!" The Fisherthing laughs. "I don' know how it works, but tha' company needs yer ter feel somethin' brand-new, or... somethin' that changes yer in some way. And we're nearly 'ere. Let's 'ead ter deck."
    **[Head out to deck.]
    ->fishing_time
*["Brilliant, where's my rod?"]
    The Fisherthing grins at your eagerness. You probably represent all of humanity to it, so it's a good thing you're leaving such a good impression. 
    "I've go' one rod on each side o' my ship's deck. C'mere, take yer pick, but don't take it lightly."
    **[Examine the fishing rods on deck.]
    ->fishing_time
*[No, its completely lying and I have no choice but to take matters into my own two hands.]
    Despite the Fisherthing being as nice as one could ever possibly be, you are a humanist through and through. You just didn't know that until now. And you can't sit on your prejudices any longer.
    **[Aliens that aren't like me are strange. I want out. Goodbye.]
    ->running
    
===fishing_time===

You had to admit, you were a little nervous stepping out onto the open deck, with no walls or fences or anything between you and the void, but you can somehow breathe here. And experience the same smells as you would on the ocean. On a normal ship, you'd be heading outside to the open ocean, the wind and salty spray in your face. You weren't expecting to feel this in the middle of boundless space, but it's here anyway. Maybe it's your brain playing tricks on you, an illusion of some kind. Trying to piece together what it knows despite being in such an unknown situation. You wobble as you take those humiliating steps. Even the ship rocks like it would riding the waves. Bizzare.

The Fisherthing is carrying a lot in its arms, the squishy chair, thankfully, and a lot of buckets. They look quite normal, except the top appears sealed with an almost completely see-through film.

"It's the same thin' as what's roun' my ship." The Fisherthing explained as it sees you looking. "A bubble, if yer will. Livin' things can pass through no prob'em, but only one way."

The large fishing rod on the port side is silver, and sounds like it is humming slightly. The starboard side boasts smaller ruby rod, sparkling and smelling of roses. Which one has the best chance of pulling a golden whale?

*[The silver one, of course. Magpies are attracted to silver back on Earth. A golden whale isn't a magpie, of course, but... it's a pretty rod. Huh. Maybe you're a magpie.]
->silver_rod_path

*[The ruby rod smells like flowers, surely a golden whale couldn't say no to that? I mean, it's not a bee, but it does smell good. Huh. Maybe you're a bee.]
->ruby_rod_path

===silver_rod_path===

The Fisherthing plops down the squishy chair on the port side. You pick up the silver fishing rod, cast the bobber out, and wait. And wait. Could there really be tiny mites here in a place so hostile? You look out into space, but there's much to see other than asteroids. Just some twinkling lights in the blackness. You shiver. It's not cold; you just feel very, very small, and very, very alone.

*[Make small talk to pass the time. You're not that alone, after all.]
->Small_talk
*[Whistle a tune. Maybe the Fisherthing will like it.]
->Whistle_tune

===Small_talk===
You ask the Fisherthing its name. You can't keep calling it that, surely. It seems... rude, even if it called itself that first.

"I'm Eronon Wentith Coleslaw. Me ship? The EWC."

That doesn't exactly roll off the tongue. Not like the Empty Wrapper Company. Oh well.

"Go' anythin?" Eronon asks. "Yer won' feel 'em bite, bes' to reel in every few minutes."

*[Reel in the rod.]
->mites
*[Nah, I'll give it a minute.]
->waiting
*[Hang on a sec-]
->whale_spotted

===waiting===
You wait.
*[Keep waiting.]
You keep waiting.
**[I'm patient.]
You certainly are.
***[I'm the most patient person alive.]
This isn't going to go anywhere.
****[Yes it is.]
Alrighty.
*****[...]
->whale_spotted

===mites===
You squint at the bobber. They look like a bunch of little moving dots, the mites. Eronon cheers.

"Cas' 'em back overboard! You've got hundreds! The gol' whale will love it! Believe in it!"

*[Believe in it.]
->whale_spotted

===Whistle_tune===
You whistle a tune. Its simple and makes you feel warm inside. It reminds you of home. Then the Fisherthing joins you, and it doesn't feel like home anymore but it still feels warm. But there's something missing.
*[Ask the Fisherthing's name.]
->Small_talk

===whale_spotted===

"THARRRR she is!" Eronon shouts. "A gol' whale!" 
You jump, your train of thought totally derailed. But there it is, golden and gleaming, right in front of you! You picked the right side, but Eronon isn't disappointed. On the contrary, it is absolutely ecstatic for you. The whale glides smoothly over the ship and lets out a low rumble. You don't speak whale, and neither does Eronon, but the meaning is clear to you both. Its eyes are deep set and intelligent. It is saying hello.

You look back at Eronon, with words on the tip of your tongue. Sharing this moment with a total stranger has definitely changed you. And now, you aren't sure you want to leave. You can feel the taste of the hobnob on your tongue again, and you're sure its a sign you're returning.

*[Thank you, Eronon.]
->save_the_wrapper
*[All this from an empty wrapper.]
->save_the_wrapper
*[This was better than a million pounds.]
->save_the_wrapper
*[Wait - wait - are you the Empty Wrapper Company?]
->save_the_wrapper

===save_the_wrapper===
You blink and the machine is back in front of you. The wrapper is still in your hand. You turn it over as you try to process what just happened. Whatever it was, you're a changed person now.
*[I wonder what else is in this machine?]
->Vending_Machine_Entrance

===ruby_rod_path===

The Fisherthing plops down the squishy chair on the starboard side. You pick up the ruby fishing rod, cast the bobber out, and wait. And wait. Could there really be tiny mites here in a place so hostile? You look out into space, but there's much to see other than asteroids. Just some twinkling lights in the blackness. You shiver. It's not cold; you just feel very, very small, and very, very alone.

*[Make small talk to pass the time. You're not that alone, after all.]
->Small_talk
*[Whistle a tune. Maybe the Fisherthing will like it.]
->Whistle_tune
->END

//and that's just one path... that was, what, 300 lines? I have two more to do! That took me like four/five hours lmao.

===teacake===
delicious
->END

===gummy_worm===
squiggly
->END

