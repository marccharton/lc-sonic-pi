# in_thread do
#     sample :loop_amen
# end

# 8.times do
#     use_synth :fm
#     play [:C3, :C4, :Eb4, :Bb4].choose
#     sleep rrand(0.1, 0.2)
# end

# sleep 1

chord_list = [
    chord(:gb3, :minor),
    chord(:a3, :major),
    chord(:db4, :minor),
    chord(:e4, :major),
]

define :melody do 
    chord_list.each {
        |chord|
        use_synth :prophet
        play chord, attack: 1, release: 3, amp: rrand(0.1, 0.9)
        sleep 0.5
    }
end

define :bass do | notes, synth|
    use_synth synth
    play notes.choose, release: 3
end

define :theme do
    bass([:gb2, :db2], :sine)
    melody
    bass([:gb3, :db3], :mod_sine)
end

define :percussions do
    in_thread do
        16.times do 
            sample :drum_snare_soft, rate: rrand(-1, 2), amp: rrand(0.3, 1)
            sleep rrand(0.05, 0.7)
        end
    end
end

4.times do
    sample :bd_haus, amp: 1, cutoff: 80
    
    with_fx :reverb, mix: 0.7, room: 0.8 do
        percussions
        theme    
    end
    
    sleep 4
end

sleep 2