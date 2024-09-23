use Weekday.Sunday
use Weekday.Monday
use Weekday.Tuesday
use Weekday.Wednesday
use Weekday.Thursday
use Weekday.Friday
use Weekday.Saturday

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
		case Sunday => 1i8
		case Monday => 2i8
		case Tuesday => 3i8
		case Wednesday => 4i8
		case Thursday => 5i8
		case Friday => 6i8
		case Saturday => 7i8
	}

def run(): Unit \ IO =
    let weekdays = List#{
		Sunday,
		Monday,
		Tuesday,
		Wednesday,
		Thursday,
		Friday,
		Saturday
	};
	let r = weekdays |> List.map(weekdayToSomething);
	println(r);
	println(weekdays |> List.map(weekdayToDayNum))
