function [song] = key_press(tune,time,harmonic,choice)
for h = 1:size(harmonic,1)
    if tune > 0.99*harmonic{h,1} && tune < 1.01*harmonic{h,1}
       mix = harmonic{h,2};
       break
    end    
end
prod = make_song(mix,tune);
song = prod(1:time*4000).*envelope_linear(time*4000,choice);