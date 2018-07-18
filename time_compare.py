import time

if __name__ == '__main__':
    start1 = time.time()
    # Execution-1
    run_time1 = time.time() - start1

    start2 = time.time()
    # Execution-2
    run_time2 = time.time() - start1

    print ("Run time in an efficient way is :{0}".format(run_time1) + "[sec]\n")
    print ("Run time in an inefficient way is :{0}".format(run_time2) + "[sec]\n")
    print ("Efficient way is {0:.2f}".format(run_time2 / run_time1) + " times faster than ineffcient way\n")