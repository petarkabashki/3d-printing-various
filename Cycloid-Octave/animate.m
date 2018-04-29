function animate ()
#18.08:0.00005:18.17
#18.28:0.00005:18.32
  for i = 15:0.0001:15.1
    Epicycloid (R = 5 - i/7, r1 = 5 + i/7, d1 = 3, c = 100, n = 10);
    pause(0.01);
  endfor
endfunction
