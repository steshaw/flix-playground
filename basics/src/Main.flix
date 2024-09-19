def lists(): Unit \ IO =
    let xs1 = 1 :: 2 :: 3 :: Nil;
    let xs2 = Cons(1, Cons(2, Cons(3, Nil)));
    let xs3 = List#{1, 2, 3};
    println(xs1 == xs2);
    println(xs2 == xs3);
    println(xs3)

def sets(): Unit \ IO =
    let ys1 = Set#{1, 2, 3};
    let ys2 = Set.insert(1, Set.insert(2, Set.insert(3, Set.empty())));
    println(ys1 == ys2);
    println(ys2)

def maps(): Unit \ IO =
    let m1 = Map#{
        1 => "Hello",
        2 => "World"
    };
    let m2 = Map.insert(2, "World", Map.insert(1, "Hello", Map.empty()));
    println(m1 == m2);
    println(m2);
    println(Map.get(1, m2));
    println(m2 |> Map.get(1)) // Alternative syntax for previous.

def main(): Unit \ IO =
    runCounter()
