struct MyQuestionAnswerer {
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
}
