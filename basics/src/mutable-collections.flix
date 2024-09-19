def runMutList(): Unit \ IO =
    region rc {
        let fruits = MutList.empty(rc);
        MutList.push!("Apple", fruits);
        MutList.push!("Pear", fruits);
        MutList.push!("Mango", fruits);
        MutList.forEach(println, fruits)
    }
