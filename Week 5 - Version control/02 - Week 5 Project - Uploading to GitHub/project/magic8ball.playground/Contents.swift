// Magic 8 ball

import UIKit

// var playerName = "Ken"
var playerName = ""
var playerQuestion = "Yes"
var randomNumber = Int.random(in: 1...9)
var eightBall: String = ""

// print(randomNumber)

switch randomNumber {
  case 1:
    eightBall = "Yes - definitely"
  case 2:
    eightBall = "It is decidedly so"
  case 3:
    eightBall = "Without a doubt"
  case 4:
    eightBall = "Reply hazy, try again"
  case 5:
    eightBall = "Ask again later"
  case 6:
    eightBall = "Better not tell you now"
  case 7:
    eightBall = "My sources say no"
  case 8:
    eightBall = "Outlook not so good"
  case 9:
    eightBall = "Very doubtful"
  default:
    eightBall = "Error"
}

/*
if playerName == "" && playerName.isEmpty {
  print(" asks: Will I win the lottery?")
  print("Magic 8 Ball's answer: \(eightBall)")
} else {
  print("\(playerName) asks: Will there be any more snowfall in New York for winter 2020?")
  print("\(playerName)'s answer: \(eightBall)")
}
*/

playerName == "" && playerName.isEmpty ? print(" asks: Will I win the lottery?\nMagic 8 Ball's answer: \(eightBall)")
 : print("\(playerName) asks: Will there be any more snowfall in New York for winter 2020?\n\(playerName)'s answer: \(eightBall)")
