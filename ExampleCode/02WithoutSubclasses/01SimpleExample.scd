Creature addActions: (
	sin1: {
		~this release: 0.1;
		~this add: { SinOsc.ar(400 rrand: 1000).dup / 10 }.play;
	},
	pft: {
		~this release: 0.5;
		
		~this add: {
			PinkNoise.ar(Decay.kr(Impulse.kr(5))).dup / 10
		}.play;
	}
);
//:
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
