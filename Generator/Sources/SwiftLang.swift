/// Escapes Swift names that conflict with Swift keywords by surrounding them with backticks.
func swiftName(_ name: String) -> String {
    if swiftKeywords.contains(name) {
        return "`\(name)`"
    }
    return name.replacingOccurrences(of: ".", with: "_")
}

/// Keywords in the swift language.
///
/// See https://docs.swift.org/swift-book/documentation/the-swift-programming-language/lexicalstructure/#Keywords-and-Punctuation
let swiftKeywords: Set<String> = [
    // Keywords used in declarations
    "associatedtype",
    "borrowing",
    "class",
    "consuming",
    "deinit",
    "enum",
    "extension",
    "fileprivate",
    "func",
    "import",
    "init",
    "inout",
    "internal",
    "let",
    "nonisolated",
    "open",
    "operator",
    "private",
    "precedencegroup",
    "protocol",
    "public",
    "rethrows",
    "static",
    "struct",
    "subscript",
    "typealias",
    "var",

    // Keywords used in statements
    "break",
    "case",
    "catch",
    "continue",
    "default",
    "defer",
    "do",
    "else",
    "fallthrough",
    "for",
    "guard",
    "if",
    "in",
    "repeat",
    "return",
    "throw",
    "switch",
    "where",
    "while",

    // Keywords used in expressions and types
    "Any",
    "as",
    "await",
    "catch",
    "false",
    "is",
    "nil",
    "rethrows",
    "self",
    "Self",
    "super",
    "throw",
    "throws",
    "true",
    "try",
]
