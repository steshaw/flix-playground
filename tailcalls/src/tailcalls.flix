def memberOf(x: a, l: List[a]): Bool with Eq[a] =
    match l {
        case Nil     => false
        case y :: ys => if (x == y) true else memberOf(x, ys)
    }

def testMemberOf(): Unit \ IO =
	let xs = List#{1, 2, 3, 4};
    foreach(n <- Vector.range(0, 5))
        memberOf(n, xs) |> println

def isOdd(n: Int32): Bool =
    if (n == 0) false else isEvn(n - 1)

def isEvn(n: Int32): Bool =
    if (n == 0) true else isOdd(n - 1)

def testOdd(): Unit \ IO =
    isOdd(12345) |> println

def main() : Unit \ IO =
    testMemberOf();
    testOdd()
