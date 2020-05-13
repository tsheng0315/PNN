import numpy as np

input = np.array([[0,1],[3,5],[5,4],[5,6],[8,7],[9,7]])
w=np.array([-1,0])
lr=0.01

x_mean=0
y_mean=0
for n in input:
    x_mean=x_mean+n[0]
    y_mean=y_mean+n[1]
mean=[x_mean/len(input),y_mean/len(input)]
print(mean)

for i in range (len(input)):
    input[i] = input[i]-mean
print(input)
i=0
n=2
while i<n:
    change = []
    for x in input:
        y=np.dot(w,x)
        change.append(lr*y*(x-y*w))
    total = np.array([0,0])
    for x in change:
        total=total+x
    w = w+total
    print("change",change)
    print("total change",total,"new w:",w)
    i=i+1