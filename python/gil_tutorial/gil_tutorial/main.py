# Python program showing 
# CPU bound program

# Python program showing  
# multiprocessing 
  
import multiprocessing  
import time 
from threading import Thread 
import numpy, threading

COUNT = 100000000
  
def countdown(n): 
    while n>0: 
        n -= 1
  
def main():
    t1 = Thread(target = countdown, args =(COUNT//2, ))  # single element tuple
    t2 = Thread(target = countdown, args =(COUNT//2, )) 
      
    start = time.time() 
    t1.start() 
    t2.start() 
    t1.join() 
    t2.join() 
    end = time.time() 
      
    print('Time taken in seconds -', end - start)
    
    # creating processes  
    start = time.time() 
    p1 = multiprocessing.Process(target = countdown, args =(COUNT//2, )) 
    p2 = multiprocessing.Process(target = countdown, args =(COUNT//2, )) 
  
    # starting process 1  
    p1.start() 
    # starting process 2  
    p2.start()  
  
    # wait until process 1 is finished  
    p1.join()  
    # wait until process 2 is finished  
    p2.join() 
    end = time.time() 
    print('Time taken in seconds -', end - start)
if __name__ == '__main__':
    main()
    