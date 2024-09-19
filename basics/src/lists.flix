def lists(): Unit \ IO =
    let xs1 = 1 :: 2 :: 3 :: Nil;
    let xs2 = Cons(1, Cons(2, Cons(3, Nil)));
    let xs3 = List#{1, 2, 3};
    println(xs1 == xs2);
    println(xs2 == xs3);
    println(xs3)

def runLists(): Unit \ IO =
    println(List.intersperse("_", List#{"a", "b", "c"}));
    let l1 = List#{"a", "b"};
    let l2 = List#{List#{"1", "2"}, List#{"3", "4", "5"}, List#{"6"}};
    let l3 = List.intercalate(l1, l2);
    println(l1);
    println(l2);
    println(l3)
