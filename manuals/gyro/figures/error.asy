import graph;

defaultpen(0.8);
pen dashed=linetype("8 4");
pen dotted=linetype("4 4");

size(300,300,IgnoreAspect);

scale(Linear,Log);

int n=66;

//---------------------------------------------
file fin=input("fluxfit.error.p").line();
real[][] a=fin.dimension(n,2);
a = transpose(a);

real[] x = a[0]/56.7;
real[] y = a[1];
  
draw(graph(x,y),blue,"Parameterized");
//---------------------------------------------

//---------------------------------------------
file fin=input("fluxfit.error.4").line();
real[][] a=fin.dimension(n,2);
a = transpose(a);

real[] x = a[0]/56.7;
real[] y = a[1];
  
draw(graph(x,y),red,"$N=4$");
//---------------------------------------------

//---------------------------------------------
file fin=input("fluxfit.error.8").line();
real[][] a=fin.dimension(n,2);
a = transpose(a);

real[] x = a[0]/56.7;
real[] y = a[1];
  
draw(graph(x,y),black,"$N=8$");
//---------------------------------------------

//---------------------------------------------
file fin=input("fluxfit.error.12").line();
real[][] a=fin.dimension(n,2);
a = transpose(a);

real[] x = a[0]/56.7;
real[] y = a[1];
  
draw(graph(x,y),heavygreen,"$N=12$");
//---------------------------------------------

xlimits(0,1);
ylimits(1e-6,1.0);

xaxis("$r/a$",BottomTop,LeftTicks);
yaxis("$\varepsilon$",LeftRight,RightTicks);

attach(legend(1,linelength=30,invisible),(0.1,-0.5));
