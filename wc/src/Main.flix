def main(): Unit \ IO =
    let args = Environment.getArgs();
    match args {
        case Nil => println("Missing argument: filename")
        case files =>
            List.forEach(file -> count(file), files)
    }

def count(file: String) : Unit \ IO =
    match Files.readLines(file) {
        case Err(_) =>
            println("Unable to read: ${file}")
        case Ok(lines) =>
            let totalLines = List.length(lines);
            let totalWords = List.sumWith(numberOfWords, lines);
            println("${totalLines}  ${totalWords}  ${file}")
    }

def numberOfWords(s: String): Int32 =
    s |> String.words |> List.length

