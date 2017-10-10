import math;
import geometry;
import graph;

size(300,200,IgnoreAspect);

real R0=1.5;
real r=0.6;
real a=0.6;
real t;
guide g;
int n_max=20;

real R(real t) {return R0+r*cos(t+0.5*sin(t));}
real Z(real t) {return 1.5*r*sin(t);}

xaxis("$y$",0,2.5,Arrow);
yaxis("$z$",Arrow);
draw(Label("$x$",1),(0,0)--(-0.75,-0.75),Arrow);

for(int n=0; n < n_max; ++n) {
   t = n*2*3.1415926535/n_max;
   g = g..(R(t),Z(t));
}
 
path p=g..cycle;
 
draw(p);

draw((0.0,-0.5),yscale(0.375)*arc(0,0.50cm,290,100));
draw((0.0,-0.5),yscale(0.375)*arc(0,0.50cm,80,-60),ArcArrow);
label("$\varphi$",(0.2,-0.5));

pair p0=(R0,0.0);
pair p1=(R(a),Z(a));
pair p2=(R(0.0),0.0);
pair p3=(R(0.0)+0.1,Z(a));
pair p4=(R(a),0.0);

draw((0,Z(a))--p1,Arrow);
label("$R$",(0.8,0.45));

dot(p0);
dot(p1);

draw("$r$",p0--p1,W);

draw("$\theta$",arc(p2,p0,p1,0.25),Arrow,PenMargin);

//draw(p1--p3,dotted);

draw("$Z$",p4--p1,Arrow);
     
