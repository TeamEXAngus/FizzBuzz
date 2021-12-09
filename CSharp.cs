public static void FizzBuzz2()
{
	string Out;

	for (int i = 0; i < 100; i++)
	{
		Out = "";

		if (i % 3 == 0)
			Out = "Fizz";

		if (i % 5 == 0)
			Out += "Buzz";

		if (Out == "")
			Out = i.ToString();

		Console.WriteLine(Out);
	}
}


public static IEnumerable<string> Linq_FizzBuzz()
{
	return
	from final in
		from five in
			from three in Enumerable.Range(1, 100)
			.Zip(Enumerable.Repeat("", 100))
			select three.First % 3 == 0 ? (three.First, "Fizz") : three
		select five.First % 5 == 0 ? (five.First, five.Item2 + "Buzz") : five
	select final.Item2 == "" ? final.First.ToString() : final.Item2;
}
