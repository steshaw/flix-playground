def impure() : Unit \ IO =
    // Actually cannot produce any effects at runtime because the condition is
    // always false.
    let r = if (1 == 2) println("Hello World!") else ();
    r

def map(f: a -> b \ ef, xs: List[a]): List[b] \ ef =
    match xs {
        case Nil => Nil,
        case Cons(x, xs1) => Cons(f(x), map(f, xs1))
    }

// Use a mod here so as not to clash with Prelude (I guess).
mod Private {
    pub def >>(f: a -> b \ ef1, g: b -> c \ ef2): a -> c \ { ef1, ef2 } =
        x -> g(f(x))
}

// Doesn't compile currently.
// def h(f: a -> b \ ef, g: b -> c \ { (not ef1) or ef2 }): Unit = ???


// No need to evaluate pure expressions that are ignored. Compiler says "useless
// expression". We can "do it anyway" by using `let _ = <useless expressions>`.
def uselessExpression() : Int32 =
    let _ = List.map(x -> x + 1, 1 :: 2 :: Nil); // Useless expression
    123

