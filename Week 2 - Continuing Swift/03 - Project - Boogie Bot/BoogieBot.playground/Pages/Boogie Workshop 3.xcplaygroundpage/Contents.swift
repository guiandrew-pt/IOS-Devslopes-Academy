/*:
 ## Boogie Workshop
 
 This page is here for you to create your own routines.
 
 Remember the moves:
 
 - `leftArmUp()`, `leftArmDown()`, `rightArmUp()`, `rightArmDown()`
 - `leftLegUp()`, `leftLegDown()`, `rightLegUp()`, `rightLegDown()`
 - `shakeItLeft()`, `shakeItRight()`, `shakeItCenter()`
 - `jumpUp()`, `jumpDown()`
 - `fabulize()`, `defabulize()`
 
 To sign your work:
 
 `setBotTitle("My Awesome Dance")`\
 `setBotSubtitle("By The Boogiemaster")`
 */
startBot()
startRecording()

setBotTitle("Boogie Night at 70's")
setBotSubtitle("By Me and Myself")

fabulize()

func moveLeftArmAndShakeLeft() {
    leftArmUp()
    shakeItLeft()
    leftArmDown()
    shakeItCenter()
}

func moveRightArmAndShakeRight() {
    rightArmUp()
    shakeItRight()
    rightArmDown()
    shakeItCenter()
}

func moveLeftLegs() {
    leftLegUp()
    jumpUp()
    jumpDown()
    leftLegDown()
}

func moveRightLegs() {
    rightLegUp()
    jumpUp()
    jumpDown()
    rightLegDown()
}

func shakeTheBooty() {
    shakeItLeft()
    shakeItRight()
    shakeItCenter()
}

moveLeftArmAndShakeLeft()
moveRightArmAndShakeRight()
moveLeftArmAndShakeLeft()

moveLeftLegs()
moveLeftLegs()

shakeTheBooty()

moveRightLegs()


defabulize()






//: Continue with your creativity.
//:
//:[Previous](@previous)  |  page 12 of 13  |  [Next: Boogie Workshop](@next)
