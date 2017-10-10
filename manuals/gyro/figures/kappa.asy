import graph;
defaultpen(1.0);

//----------------------------------------
file fin=line(input("geov.out.6k2"));

real[][] a=dimension(fin,0,0);
a=transpose(a);

real[] t=a[0], u1=a[1], u2=a[2], u3=a[3], u4=a[4];
//----------------------------------------
//----------------------------------------
file fin=line(input("geov.out.6k1.5"));

real[][] a=dimension(fin,0,0);
a=transpose(a);

real[] t=a[0], v1=a[1], v2=a[2], v3=a[3], v4=a[4];
//----------------------------------------
//----------------------------------------
file fin=line(input("geov.out.6"));

real[][] a=dimension(fin,0,0);
a=transpose(a);

real[] t=a[0], w1=a[1], w2=a[2], w3=a[3], w4=a[4];
//----------------------------------------

//======================================================
size(300,200,IgnoreAspect);
draw(graph(t/pi,u2),"$\kappa=2$");
draw(graph(t/pi,v2),blue,"$\kappa=1.5$");
draw(graph(t/pi,w2),purple,"$\kappa=1$");
draw(graph(t/pi,sin(t)),dashed,"$\sin\theta$");

real ymin=-1.1;
real ymax=1.1;

xlimits(0,2);
ylimits(ymin,ymax);

pair p = (2,(ymin+ymax)/2);
attach(p,legend(E));

xaxis("$\theta/\pi$",BottomTop,LeftTicks);
yaxis("${\rm gsin}(\theta)$",LeftRight,RightTicks);
shipout("k1.eps"); 
erase();
//======================================================

//======================================================
size(300,200,IgnoreAspect);
draw(graph(t/pi,u3),"$\kappa=2$");
draw(graph(t/pi,v3),blue,"$\kappa=1.5$");
draw(graph(t/pi,w3),purple,"$\kappa=1$");
draw(graph(t/pi,cos(t)),dashed,"$\cos\theta$");

real ymin=-1.2;
real ymax=1.2;

xlimits(0,2);
ylimits(ymin,ymax);

pair p = (2,(ymin+ymax)/2);
attach(p,legend(E));

xaxis("$\theta/\pi$",BottomTop,LeftTicks);
yaxis("${\rm gcos}(\theta)$",LeftRight,RightTicks);
shipout("k2.eps");
erase();
//======================================================
//======================================================
size(300,200,IgnoreAspect);
draw(graph(t/pi,u4),"$\kappa=2$");
draw(graph(t/pi,v4),blue,"$\kappa=1.5$");
draw(graph(t/pi,w4),purple,"$\kappa=1$");
draw(graph(t/pi,t),dashed,"$s\theta$");

real ymin=-2;
real ymax=15;

xlimits(0,2);
ylimits(ymin,ymax);

pair p = (2,(ymin+ymax)/2);
attach(p,legend(E));

xaxis("$\theta/\pi$",BottomTop,LeftTicks);
yaxis("$\Theta(\theta)$",LeftRight,RightTicks);
shipout("k3.eps");
//======================================================
