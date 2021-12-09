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
