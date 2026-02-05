// Example.scd
// Minimal, step-by-step simulation script for the Creature Project.

// 1) Boot the server (only needed once per session).
s.boot;

// 2) Pick some creature classes from this repo.
~creatures = [Cricket, Girl, Emro];

// 3) Define environment states and durations (seconds).
~states = [
    dawn: 10,
    day: 15,
    dusk: 10,
    night: 20
];

// 4) Start the simulation. Repeat the cycle 3 times.
~sim = EvoLab.play(~creatures, ~states, 3);

// 5) Optional: trigger a creature state directly.
// Cricket.day;

// 6) Stop the pattern and release all creature sounds.
// ~sim.stop;
// EvoLab.release(5);
