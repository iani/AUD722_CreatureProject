~task = EvoLab.play(
	[Girl],
	[
		day: 5,
		night: 5
	],
	3
)
//:
//:
x = Synth(\mixTest, [buf: Girl.buffer.bufnum]);
x release: 3;