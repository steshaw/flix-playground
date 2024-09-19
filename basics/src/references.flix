def references() : Unit \ IO =
    region rc {
        let c = Ref.fresh(rc, 42);
        println(Ref.get(c));
        Ref.put(Ref.get(c) + 1, c);
        println(Ref.get(c))
    }
