/*:
 ## Exercise: Good Names
 
 You’ve inherited some code from another programmer, who never had a chance to take the _App Development with Swift_ course. All you found was a note with the following written on it:
 
 > **Truck loading guide**
 >
 > Pallets of oranges weigh 100lbs
 >
 > Pallets of watermelons weigh 200lbs
 >
 > Have to load up the left then right of the truck and keep it as balanced. How many on each side? Melons always go together.
*/
let numberOfOranges = 14
let numberOfWatermelons = 3
let palletsOfOrangesWeigh = 100
let palletsOfWatermelonsWeigh = 200
let totalOragesWeigh = numberOfOranges * palletsOfOrangesWeigh
let totalWatermelonWeigh = numberOfWatermelons * palletsOfWatermelonsWeigh
let truckLoadingGuide = totalOragesWeigh + totalWatermelonWeigh
let eachSide = truckLoadingGuide / 2
let leftHalfSpaceForOranges = eachSide / palletsOfOrangesWeigh
let rightHalfSpaceForOranges = numberOfOranges - leftHalfSpaceForOranges


//: - experiment: Rewrite the code so that it makes sense without needing a note. Use meaningful names and comments.






/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//:[Previous](@previous)  |  page 14 of 14
