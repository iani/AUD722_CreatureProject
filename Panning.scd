
var src;
src = SinOsc.ar(300);

Pan2.ar(src, pos, level)
pos: from -1 to 1.

// Note: Configure your server for numChans audio output busses first!
Server.default.options.numOutputBusChannels = 52;


//
//
PanAz.ar(numChans, src, pos, level, width, orientation)
pos: from -1 to 1.

Server.default.scope;
//:
a = { | pos = 0, level = 1, width = 1, orientation = 0 |
	var src;
	src = PinkNoise.ar(0.5) * Decay.kr(Impulse.kr(5), 0.5);
	PanAz.ar(8, src, pos, level, width, orientation);
}.play;
//:
a.set(\pos, 0.2);
a.set(\pos, 0.1);
a.set(\pos, 0.3);
a.set(\pos, 0.5);
a.set(\width, 3);
a.set(\width, 2);
//: move about on a circle
a = { | level = 1, width = 2, orientation = 0 |
	var src, pos;
	pos = LFSaw.kr(1/5).range(-1, 1);
	src = PinkNoise.ar(0.5) * Decay.kr(Impulse.kr(5), 0.5);
	PanAz.ar(8, src, pos, level, width, orientation);
}.play;

//: Move about smoothly at random
a = { | level = 1, width = 2, orientation = 0 |
	var src, pos;
	pos = LFNoise1.kr(1/5).range(-1, 1);
	src = PinkNoise.ar(0.5) * Decay.kr(Impulse.kr(5), 0.5);
	PanAz.ar(8, src, pos, level, width, orientation);
}.play;
