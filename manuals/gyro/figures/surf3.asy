import graph;

defaultpen(0.8);
pen dashed=linetype("8 4");
pen dotted=linetype("4 4");

size(250,300);

scale(Linear,Linear);

file fin=input("fluxfit.rz.4").line();
int n=fin.dimension(1);
int nf=fin.dimension(1);

real[] xo = new real[nf];
real[] yo = new real[nf];

for (int i=0; i<nf; ++i) {
    
   real[][] a=fin.dimension(n,4);
   a = transpose(a);

   real[] x = a[0];
   real[] y = a[1];
   real[] xd = a[2];
   real[] yd = a[3];

    if (i == 0) {
       real xmin = min(x);
       real ymin = min(y);

       real xmax = max(x);
       real ymax = max(y);

       real[] d = {xmax-xmin,ymax-ymin,ymax};

       real x0 = 0.5*(xmax+xmin);
       real y0 = 0.5*(ymax+ymin);
       real w = 0.6*max(d);

       xlimits(x0-w,x0+w);
       ylimits(y0-w,y0+w);
    }

   draw(graph(x,y),red,"$N=4$");
}

file fin=input("fluxfit.rz.12").line();
int n=fin.dimension(1);
int nf=fin.dimension(1);

for (int i=0; i<nf; ++i) {
    
   real[][] a=fin.dimension(n,4);
   a = transpose(a);

   real[] x = a[0];
   real[] y = a[1];
   real[] xd = a[2];
   real[] yd = a[3];

   draw(graph(x,y),heavygreen,"$N=12$");
   draw(graph(xd,yd),black+dashed,"Exact");
}

xlimits(40,240);
ylimits(-120,120);

yequals(0.0,dotted);

xaxis("$R$ (cm)",BottomTop,LeftTicks);
yaxis("$Z$ (cm)",LeftRight,RightTicks);

attach(legend(1,linelength=30,invisible),(50,105));

