import graph;
defaultpen(1.25);

size(300,150,IgnoreAspect);
scale(Linear,Linear);

xlimits(0,1);
ylimits(0,1);

int N=100;
real tmax=3.0;
real[] t,f;

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N;

  if (t[i] < 0) {f[i] = 0.0;} 
  else if (t[i] < 1) {f[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f[i] = 0.5*(3-t[i])^2;}
  else {f[i] = 0.0;}

}

draw(graph(t,f),black);

xaxis("$t$",BottomTop,LeftTicks(3));
yaxis("$F_2$",LeftRight);

xequals(1,dotted);
xequals(2,dotted);