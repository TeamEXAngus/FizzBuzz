def FizzBuzz(max):
  for i in range(1, max + 1):
    output = ""
    
    if i % 3 == 0:
      output = "Fizz"
      
    if i % 5 == 0:
      output += "Buzz"
      
    if output == "":
      output = str(i)
    
    print(output)
    
  
def FizzBuzz2(max):
    for i in range(1, Max + 1):
      print(
        "Fizz" if (F := i % 3 == 0) else "" +
        "Buzz" if (B := i % 5 == 0) else "" +
        str(i) if (not (F or B)) else ""
      )
