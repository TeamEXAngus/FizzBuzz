let FizzBuzz max =
    for i in 1..max do
        printf "%s" (
            if i % 15 = 0 then "FizzBuzz" else
            if i % 3 = 0 then "Fizz" else
            if i % 5 = 0 then "Buzz" else
            string i
        )
