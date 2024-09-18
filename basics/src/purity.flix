// The backslash {} means "pure".
def add1(x: Int32, y: Int32): Int32 \ {} = x + y
// equivalent to:
def add2(x: Int32, y: Int32): Int32 = x + y

def addAndSideEffect(x: Int32, y: Int32): Int32 \ IO =
    println(x);
    x + y

// Effect polymorphic!
def map(f: a -> b \ ef, l: List[a]): List[b] \ ef =
	match l {
		case Nil => Nil,
		case Cons(x, xs) => Cons(f(x), map(f, xs))
	}

def runPurity(): Unit \ IO =
	let xs = List#{1, 2, 3};
	println(xs |> map(n -> n + 1));
	xs |> map(n -> println(n));
	()
