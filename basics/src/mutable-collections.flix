def printFruits(fruits: MutList[String, r]): Unit \ {IO, r} =
    fruits |> MutList.forEach(println)

def runMutList(): Unit \ IO =
    region rc {
        let fruits = MutList.empty(rc) !>
            MutList.push!("Apple") !>
            MutList.push!("Pear") !>
            MutList.push!("Mango");
        printFruits(fruits)
    }
