import graph;
defaultpen(1.25);

size(300,150,IgnoreAspect);
scale(Linear,Linear);

int N=100;
real tmax=4.0;
real[] t;
real[] f0,f1,f2,f3,f4,f5;

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N+2;
  if (t[i] < 0.0) {t[i] = 0.0;}

  if (t[i] < 0) {f5[i] = 0.0;} 
  else if (t[i] < 1) {f5[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f5[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f5[i] = 0.5*(3-t[i])^2;}
  else {f5[i] = 0.0;}

}

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N+1;
  if (t[i] < 0.0) {t[i] = 0.0;}

  if (t[i] < 0) {f4[i] = 0.0;} 
  else if (t[i] < 1) {f4[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f4[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f4[i] = 0.5*(3-t[i])^2;}
  else {f4[i] = 0.0;}

}

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N-3;
  if (t[i] < 0.0) {t[i] = 0.0;}

  if (t[i] < 0) {f3[i] = 0.0;} 
  else if (t[i] < 1) {f3[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f3[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f3[i] = 0.5*(3-t[i])^2;}
  else {f3[i] = 0.0;}

}

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N-2;
  if (t[i] < 0.0) {t[i] = 0.0;}

  if (t[i] < 0) {f2[i] = 0.0;} 
  else if (t[i] < 1) {f2[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f2[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f2[i] = 0.5*(3-t[i])^2;}
  else {f2[i] = 0.0;}

}

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N-1;
  if (t[i] < 0.0) {t[i] = 0.0;}

  if (t[i] < 0) {f1[i] = 0.0;} 
  else if (t[i] < 1) {f1[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f1[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f1[i] = 0.5*(3-t[i])^2;}
  else {f1[i] = 0.0;}

}

for(int i=0; i<=N; ++i) {

  t[i] = (tmax*i)/N-0;
  if (t[i] < 0.0) {t[i] = 0.0;}

  if (t[i] < 0) {f0[i] = 0.0;} 
  else if (t[i] < 1) {f0[i] = 0.5*t[i]^2;}
  else if (t[i] < 2) {f0[i] = 0.5*(-2*t[i]^2+6*t[i]-3);}
  else if (t[i] <= 3) {f0[i] = 0.5*(3-t[i])^2;}
  else {f0[i] = 0.0;}

}

draw(graph(t/tmax,f5),purple+dashed,"$p=1$");
draw(graph(t/tmax,f4),red+dashed,"$p=2$");
draw(graph(t/tmax,f0),blue+dashed,"$p=3$");
draw(graph(t/tmax,f1),blue,"$p=4$");
draw(graph(t/tmax,f2),red,"$p=5$");
draw(graph(t/tmax,f3),purple,"$p=6$");

xlimits(0,1);

string lab[];

lab[0] = "$r_a$";
lab[1] = "$r_b$";

real [] xs={0,1};

xaxis("$r$",BottomTop,LeftTicks(new string(real x) {return lab[(int) x];},xs));
yaxis(" ",LeftRight);

xequals(1/tmax,dotted);
xequals(2/tmax,dotted);
xequals(3/tmax,dotted);

attach(legend(invisible),(1.05,0.6));