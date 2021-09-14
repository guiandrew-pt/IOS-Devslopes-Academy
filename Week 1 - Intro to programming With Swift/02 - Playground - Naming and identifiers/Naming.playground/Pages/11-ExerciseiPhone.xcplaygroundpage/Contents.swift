/*: 
 ## Exercise: What Fits on Your iPhone?
 
 In this exercise you’re going to work on figuring out the answer to the timeless question: How much stuff can I fit on my iPhone?
 
 Unlike the previous exercises, no code will be provided. But here are a few things you’ll need to know:
 
 
 - iPhone storage capacity is measured in **gigabytes** (GB).
 - The iPhone in question has 8GB of storage.
 - A gigabyte is about **1000 megabytes** (MB)
 - The phone already has **3GB** of stuff on it
 - **One minute** of video takes **150MB** of storage
 
 - callout(Exercise): How many minutes of video will it take to fill the phone?\
 _Hint_: Do all of your calculations in megabytes (MB).
*/
let iPhoneStorage = 8000 // 8000 mb it's 8 gb
let gigabyte = 1000 // 1000 mb it's 1 gb
var useStorage = 3000 // 3000 mb it's 3 gb
let oneMinuteVideo = 150 // 150 mb

let result = (iPhoneStorage - useStorage) / oneMinuteVideo
print(result)

//:[Previous](@previous)  |  page 12 of 14  |  [Next: Exercise: Fixing Your Morning](@next)
