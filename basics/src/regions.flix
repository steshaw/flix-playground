// Pure sort function that uses mutation locally.
def sort(l: List[a]): List[a] with Order[a] =
    let result = region rc {
        let rc1 = rc; // Regions are values.
        let arr: Array[a, rc] = List.toArray(rc1, l);
        let _ : Unit = Array.sort!(arr); // I like the hat tip to Ruby/Scheme for the bang warning for mutation!
        let result: List[a] = Array.toList(arr);
        result
    };
    result

def toString(xs: List[a]): String with ToString[a] =
    region rc {
        let sb = StringBuilder.empty(rc);
        xs |> List.forEach(s -> StringBuilder.appendString!("${s} :: ", sb));
        StringBuilder.appendString!("Nil", sb);
        StringBuilder.toString(sb)
    } // scope of rc ends, the entire expression is pure.

def tryToEscape(): Unit \ IO =
    let r = region rc {
        let escaped = Array#{1, 2, 3} @ rc;
        println(Array.toString(escaped));
        Array.toList(escaped) // Cannot return bare `escaped` here because it escapes the region `rc`.
    };
    println(r)

def runRegions(): Unit \ IO =
    let xs = List#{5, 6, 7, 1, 2, 3};
    let sorted = sort(xs);
    println(sorted);
    println(toString(sorted))

