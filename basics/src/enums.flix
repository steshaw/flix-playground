enum Weekday {
    case Sunday,
    case Monday,
    case Tuesday,
    case Wednesday,
    case Thursday,
    case Friday,
    case Saturday
}

def weekdayToSomething(weekday: Weekday): Int32 =
	match weekday {
		case Weekday.Monday => 0
		case _ => -1
	}

def weekdayToDayNum(weekday: Weekday): Int8 =
	match weekday {
		case Weekday.Sunday => 1i8
		case Weekday.Monday => 2i8
		case Weekday.Tuesday => 3i8
		case Weekday.Wednesday => 4i8
		case Weekday.Thursday => 5i8
		case Weekday.Friday => 6i8
		case Weekday.Saturday => 7i8
	}

def run(): Unit \ IO =
    let weekdays = List#{
		Weekday.Sunday,
		Weekday.Monday,
		Weekday.Tuesday,
		Weekday.Wednesday,
		Weekday.Thursday,
		Weekday.Friday,
		Weekday.Saturday
	};
	let r = weekdays |> List.map(weekdayToSomething);
	println(r);
	println(weekdays |> List.map(weekdayToDayNum))
