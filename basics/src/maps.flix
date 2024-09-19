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
