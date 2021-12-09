.class public ILFizzBuzz.Program
{
	.method public static void FizzBuzz() cil managed
	{
        .maxstack 8
        .locals init (
            [0] int32,
            [1] string
        )
    
        PRE_1: ldc.i4.s 1
        PRE_2: stloc.0
        PRE_3: br.s COND_1
    
            LOOP_1: ldstr ""
            LOOP_2: stloc.1

            FIZZ_1: ldloc.0
            FIZZ_2: ldc.i4.s 3
            FIZZ_3: rem
            FIZZ_4: brtrue.s BUZZ_1

            FIZZ_5: ldstr "Fizz"
            FIZZ_6: stloc.1    

            BUZZ_1: ldloc.0
            BUZZ_2: ldc.i4.s 5
            BUZZ_3: rem
            BUZZ_4: brtrue.s NONE_1

            BUZZ_5: ldloc.1
            BUZZ_6: ldstr "Buzz"
            BUZZ_7: call string [System.String]System.String::Concat(string, string)
            BUZZ_8: stloc.1  

            NONE_1: ldloc.1
            NONE_2: ldstr ""
            NONE_3: call bool [System.String]System.String::op_Equality(string, string)
            NONE_4: brfalse.s SHOW_1

            NONE_5: ldloca.s 0
            NONE_6: call instance string [mscorlib]System.Int32::ToString()
            NONE_7: stloc.1

            SHOW_1: ldloc.1
            SHOW_2: call void [System.Console]System.Console::WriteLine(string)

            ADD1_1: ldloc.0
            ADD1_2: ldc.i4.s 1
            ADD1_3: add
            ADD1_4: stloc.0

            COND_1: ldloc.0
            COND_2: ldc.i4.s 100
            COND_3: ble.s LOOP_1
    
        DONE_1: ret
	}
}
