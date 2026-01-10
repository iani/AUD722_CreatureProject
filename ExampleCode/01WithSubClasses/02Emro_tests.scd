// TO PLAY THIS EXAMPLE, YOU MUST HAVE A CLASS
// Emro, DEFINED AS SUBCLASS OF Creature, AND ALSO DEFINING THE METHODS
// day, night (and whatever other state you want to have in the environment.)
// Play the EvoLab environment with just one creature:
// Creature Emro
// And with 2 states
// state day, lasting 5 seconds
// state night, lasting 5 seconds
~task = EvoLab.play(
	[Emro],
	[
		test: 5,
		day: 5,
		night: 5
	],
	3
)
//: