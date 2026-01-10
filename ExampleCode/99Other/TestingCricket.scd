// -------------- PART 1 Testing actions of your Creature -----------
//: Test some sound triggering methods.
//: Test a hard-coded method
Cricket.performAction(\dawn);
//: Check that new state stops the process of the previous state
Cricket.performAction(\morning);
//: Try out all remaining day states in order:
Cricket.performAction(\day);
Cricket.performAction(\noon);
Cricket.performAction(\afternoon);
Cricket.performAction(\evening);
Cricket.performAction(\night);

//: Test some soft-coded actions (from actions variable)
Cricket.performAction(\ping);
Cricket.performAction(\tsk);
//: Test all soft-coded actions (from actions variable)
{
	postln("Cricet actions are:" + Cricket.actions.keys);
	Cricket.actions keysDo: { | key |
		postln("Performing:" + key);
		Cricket performAction: key;
		1.wait;	
	}
}.fork;
//: Play cycles in the EvoLab environment, with Cricket as only creature

//: ---------- PART 2 Running the Environment with creatues and states -----------
~task = EvoLab.play(
	[Cricket], // creatures in your environment
	[           // list of states and how long each one lasts
		morning: 5,
		day: 8,
		noon: 3,
		afternoon: 4,
		evening: 3,
		night: 5
	],
	5   // number of repetitions
);
//:Stop the simulation loop task:
~task.stop;
//:Stop all sounds on all creatures in the environment:
EvoLab release: 10;

//:---- test some soft-coded states -----
~task = EvoLab.play(
	[Cricket], // creatures in your environment
	[           // list of states and how long each one lasts
		tsk: 0.15,
		ping: 0.08,
	],
	15   // number of repetitions
);
//;

