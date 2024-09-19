def references() : Unit \ IO =
    region rc {
        let c = Ref.fresh(rc, 42);
        println(Ref.get(c));
        Ref.put(Ref.get(c) + 1, c);
        println(Ref.get(c))
    }

// -----------------------------------------------------------------------------
// Counter example
// -----------------------------------------------------------------------------

// Put a Ref inside an enum.
enum Counter[r: Region] { // The Region here is a type-kind
    case Counter(Ref[Int32, r])
}

def newCounter(rc: Region[r]): Counter[r] \ r = Counter.Counter(Ref.fresh(rc, 0))

// Comment out broken Counter example for now as broke on 0.50.0.
/*
def getCount(c: Counter[r]): Int32 \ r =
    let Counter.Counter(l) = c;
    Ref.get(l)

def increment(c: Counter[r]): Unit \ r =
    let Counter.Counter(l) = c;
    Ref.put(Ref.get(l) + 1, l)

*/
def runCounter(): Unit \ IO =
    println("Counter example broken")
    /*
    region rc {
        let c = newCounter(rc);
        increment(c);
        increment(c);
        increment(c);
        getCount(c) |> println
    }
    */
