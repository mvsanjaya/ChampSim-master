import sys
import numpy as np
import matplotlib.pyplot as plt



name1=(sys.argv[1])        


f=open("ipc_data.txt", "r")
#if f.mode == 'r':
	#contents =f.read()
f1 = f.readlines()
aa = []
for x in f1:
	aa.append(float(x))
print(aa)	

objects = ('CPU0', 'CPU1', 'CPU2', 'CPU3', 'CPU4', 'CPU5','CPU6','CPU7')
y_pos = np.arange(len(objects))
performance = aa

plt.bar(y_pos, performance, align='center', alpha=0.5)
plt.xticks(y_pos, objects)
plt.ylabel('Instructions Per Cycle')
plt.title('IPC of %s' %(name1))
plt.grid()
plt.savefig('%s.png' % (name1) )

#plt.show()			

plt.close()

# https://www.guru99.com/reading-and-writing-files-in-python.html
# https://pythonspot.com/matplotlib-bar-chart/