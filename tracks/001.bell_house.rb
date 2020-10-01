# bell house by marc charton

live_loop :reverse do
  with_fx :reverb, mix: 0.7 do
    sample :perc_bell, rate: rrand(-10, -5)
    sleep rrand(0.2,1)
  end
end

live_loop :diner_time  do
  with_fx :reverb, mix: 0.7 do
    sample :perc_bell, rate: rrand(0.5, 2)
    sleep rrand(0.2,2)
  end
end

live_loop :spec_bell  do
  sample :perc_bell2, rate: rrand(1, 2)
  sleep rrand(1,2)
end

live_loop :acid_mall do
  sample :perc_bell2, rate: rrand(0, 0.5)
  sleep rrand(2,5)
end
