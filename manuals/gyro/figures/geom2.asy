import math;
import geometry;
import graph;

size(0,200);

real R0=0.5;
real r=0.6;
real a=0.6;
real tr=0.0;
real t;
guide g;
int n_max=20;

real R(real t) {return R0+r*cos(t+tr*sin(t));}
real Z(real t) {return 1.5*r*sin(t);}

xaxis("$R$",0,2.5,Arrow);
yaxis("$Z$",Arrow);

for(int n=0; n < n_max; ++n) {
   t = 0.2*n*2*3.1415926535/n_max;
   g = g..(R(t),Z(t));
}
 
path p=g;
 
draw(p,dotted);

pair p0=(R0,0.0);
pair p1=(R(a),Z(a));

dot(p1);
label("$(R_s,Z_s)$",(0.8,0.5));

pair p2 = (2.0,Z(a));
draw(p1--p2,dashed);

//------------------------------------------------

real R0=1.0;
real r=0.8;
real a=0.68;
real tr=0.0;
real t;
guide g;
int n_max=20;

real R(real t) {return R0+r*cos(t+tr*sin(t));}
real Z(real t) {return 1.5*r*sin(t);}

for(int n=0; n < n_max; ++n) {
   t = 0.2*n*2*3.1415926535/n_max;
   g = g..(R(t),Z(t));
}
 
path p=g;
 
draw(p);

pair q0=(R0,0.0);
pair q1=(R(a),Z(a));

dot(q1);
label("$(R,Z)$",(1.75,0.75));

draw("$\varrho$",p1--q1,NW,Arrow);

//------------------------------------------------

real R0=0.5;
real r=0.6;
real a=0.68;
real tr=0.0;
real t;
guide g;
int n_max=20;

real R(real t) {return R0+r*cos(t+tr*sin(t));}
real Z(real t) {return 1.5*r*sin(t);}

for(int n=0; n < n_max-1; ++n) {
   t = n*a/n_max;
   g = g..(R(t),Z(t));
}
 
path p=g;
 
draw("$\ell$",p,Arrow);

//--Arc

draw("$u$",arc(p2,p1,q1,0.25),Arrow,PenMargin);
