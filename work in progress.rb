=begin

Play the given samples using Sonic Pi (follow the tutorial in the Class Doc).
Use section 4 Randomisation to learn how to choose random notes/samples!

YOUR TASK: Randomly play one of the 5 given samples on beat. You should have
two live loops running concurrently. STOP both live loops after 8 samples have
been played.

HINT: Use "print sample_duration [your sample here] to find out how long your samples are!

=end

intro = "Desktop/challenge_d/travis_sounds/instrumental_intro.wav""C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/mario_intro.wav"

beat ="C:/Users/kamyran_williams/Downloads/challenge_d/travis_sounds/instrumental_beat.wav"

a = "Desktop/travis_scott_sounds/straight_up.wav"
b = "Desktop/travis_scott_sounds/skrt.wav"
c = "Desktop/travis_scott_sounds/ohh.wav"
d = "Desktop/travis_scott_sounds/its_lit.wav"
e = "Desktop/travis_scott_sounds/dope.wav"
f ="C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/coin.wav"
g ="C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/jump.wav"
h ="C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/mario_beat.wav"
i ="C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/mario_intro.wav"
k ="C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/oneup.wav"
l ="C:/Users/kamyran_williams/Downloads/challenge_d/mario_sounds/pipe.wav"


live_loop:mario do
  sample choose ([intro])
  sleep 2
end
live_loop :randomness do
  sample choose([a, b, c, d, e, f, g, h, i, k])
  #sample [a, b, c, d, e].choose
  sleep 3
end

live_loop :background_beat do
  sample beat
  sleep 3.5
end


