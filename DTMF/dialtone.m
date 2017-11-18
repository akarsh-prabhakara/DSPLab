% Demonstrate how dial tones are generated on landlines / mobiles
% Driver program
% Input is a string of numbers, the intended sample frequency of the output,
% the time T in seconds for which you want each number to be played for
% Output g is an array which can be played from within Matlab using - sound(g, Fs)

function g = dialtone(n, Fs, T)

num = length(n);
gap = zeros(1,50);

g = [];
for i = 1:num
    temp = generate(str2num(n(i)), Fs, T);
    g = horzcat(g,temp,gap);
end

end
