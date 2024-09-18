def runLists(): Unit \ IO =
    println(List.intersperse("_", List#{"a", "b", "c"}));
    let l1 = List#{"a", "b"};
    let l2 = List#{List#{"1", "2"}, List#{"3", "4", "5"}, List#{"6"}};
    let l3 = List.intercalate(l1, l2);
    println(l1);
    println(l2);
    println(l3)
