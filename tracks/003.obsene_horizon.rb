#!/usr/bin/ruby
# @Author: OMAO
# @Date:   2019-05-06 22:43:54
# @Last Modified by:   OMAO
# @Last Modified time: 2019-05-06 23:18:26
# obsene horizon by marc charton

live_loop :waves do
  with_fx :reverb, mix: 0.8 do
    loop do
      s = synth [:bnoise, :cnoise, :gnoise].choose,
        amp: rrand(0.1, 0.7),
        attack: rrand(0.1,0.4),
        sustain: 0,
        release: 2,
        cutoff_slide: 2,
        cutoff: rrand(30, 60),
        pan: -1,
        pan_slide: 2,
        amp: 1

      control s, pan: 1, cutoff: 100
      sleep rrand(2, 3)
    end
  end
end


live_loop :bass do
  with_fx :reverb, mix: 0.6 do
    use_synth :blade
    2.times do
      play :e2, release: 5
      play :e1, release: 5
      sleep 5
    end
    2.times do
      play :c2, release: 5
      play :c1, release: 5
      sleep 5.25
    end
    2.times do
      play :b1, release: 5
      play :b0, release: 5
      sleep 4.75
    end
    2.times do
      play :g1, release: 5
      play :g0, release: 5
      sleep 4
    end

  end
end


live_loop :reverse do
  with_fx :reverb, mix: 0.7 do
    sample :perc_bell, rate: rrand(-10, -5)
    sleep rrand(0.2,1)
  end
end


live_loop :acid_mall do
  test = sample :perc_bell2,
    rate: rrand(0.3, 0.5),
    amp: rrand(0.4, 0.8),
    amp_slide: rrand(0, 2),
    pan: rrand(-1, 1),
    pan_slide: rrand(0, 2)

  control test,
    amp: rrand(0.4, 1),
    pan: 0
  sleep rrand(2,5)
end


live_loop :chord do
  with_fx :wobble, phase: 5, wave: 3, cutoff_min: 100, cutoff_max: 129 do
    use_synth :dark_ambience
    play :b5, attack: 2, sustain: 5, release: 2, amp: rrand(0.4,1), pan: rrand(-1, 1)
    play :c5, attack: 1, sustain: 4, release: 3, amp: rrand(0.4,1), pan: rrand(-1, 1)
    play :e5, attack: 3, sustain: 3, release: 2, amp: rrand(0.4,1), pan: rrand(-1, 1)
    sleep 6
  end
end
