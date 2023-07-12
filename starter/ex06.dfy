function method abs(a: int): int
{
	if a >= 0 then a else -a
}

method Abs(x: int) returns (y: int)
	ensures y == abs(x)
{
	if x >= 0
	{
		return x;
	}
	else
	{
		return -x;
	}
}

method Abs2(x: int) returns (y: int)
	ensures y == abs(x)
{
	return abs(x);
}

method Main()
{
	var x := Abs(-5);
	assert x == 5;
	var y := Abs2(-10);
	assert y == 10;
}
