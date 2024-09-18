enum Tree {
    case Leaf(Int32),
    case Node(Tree, Tree)
}

def sum(t: Tree): Int32 =
	match t {
		case Tree.Leaf(n) => n
		case Tree.Node(l, r) => sum(l) + sum(r)
	}

def runTree(): Unit \ IO =
    let t = Tree.Node(
		Tree.Node(
			Tree.Leaf(1),
			Tree.Node(
				Tree.Leaf(12),
				Tree.Leaf(20)
			)
		),
		Tree.Leaf(9)
	);
	println(sum(t))
