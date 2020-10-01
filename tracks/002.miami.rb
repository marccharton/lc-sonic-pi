# miami by marc charton

notes = (ring :E4, :Fs4, :B4, :Cs5, :D5, :Fs4, :E4, :Cs5, :B4, :Fs4, :D5, :Cs5)

live_loop :pluck do
  with_fx :reverb do
    with_fx :echo, decay: rrand(0.1, 0.8), phase: 0.125 do
      with_fx :wobble, phase: 0.125 do
        play [:e4, :g4, :d4].choose, release: 0.1, amp: 0.7, pan: rrand(-0.5, 0.5)
        sleep 0.5
      end
    end
  end
end

live_loop :arp do
  with_fx :reverb do
    play :b3, release: 0.1, amp: rrand(0,0.4), pan: rrand(-1,1)
    sleep 0.125
  end
end

live_loop :slow do
  8.times do
    play :e2, release: 0.4
    sleep 1
  end

  4.times do
    play :g2, release: 0.4
    sleep 1
  end

  4.times do
    play :b2, release: 0.4
    sleep 1
  end
end
