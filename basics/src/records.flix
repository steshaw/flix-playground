def runRecords() : Unit \ IO =
    let p1 = { x = 1, y = 2 };
    let p2 = { x = 3 | p1 }; // Update syntax
    let p3 = { +z = 3 | p1 };
    let p4 = { -y | p1 };
    println("p1");
    println(p1#x); // Odd field accessor syntax.
    println(p1#y);
    println("p2");
    println(p2#x);
    println(p2#y);
    println("p3");
    println(p3#x);
    println(p3#y);
    println(p3#z);
    println("p4");
    println(p4#x);
    println("end")
