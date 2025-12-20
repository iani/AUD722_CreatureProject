// After <2025-12-20 土> this is the classto use
// for running simulations on a group of creatures.

EvoLab {
	classvar default;   // the default instance. 
	// easy testing of instance methods dawn, day, etc.
	*doesNotUnderstand { | selector ... args |
		^this.default.perform(selector, *args);
	}

	*default {
		default ?? { default = this.new };
		^default;
	}

	play { | creatures, statesDurs, repeats = 1 |
		var states, durs;
		#states, durs = statesDurs.clump(2).flop;
		^Pbind(
			\state, Pseq(states, repeats),
			\dur, Pseq(durs, repeats),
			\play, {
				creatures.asArray do: { | c | c.perform(*~state) }
			}
		).play;
	}
}