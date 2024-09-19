def printFruits(fruits: MutList[String, r]): Unit \ {IO, r} =
    fruits |> MutList.forEach(println)

def buildSweetFruits(rc: Region[r]): MutList[String, r] \ r =
    MutList.empty(rc) !>
        MutList.push!("Apple") !>
        MutList.push!("Pear") !>
        MutList.push!("Mango")

def runMutList(): Unit \ IO =
    region rc {
        let fruits = buildSweetFruits(rc);
        printFruits(fruits)
    }
