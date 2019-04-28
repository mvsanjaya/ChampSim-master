import matplotlib.pyplot as plt 
import csv

x=[]
y=[]
 
with open('data_plot.txt','r') as csvfile:
	plots = csv.reader(csvfile, delimiter = ',')
	for row in plots:
		x.append(float(row[0]))
		y.append(float(row[1]))	

#print(x)
#print(y)		
plt.plot(x,y,label='x')
plt.savefig('foo.png')

plt.show()			

plt.close()