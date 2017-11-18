% Script to generate a DTMF dial tone equivalent of a number n at frequency Fs and for duration T

function g = generate(n, Fs, T)
	dtmfr = [697,770,852,941];
	dtmfc = [1209,1336,1477,1633];
    
	t = 0:1/Fs:T;
	
    if n == 0
		g = sin(2 * pi * dtmfr(4) * t) + sin( 2 * pi * dtmfc(2) * t);
	elseif n == 1
		g = sin(2 * pi * dtmfr(1) * t) + sin( 2 * pi * dtmfc(1) * t);
	elseif n == 2
		g = sin(2 * pi * dtmfr(1) * t) + sin( 2 * pi * dtmfc(2) * t);
	elseif n == 3
		g = sin(2 * pi * dtmfr(1) * t) + sin( 2 * pi * dtmfc(3) * t);
	elseif n == 4
		g = sin(2 * pi * dtmfr(2) * t) + sin( 2 * pi * dtmfc(1) * t);
	elseif n == 5
		g = sin(2 * pi * dtmfr(2) * t) + sin( 2 * pi * dtmfc(2) * t);
	elseif n == 6
		g = sin(2 * pi * dtmfr(2) * t) + sin( 2 * pi * dtmfc(3) * t);
	elseif n == 7
		g = sin(2 * pi * dtmfr(3) * t) + sin( 2 * pi * dtmfc(1) * t);
	elseif n == 8
		g = sin(2 * pi * dtmfr(3) * t) + sin( 2 * pi * dtmfc(2) * t);
	elseif n == 9
		g = sin(2 * pi * dtmfr(3) * t) + sin( 2 * pi * dtmfc(3) * t);
    end
end
