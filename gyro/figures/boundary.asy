import graph;
defaultpen(1.25);

size(300,150,IgnoreAspect);
scale(Linear,Linear);

xlimits(0,1);
ylimits(0,1);

real[] x,y;
real[] xs;
string[] lab;

int N=200;
real f=105;
real a=0.03;

for(int i=0; i<N; ++i) {
  x[i] = i/(N-1.0);
  if (x[i] < 0.2) {
    y[i] = (0.8+a*sin(f*0.2))*(x[i]/0.2)^2;
  } else if (x[i] > 0.8) { 
    y[i] = (0.8+a*sin(f*0.8))*((1-x[i])/0.2)^2;
  } else {
    y[i] = 0.8+a*sin(f*x[i]);
  } 
}

int NS=11;

for(int i=0; i<NS; ++i) {
  xs[i] = i/(NS-1.0);
  lab[i] = "";
}

lab[0] = "$r_a$";
lab[2] = "$r_a^{\rm  buffer}$";
lab[NS-3] = "$r_b^{\rm  buffer}$";
lab[NS-1] = "$r_b$";

draw(graph(x,y),black,"");

xaxis("$r$",BottomTop,LeftTicks(new string(real x) {return lab[(int) (x*(NS-1))];},xs));
yaxis("$h$",LeftRight);

xequals(0.2,dotted);
xequals(0.8,dotted);