Creature.chain([\tsk]);
Creature.chain(Pn(\tsk, 3));

Creature.chain([\ping]);
Creature.chain([\ping, \tsk]);
Creature.chain(Pseq([\ping, \tsk], 3));
Creature.atplay([ping: 0.1, tsk: 0.5, ping: 0.2] ! 20);
Creature.pb([\ping, \tsk], [0.1, 0.2, 0.1], 5);

Creature.defaults;
//:--------------------------------------------------:
// Testing all pattern play methods - in order from direct to indirect:
// chain: direct
// pbindPlay : direct
// pb -> pbindPlay
// play -> pbindPlay
// atPlay -> play -> pbindPlay
//: 1 chain
Creature.chain(Pseq([\ping, \tsk], 3));
//: 2 pbindPlay
Creature.pbindPlay(Pseq([\ping, \tsk], inf), Pwhite(0.1, 1, inf));
Creature.pbindPlay(Pseq([\ping, \tsk], inf), Pseq([0.1, 0.2], inf));
Creature.pbindPlay(Prand([\ping, \tsk], inf), Pwhite(0.01, 0.1, inf));
Creature.pbindPlay(([\ping, \tsk] ! 10).flat, [0.3, 0.3, 0.6]/3 ! 10);
Creature.pb(Pseq([\ping, \tsk], inf), Pwhite(0.1, 1, inf));
Creature.pb(Prand([\ping, \tsk], inf), Pwhite(0.01, 0.1, inf));
Creature.pb(Pseq([\ping, \tsk], inf), Pseq([0.3, 0.3, 0.6] / 2, inf)); // tresillo
// Skip Pseq
Creature.pb(([\ping, \tsk] ! 10).flat, [0.3, 0.3, 0.6]/2 ! 10);
//: 3. play 
Creature.play(Pseq([\ping, \tsk], inf), Pseq([0.3, 0.3, 0.6] / 2, inf)); // tresillo
Creature.play(([\ping, \tsk] ! 10).flat, ([0.3, 0.3, 0.6]/3 ! 10).flat);
//: 4. atplay
Creature.atplay([ping: 0.3, tsk: 1.5, ping: 0.1] ! 20);


//------------------------------------------------------------ 
// CAREFUL:
// note - nested patterns get stuck at the first encounter:
Creature.atplay([tsk: Pseq([0.1, 0.2, 0.1], inf), ping: 5] ! 20); // not as intended
Creature.atplay([tsk: 0.1, ping: 1.5] ! 20); // not as intended
// reviewing this without !
Creature.atplay([ping: 0.3, tsk: 1.5, ping: Pseq([0.1, 0.8], inf)]);
Creature.atplay([ping: Pwhite(0.01, 0.2, inf), tsk: 1.5, ping: 0.1] ! 20);