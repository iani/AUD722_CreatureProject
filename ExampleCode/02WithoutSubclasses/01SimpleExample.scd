Creature addActions: (
	sin1: {
		~this release: 4.1;
		~this add: { SinOsc.ar(400 rrand: 1000).dup / 10 }.play;
	},
	pft: {
		~this release: 2.1;
		
		~this add: {
			PinkNoise.ar(Decay.kr(Impulse.kr(5))).dup / 10
		}.play;
	}
);
//:
EvoLab.play(
	[Creature],
	[
		sin1: 2.5,
		pft: 4
	],
	5;
);
