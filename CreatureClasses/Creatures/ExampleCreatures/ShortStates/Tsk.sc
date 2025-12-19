
Tsk : Creature {
 	dawn {
		this add: {
			WhiteNoise.ar(Env.perc.kr(2) * 0.1).dup
		}.play;
	}
	morning {
		this add: {
			GrayNoise.ar(Env.perc.kr(2) * 0.1).dup			
		}.play;
	}
	day {
		this add: {
			PinkNoise.ar(Env.perc.kr(2) * 0.1).dup			
		}.play;
	}
	noon {
		this add: {
			Ringz.ar(Impulse.ar(0.0001),
				Line.kr(Rand(100, 4000), Rand(200, 4000), Rand(0.1, 0.9)),
				Rand(0.02, 2), 0.1).ds
		}.play;
	}
	afternoon {
		this add: {
			Mix({
				Ringz.ar(Impulse.ar(0.0001),
					Line.kr(Rand(100, 4000), Rand(200, 4000), Rand(0.1, 0.9)),
					Rand(0.02, 2), 0.03)
			} ! 3).ds
		}.play;
	}
	evening {
		this addTask: {
			3 do: {
				this.afternoon;
				0.1.wait;
			}
		};
	}
	night {
		this add: {
			Ringz.ar(Impulse.ar(0.0001), Line.kr(100, 350, 0.1), 0.1).ds
		}.play;
	}
}