/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let sampleData: [Int] = [3, 2, 5, 9, 34, 3, 36, 96, 23, 56, 50, 9, 45, 62, 18, 56, 28, 44, 57, 93, 42, 76, 12, 48, 33]
let goal: Int = 50
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func encourageMessage(_ dailyNumber: Int) -> String {
    
    var difference: Int = 0
    var result: String = ""
    
    difference = abs(dailyNumber - goal)
    result = "You are \(difference) steps from goal."
    
    return result
    
}
//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for data in sampleData {
    print(encourageMessage(data))
}
//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
