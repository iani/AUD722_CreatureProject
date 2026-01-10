// In this file we define new actions for the default Creature.
// Note; the default Creature is an instance of Creature.
// When we run Creature.addActions, these actions are added
// to the default instance.
// We can also create our own different instances and add different
// actions to different instances. 
// We do not need to define any subclasses for Creature.
//: STEP 1: DEFINE THE ACTIONS FOR DEFAULT CREATURE
Creature addActions: (
	sin1: { // action sin1
		~this release: 0.1;
		~this add: { SinOsc.ar(400 rrand: 1000).dup / 10 }.play;
	},
	pft: { // action pft
		~this release: 0.5;
		
		~this add: {
			PinkNoise.ar(Decay.kr(Impulse.kr(5))).dup / 10
		}.play;
	}
);
//: STEP 2: PLAY AN EvoLab simulation with the above actions.
EvoLab.play(
	[Creature],
	[
		sin1: 0.5,
		pft: 1.4
	],
	5;
);
//:
Creature release: 2;
