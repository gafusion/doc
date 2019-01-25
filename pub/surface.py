import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rc

rc('text',usetex=True)
rc('font',size=12)

#======================================
fig = plt.figure(figsize=(5,5))
ax = fig.add_subplot(111)
ax.set_aspect('equal')
#=====================================

t=np.linspace(0,2*np.pi,128)

r = 0.5
k = 1.5
d = 0.4
s = 0.15
# R-R0
x = r*np.cos(t+d*np.sin(t))
# Z-Z0
y = k*r*np.sin(t+s*np.sin(2*t))

ax.plot(x,y,'-b',linewidth=3)

#ax.set_xlim([-1,1])
#ax.set_ylim([-1,1])
#ax.legend(loc=2)
plt.tight_layout()
plt.axis('off')
plt.savefig('surface.pdf')
