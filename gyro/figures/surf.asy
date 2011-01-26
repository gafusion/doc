import graph;

defaultpen(0.8);
pen dashed=linetype("8 4");
pen dotted=linetype("4 4");

size(300,300);

scale(Linear,Linear);

file fin=line(input("fluxfit.rz.p"));
int n=dimension(fin,1);
int nf=dimension(fin,1);

write(nf);

   real[] xo = new real[nf];
   real[] yo = new real[nf];

for (int i=0; i<nf; ++i) {
    
   real[][] a=dimension(fin,n,4);
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

   draw(graph(xd,yd),black);
}

file fin=line(input("fluxfit.profile"));
string a=dimension(fin,1);
real[] p=dimension(fin,6);
real rmin=p[0];
real zmag=p[1];
real rmaj=p[2];

real rp = rmaj+rmin;
real rm = rmaj-rmin;

pair pm = (rm,zmag);
pair pp = (rp,zmag);
pair p0 = (rmaj,zmag);

dot("$(R_-,Z_0)$",pm,SW);
dot("$(R_+,Z_0)$",pp,SE);
dot("$(R_0,Z_0)$",p0,S);
draw("$r$",pm--p0,S);
draw("$r$",p0--pp,S);

//-------------
draw((90.0,-80),yscale(0.375)*arc(0,0.50cm,290,100));
draw((90.0,-80),yscale(0.375)*arc(0,0.50cm,80,-70),ArcArrow);
draw((90.0,-100)--(90.0,-60),Arrow);
label("$\varphi$",(70.0,-80));
label("$Z$",(90.0,-52));
//-------------

xlimits(50,300);
ylimits(-120,120);

yequals(0.0,dotted);

xaxis("$R$ (cm)",BottomTop,LeftTicks);
yaxis("$Z$ (cm)",LeftRight,RightTicks);


