Tsk.dawn;
Tsk.morning;
Tsk.day;
Tsk.noon;
Tsk.afternoon;
Tsk.evening;
Tsk.night;


//: need debugging
Tsk.play(\evening);

//
Tsk.play(\night);
Tsk.play(\night, 0.1, 3)
Tsk.play([\day, \night], [0.1, 0.2, 0.1], 16)
//:
Tsk.pbindPlay(
	Pseq([\night], 1), 1
)