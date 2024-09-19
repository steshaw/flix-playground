def runMutList(): Unit \ IO =
    region rc {
        let fruits = MutList.empty(rc) !>
            MutList.push!("Apple") !>
            MutList.push!("Pear") !>
            MutList.push!("Mango");
        fruits |> MutList.forEach(println)
    }
