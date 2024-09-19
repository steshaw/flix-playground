// Pure sort function that uses mutation locally.
def sort(l: List[a]): List[a] with Order[a] =
    let result = region rc {
        let arr: Array[a, rc] = List.toArray(rc, l);
        let _ : Unit = Array.sort!(arr); // I like the hat tip to Ruby/Scheme for the bang warning for mutation!
        let result: List[a] = Array.toList(arr);
        result
    };
    result

def runRegions(): Unit \ IO =
    println(sort(List#{5, 6, 7, 1, 2, 3}))

