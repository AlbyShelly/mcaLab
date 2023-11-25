
class Time:

    def __init__(self, hour, minutes, second):

        self.min = minutes
        self.hrs = hour
        self.sec = second

    def __add__(self,obj):

        minu = self.min + obj.min
        hrss = self.hrs + obj.hrs
        secs = self.sec + obj.sec

        return Time(minu,hrss,secs)

    def printtime(self):

        print(self.sec)
        print(self.hrs)
        print(self.min)
        print("printtime")

time1 = Time(1,45,34)
time2 = Time(5,46,36)

var = time1 + time1

var.printtime()

