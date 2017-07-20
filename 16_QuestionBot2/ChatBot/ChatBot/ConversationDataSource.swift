import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount: Int {
        return messages.count
    }
    
    /// The ordered list of questions and answers
    var messages: [Message] = [openingLine]

    
    /// Add a new question to the conversation
    func add(question: String) {
        
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
        
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
        
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        
        print("Asking for message at index \(index)")
        return messages[index]
        
    }
    
}
