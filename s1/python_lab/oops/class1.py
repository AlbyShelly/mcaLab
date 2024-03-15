

class Rectangle:

    def __init__(self, length, breadth):

        self.length = length
        self.breadth = breadth

    def area(self):

        return self.length * self.breadth


    def perimeter(self):

        return 2*(self.length + self.breadth)

    
    def compare_area(self, other_rectangle):

        if self.area() > other_rectangle.area():

            return "The first rectangle has a larger area"

        elif self.area() < other_reactangle.area():

            return "The second rectangel has a larger area"

        else:

            return "The second rectangle has a larger area"



#to create to objects of the type rectangle

rectangle1 = Rectangle(5,10)
rectangle2 = Rectangle(8,6)

#Comparing the rectangles' area 

print("Comparison result: ",  rectangle1.compare_area(rectangle2))

rectangle3 = Rectangle(12,34)

print("Comparison result: ", rectangle3.compare_area(rectangle2))


