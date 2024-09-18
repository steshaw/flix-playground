def main(): Unit \ IO =
    let args = Environment.getArgs();
    match args {
        case Nil => println("Missing argument: filename")
        case file :: _ =>
            match Files.readLines(file) {
                case Err(_) =>
                    println("Unable to read: ${file}")
                case Ok(lines) =>
                    let totalLines = List.length(lines);
                    let totalWords = List.sumWith(numberOfWords, lines);
                    println("Lines: ${totalLines}, Words: ${totalWords}")
            }
    }

def numberOfWords(s: String): Int32 =
    s |> String.words |> List.length

