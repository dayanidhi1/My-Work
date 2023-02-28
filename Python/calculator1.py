def add(x, y):
    return x + y

def sub(x, y):
    return x - y

def mutl(x, y):
    return x * y

def div(x, y):
    return x / y

print("This is calculator in python")

print("Select the Operation you want to perform")
print ("Press 1 to Add")
print ("Press 2 to Subtrack")
print ("Press 3 to Multiply")
print ("Press 4 for Divide")

x = float(input("Enter the first number: "))
print (x)

y = float(input("Enter second number: "))
print(y)

choice = input("Enter choice of operation: ")

if choice == '1':
    print(x, "+", y, "=", add(x, y))
    
elif choice == '2':
    print(x, "-", y, "=", sub(x, y))
    
elif choice == '3':
    print(x, "x", y, "=", sub(x, y))

elif choice == '4':
    if y == 0:
        print ("Invalid Division")
    else:
        print(x, "/", y, "=", div(x, y))
    
else: 
    print("invalid input")    
    


    
    
    






    



