// TO PLAY THIS EXAMPLE, YOU MUST HAVE A CLASS
// Girl, DEFINED AS SUBCLASS OF Creature, AND ALSO DEFINING THE METHODS
// day, night (and whatever other state you want to have in the environment.)
// Play the EvoLab environment with just one creature:
// Creature Girl
// And with 2 states
// state day, lasting 5 seconds
// state night, lasting 5 seconds
~task = EvoLab.play(
	[Girl],
	[
		day: 5,
		night: 5
	],
	3
)
//:
//: - just test code!
x = Synth(\mixTest, [buf: Girl.buffer.bufnum]);
x release: 3;