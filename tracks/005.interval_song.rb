counter = 0
chords = [
  chord(:C4, '7-9'),
  chord(:F3, 'm'), 
  chord(:Bb3, 'm7+9'),
  chord(:G3, 'm7'),
  chord(:Ab3, 'M7'),
  chord(:G3, 'm7'),
  chord(:C4, 'm'),
  chord(:B3, '+5'),
  chord(:Eb4, 'M'),
  chord(:Eb3, 'M7'),
  [:Gb3, :Bb3, :B3, :Db4],
  chord(:B3, '7'),
  chord(:E4, 'M7'),
  chord(:Eb4, 'M'),
].ring

live_loop :phrase do
  play chords[counter]
  counter = (inc counter)
  sleep 2
end

# live_loop :phrase do
#   play chord(:C4, '7-9'), release: 0.8
#   sleep 2
#   play chord(:F3, 'm'), release: 0.8
#   sleep 2
#   play chord(:Bb3, 'm7+9'), release: 0.8
#   sleep 2
#   play chord(:G3, 'm7'), release: 0.8
#   sleep 2
#   play chord(:Ab3, 'M7'), release: 0.8
#   sleep 2
#   play chord(:G3, 'm7'), release: 0.8
#   sleep 2
#   play chord(:C4, 'm'), release: 0.8
#   sleep 1
#   play chord(:B3, '+5'), release: 0.8
#   sleep 1
#   play chord(:Eb4, 'M'), release: 0.8
#   sleep 2
#   play chord(:Eb3, 'M7'), release: 0.8
#   sleep 2
#   play [:Gb3, :Bb3, :B3, :Db4], release: 0.8
#   sleep 2
#   play chord(:B3, '7'), release: 0.8
#   sleep 2
#   play chord(:E4, 'M7'), release: 0.8
#   sleep 1
#   play chord(:Eb4, 'M'), release: 0.8
#   sleep 2
# end