% Driver program which takes input of a cell array of musical notes written in
% the Indian music style. The sound is played from within the program note
% by note. Please press enter after each note is played.

% Example -
% Playing the Arohana of Shankarabharana Raga
% play({'sa','r2','g2','m1','p','d2','n2','sa1'},16000)

% Supported notes
% sa r1b r2 g1b g2 m1 m2b p d1b d2 n1b n2 sa1 

function play(notes, Fs)

    T = Fs / 2;

    for i = 1:length(notes)
        if strcmp(notes{i},'sa')
            s = generate(1, T);
        elseif strcmp(notes{i},'r1b')
            s = generate(2, T);
        elseif strcmp(notes{i},'r2')
            s = generate(3, T);
        elseif strcmp(notes{i},'g1b')
            s = generate(4, T);
        elseif strcmp(notes{i},'g2')
            s = generate(5, T);
        elseif strcmp(notes{i},'m1' )
            s = generate(6, T);
        elseif strcmp(notes{i},'m2b')
            s = generate(7, T);
        elseif strcmp(notes{i},'p')
            s = generate(8, T);
        elseif strcmp(notes{i},'d1b')
            s = generate(9, T);
        elseif strcmp(notes{i},'d2')
            s = generate(10, T);
        elseif strcmp(notes{i},'n1b')
            s = generate(11, T);
        elseif strcmp(notes{i},'n2')
            s = generate(12, T);
        elseif strcmp(notes{i},'sa1')
            s = generate(13, T);
        end
        
        sound(s,Fs);
        pause;
    end
end