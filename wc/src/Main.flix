def main(): Unit \ IO =
    let args = Environment.getArgs();
    match args {
        case Nil => println("Missing argument: filename")
        case files =>
            List.forEach(file -> count(file), files)
    }

def count(file: String) : Unit \ IO =
    let result :Result[IOError, (Int32, Int32)] = forM (
        lines <- Files.readLines(file)
    ) yield  (
        let totalLines = List.length(lines);
        let totalWords = List.sumWith(numberOfWords, lines);
        (totalLines, totalWords)
    );
    match result {
        case Ok((lines, words)) => println("${lines}  ${words}  ${file}")
        case Err(msg) => println(msg)
    }


def numberOfWords(s: String): Int32 =
    s |> String.words |> List.length

