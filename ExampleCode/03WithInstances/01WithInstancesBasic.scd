// In this file we define new actions for the default Creature.
// Note; the default Creature is an instance of Creature.
// When we run Creature.addActions, these actions are added
// to the default instance.
// We can also create our own different instances and add different
// actions to different instances.
// !!!! HERE WE SHOW HOW TO ADD ACTIONS TO INSTANCES OF CREATURE.
// We do not need to define any subclasses for Creature.
//: STEP 1: CREATE AND STORE 2 INSTANCES
~creature1 = Creature();
~creature2 = Creature();
//: STEP 2: ADD ACTIONS TO creature1 instance.
~creature1 addActions: (
	sin1: { // action sin1
		~this release: 0.1;
		~this add: { SinOsc.ar(400).dup / 10 }.play;
	},
	pft: { // action pft
		~this release: 0.5;
		
		~this add: {
			PinkNoise.ar(Decay.kr(Impulse.kr(5))).dup / 10
		}.play;
	}
);

//: STEP 3: ADD ACTIONS TO creature2 instance.
~creature2 addActions: (
	sin1: { // action sin1
		~this release: 0.1;
		~this add: { SinOsc.ar(500).dup / 10 }.play;
	},
	pft: { // action pft
		~this release: 0.5;
		
		~this add: {
			PinkNoise.ar(Decay.kr(Impulse.kr(0.5))).dup / 10
		}.play;
	}
);
//: STEP 4: Run a simulation using the 2 creatures!
EvoLab.play(
	[~creature1, ~creature2],
	[
		sin1: 0.5,
		pft: 1.4
	],
	5;
);

