mod Purity {

    // The backslash {} means "pure".
    pub def add1(x: Int32, y: Int32): Int32 \ {} = x + y
    // equivalent to:
    pub def add2(x: Int32, y: Int32): Int32 = x + y

    pub def addAndSideEffect(x: Int32, y: Int32): Int32 \ IO =
        println(x);
        x + y

    // Effect polymorphic!
    pub def map(f: a -> b \ ef, l: List[a]): List[b] \ ef =
        match l {
            case Nil => Nil,
            case Cons(x, xs) => Cons(f(x), map(f, xs))
        }

    pub def runPurity(): Unit \ IO =
        let xs = List#{1, 2, 3};
        println(xs |> map(n -> n + 1));
        let r = xs |> map(n -> println(n));
        println(r)
}

