import threading
def MakeParkingLot(N):
    global sem
    global spots
    global spotsSync
    spots = [None for i in range(N)]


def MakeCars(C):
    for i in range(C):
                    
    #don't forget to return the list
    


def Park(car):
    global sem, spots, spotsSync
    for i in range(len(spots)):
        if spots[i] is None:
            spots[i] = car
            break
    snapshot = spots[:]
    
    print("Car %d got spot: %s" % (car, snapshot))
    
    import time
    import random
    st = random.randrange;
    time.sleep(st)

    print("Car %d left after %d sec, %s" % (car, st, myCopySpots))


if __name__ == '__main_':
    MakeParkingLot(5)
    cars = MakeCars(15)
    for i in range(15): cars[i].start()

