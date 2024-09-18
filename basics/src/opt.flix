enum Opt[a] {
    case None,
    case Some(a)
}

def isEmpty(b: Opt[a]): Bool = match b {
    case Opt.None   => true
    case Opt.Some(_) => false
}

def runOpt(): Unit \ IO =
	let none = Opt.None;
	println(isEmpty(none));
	println(isEmpty(Opt.Some(1)))
