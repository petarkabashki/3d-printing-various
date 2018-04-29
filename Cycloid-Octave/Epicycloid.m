function retval = Epicycloid (R = 1, r1 = 1, d1= 0, c = 6, n = 60, fmt = 'm')

  clf();
  k1 = R / r1;
  t = linspace(0, c*2*pi, c*n);
  x = r1*(k1+1)*cos(t) - d1*cos((k1+1)*t);
  y = r1*(k1+1)*sin(t) - d1*sin((k1+1)*t);
  v = [x;y];
  retval = v;
  
  plot(x,y,fmt, "linewidth", 1);
endfunction
