/*:
 ## Dealing with Cases
 On the previous page you wrote a function that matches the start of a string against a list of possibilities. However, it would only work when the strings were of the same case. Look at the results in the sidebar:
*/
"where" == "where"
"Where" == "where"
"WHERE" == "where"
/*: 
 You could deal with this by listing every possible combination of cases, but that would get silly:
 ```
 if question.hasPrefix("where")...
 if question.hasPrefix("Where")...
 if question.hasPrefix("WHere")...
 if question.hasPrefix("WHEre")...
 ```
 Instead, it’s better to change the case of the text before you try to match it, using the `lowercased` method:
*/
let question = "WHERE ARE THE COOKIES?"
let lowerQuestion = question.lowercased()
lowerQuestion.hasPrefix("where")
//: - callout(Exercise): Rewrite the function below to work with aNy cAsE of QueStiOn TeXT, so you get a correct answer in the example:
func responseTo(question: String) -> String {
    
    let questionLowercased = question.lowercased()
    
    if questionLowercased.hasPrefix("hello") {
        return "Why, hello there"
    } else if questionLowercased.hasPrefix("where") {
        return "To the North!"
    } else if questionLowercased.hasPrefix("who") {
        return "I don't know him or her but I'm QuestionBot, nice to meet you"
    } else if questionLowercased.hasPrefix("what") {
        return "My knowledge is limited"
    } else if questionLowercased.hasPrefix("how") {
        return "I don't really know"
    } else {
        return "That really depends"
    }
}

responseTo(question: "Hello!")
//:[Previous](@previous)  |  page 3 of 7  |  [Next: Special Questions](@next)
