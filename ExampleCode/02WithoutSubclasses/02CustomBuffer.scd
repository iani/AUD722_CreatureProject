~girl = Creature();
~girl.buffer = Girl.buffer;
~girl.buffer.play;
//:
~girl addActions: (
	dawn: {
		~this release: 2;
		~this add: {
			{
				(PlayBuf.ar(1, Girl.buffer,
					0.1 * BufRateScale.kr(Girl.buffer),
					1, 0, 1, 2
				) * Env.sine(3).kr(2)).dup
			}
		}.play;
	},
	day: {
		~this release: 5;
		~this add: Task({
			(1..100).normalize(1, 2.0) do: { | r |
				~this add: {
					(PlayBuf.ar(1, Girl.buffer,
						r * BufRateScale.kr(Girl.buffer),
						1, r * BufSampleRate.kr(Girl.buffer), 1, 2
					) * Env.sine(0.5).kr(2)).dup
				}.play;
				0.1.wait;
			}
		}).play;
	},
	dusk: {
		~this release: 5;
		~this add: Task({
			(1..10.rrand(100)).normalize(*({0.5.rrand(2)}!2)) do: { | r |
				~this add: {
					(PlayBuf.ar(1, Girl.buffer,
						r * BufRateScale.kr(Girl.buffer),
						1, r * BufSampleRate.kr(Girl.buffer), 1, 2
					) * Env.sine(0.5).kr(2)).dup
				}.play;
				0.05.exprand(0.5).wait;
			}
		}).play;
	},
	night: {
		~this release: 5;
		~this add: Task({
			(1..10.rrand(100)).normalize(*({0.5.rrand(2)}!2)) do: { | r |
				~this add: {
					(PlayBuf.ar(1, Girl.buffer,
						0.5.rrand(3) * BufRateScale.kr(Girl.buffer),
						1, (0.rrand(1.0)) * BufSampleRate.kr(Girl.buffer), 1, 2
					) * Env.sine(0.05 exprand: 2.5).kr(2)).dup
				}.play;
				[0.1, 0.2, 0.4].choose.wait;
			}
		}).play;
	}
);
//:
EvoLab.play(
	[~girl],
	[
		dawn: 2,
		day: 15,
		dusk: 15,
		night: 15
	],
	5;
);
//:
//
//
//: --------- Test.
 {
			{ (PlayBuf.ar(1, Girl.buffer,
				0.1 * BufRateScale.kr(Girl.buffer),
				1, 0, 1, 2
			) * Env.sine(5).kr(2))
			}
		}.play;
//:
Env.sine.plot;