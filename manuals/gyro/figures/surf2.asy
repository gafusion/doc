import graph;

defaultpen(0.8);
pen dashed=linetype("8 4");
pen dotted=linetype("4 4");

size(250,300);

scale(Linear,Linear);

file fin=input("fluxfit.rz.p").line();
int n=fin.dimension(1);
int nf=fin.dimension(1);

for (int i=0; i<nf; ++i) {
    
   real[][] a=fin.dimension(n,4);
   a = transpose(a);

   real[] x = a[0];
   real[] y = a[1];
   real[] xd = a[2];
   real[] yd = a[3];

   draw(graph(x,y),blue,"Parameterized");
   draw(graph(xd,yd),black+dashed,"Exact");
}

xlimits(40,240);
ylimits(-120,120);

yequals(0.0,dotted);

xaxis("$R$ (cm)",BottomTop,LeftTicks);
yaxis("$Z$ (cm)",LeftRight,RightTicks);

attach(legend(1,linelength=30,invisible),(50,105));

