def sets(): Unit \ IO =
    let ys1 = Set#{1, 2, 3};
    let ys2 = Set.insert(1, Set.insert(2, Set.insert(3, Set.empty())));
    println(ys1 == ys2);
    println(ys2)
