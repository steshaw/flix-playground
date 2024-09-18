// <> by itself does not compile :(.
def <<>>(x: Int32, y: Int32): Int32 = x + y

def runOperators(): Unit \ IO =
	println(1 <<>> 2)
