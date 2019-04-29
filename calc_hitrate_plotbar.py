import sys
import numpy as np
import matplotlib.pyplot as plt

name1 = (sys.argv[1])        


f=open("hitrate_data.txt", "r")
#if f.mode == 'r':
	#contents =f.read()
f1 = f.readlines()


aa = []
for x in f1:
	aa.append(float(x))
print(aa)

#calculate hitrate

a1 = aa[0]
a2 = aa[1]
a3 = aa[2]
a4 = aa[3]
a5 = aa[4]
a6 = aa[5]
a7 = aa[6]
a8 = aa[7]

b1 = a2/a1
b2= a4/a3
b3= a6/a5
b4 = a8/a7

# print(b1)	
# print(b2)	
# print(b3)	
# print(b4)	

bb = []
bb.append(b1)
bb.append(b2)
bb.append(b3)
bb.append(b4)


objects = ('L1D', 'L1I', 'L2C', 'LLC')
y_pos = np.arange(len(objects))
performance = bb

plt.bar(y_pos, performance, align='center', alpha=0.5)
plt.xticks(y_pos, objects)
plt.ylabel('Instructions Per Cycle')
plt.title('Hit Rate : %s' %(name1))
plt.grid()
plt.savefig('%s.png' % (name1) )

#plt.show()			

plt.close()
