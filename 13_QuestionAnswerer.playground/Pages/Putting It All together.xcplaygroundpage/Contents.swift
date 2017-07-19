/*:
 ## Putting It All Together
 - callout(Exercise): In this final exercise you’ll combine the things you’ve learned over the last few pages. Update this `responseToQuestion` function so that it gives the answers specified below. It’s OK to go back and look and code from earlier pages.
*/
func responseTo(question: String) -> String {
    
    let questionLowercased = question.lowercased()
    
    if questionLowercased.hasPrefix("hello") {
        return "Why, hello there"
    } else if questionLowercased == "where are the cookies?" {
        return "In the cookie jar!"
    }else if questionLowercased.hasPrefix("where") {
        return "To the North!"
    } else if questionLowercased.hasPrefix("who") {
        return "I don't know him or her but I'm QuestionBot, nice to meet you"
    } else if questionLowercased.hasPrefix("what") {
        return "My knowledge is limited"
    } else if questionLowercased.hasPrefix("how") {
        return "I don't really know"
    } else {
        
        let defaultNumber = question.characters.count % 3
        
        if defaultNumber == 0 {
            return "That really depends"
        } else if defaultNumber == 1 {
            return "Ask me again tomorrow"
        } else {
            return "Bazinga!"
        }
        
    }
}
//: 👇These answers should be “Why, hello there!”
responseTo(question: "Hello there")
responseTo(question: "hello there")
//: 👇These answers should be “To the North!”
responseTo(question: "Where should I go on holiday?")
responseTo(question: "where can I find the North Pole?")
//: 👇This answer should be “In the cookie jar!”
responseTo(question: "Where are the cookies?")
/*: 
 Any other question can have any answer you'd like. You can also make new rules or conditions so different questions have different answers!
 
 👇 Below are some example questions for you to test the final part. You can add or change the test questions if you like.
*/
responseTo(question: "Can I have a cookie?")
responseTo(question: "CAN I HAVE A COOKIE?!?")
responseTo(question: "Should I go?")

/*:
 - note:
 You'll be cutting and pasting the body of the `responseToQuestion` function above. When you highlight it to copy over, your function body will be different, but it'll look something like this:\
 ![](copy-paste-example.png)
 */

//:[Previous](@previous)  |  page 6 of 7  |  [Next: Wrapup](@next)
