//:
{
	var b;
	b = Girl.buffer;
	TGrains.ar(
		2,               // num channels
		Impulse.kr(10),  // trigger
		b                // buffers
	)
}.play;
//:
{
	var b;
	b = Girl.buffer;
	TGrains.ar(
		2,               // num channels
		Impulse.kr(10),  // trigger
		b,               // buffers
	)
}.play;
//:
{
	var b;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(10),                    // trigger
		b,                                 // buffers
		Line.kr(1, 2, 10, doneAction: 2)   // rate
	)
}.play;
//:
{
	var b;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(10),                    // trigger
		b,                                 // buffers
		Line.kr(1, 2, 10, doneAction: 2),  // rate
		Line.kr(0, 0.5, 10)                // centerPos
	)
}.play;
//:
{
	var b, d = 10;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(10),                    // trigger
		b,                                 // buffers
		Line.kr(1, 2, d, doneAction: 2),   // rate
		Line.kr(0, b.dur / 10, d),         // centerPos
	)
}.play;
//:
{
	var b, d = 20;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(10),                    // trigger
		b,                                 // buffers
		Line.kr(1, 2, d),                  // rate
		Line.kr(0, b.dur / 10, d),         // centerPos
		XLine.kr(0.01, 2, d)		       // grain duration
	) * Env.linen(0.01, d * 1.5, 5).kr(2)
}.play;
//:
{
	var b, d = 20;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(3),                     // trigger
		b,                                 // buffers
		Line.kr(1, 2, d),                  // rate
		Line.kr(0, b.dur / 10, d),         // centerPos
		XLine.kr(0.01, 2, d)		       // grain duration
	) * Env.linen(0.01, d * 1.5, 5).kr(2)
}.play;
//:
{
	var b, d = 20;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(3),                     // trigger
		b,                                 // buffers
		Line.kr(1, 2, d) / 5,              // rate
		Line.kr(0, b.dur / 10, d),         // centerPos
		XLine.kr(0.01, 2, d)		       // grain duration
	) * Env.linen(0.01, d * 1.5, 5).kr(2)
}.play;
//:
{
	var b, d = 20;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(7),                     // trigger
		b,                                 // buffers
		LFNoise1.kr(5).range(1, 2) / 5,    // rate
		Line.kr(0, b.dur / 10, d),         // centerPos
		XLine.kr(0.01, 2, d)		       // grain duration
	) * Env.linen(0.01, d * 1.5, 5).kr(2)
}.play;
//:
{
	var b, d = 20;
	b = Girl.buffer;
	TGrains.ar(
		2,                                 // num channels
		Impulse.kr(7),                     // trigger
		b,                                 // buffers
		LFNoise1.kr(5).range(1, 2) / 5,    // rate
		Line.kr(0, b.dur / 10, d),         // centerPos
		XLine.kr(0.01, 2, d)		       // grain duration
	)
	* SinOsc.ar(LFNoise1.kr(3).range(400, 4000), 0, 1)
	* Env.linen(0.01, d * 1.5, 5).kr(2)
}.play;
//: