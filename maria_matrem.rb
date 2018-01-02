# *************
# MARIAM MATREM
#**************

dir = "/Users/mecanicoMistico/spi/mare"
toy = load_sample( dir, "praying_toypray" )
abadia = load_sample( dir, "praying_abbaye" )
duch = load_sample( dir, "praying_duch" )
mosque = load_sample( dir, "praying_mesque" )

sleep 2


with_fx :reverb, room: 0.8 do
  live_loop :mosque do
    #stop
    sample mosque
    sleep sample_duration( mosque )
  end
  
  live_loop :abadia do
    stop
    sample abadia, slice: pick, pan: [ -1, 1 ].choose
    sleep 2
  end
  
  live_loop :duch do
    stop
    sample duch, slice: pick, pan: [ -1, 1 ].choose
    sleep 2
  end
  
  live_loop :toy do
    stop
    sample toy, amp: 1.5
    sleep sample_duration( toy )
  end
end

