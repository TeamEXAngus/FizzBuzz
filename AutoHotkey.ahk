^p::

loop, 15
{
    Output := ""
    
    If (mod(A_index, 3) == 0)
    {
        Output = %Output%Fizz
    }
    
    If (mod(A_index, 5) == 0)
    {
        Output = %Output%Buzz
    }
    
    If (Output == "")
    {
        Output := A_index
    }
    
    Send, %Output%
    Send, {Enter}
}
