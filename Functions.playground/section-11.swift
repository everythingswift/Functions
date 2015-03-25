func getCombinedUpperCaseString4(s1:String, secondString s2:String = "END") -> String {
    return s1.uppercaseString + s2.uppercaseString
}

let combinedString4 = getCombinedUpperCaseString4("abcD")
let combinedString5 = getCombinedUpperCaseString4("abcD", secondString:"efgh")
