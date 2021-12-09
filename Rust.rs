fn fizz_buzz(max: i32)
{
  let mut output;

  for i in 1..max
  {
    output = "".to_string();

    if i % 3 == 0
    {
      output += "Fizz";
    }

    if i % 5 == 0
    {
      output += "Buzz";
    }

    if output == ""
    {
      output = i.to_string();
    }

    println!("{}", output)
    
  }
}
