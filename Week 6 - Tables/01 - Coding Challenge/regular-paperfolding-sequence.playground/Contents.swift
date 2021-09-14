// Regular paperfolding sequence or the Dragon Sequence

func regularPaperfoldingSequence(amount: Int) -> String {
    var str = "1"
    var sequence = ""
    var index = 0
    
    while index < amount {
        // Will add the value of str and will do a new line to the sequence creating a row. The rows will be equal to the value of "amount".
        sequence.append("\(str)\n")
        
        str.append("1") // will add 1 to the str variable
        
        str = nextCharacter(characterStr: str) // will add the row to the str variable
        
        index += 1
    }
    
    return sequence
}

func nextCharacter(characterStr: String) -> String {
    var string = characterStr

    // This is to generate the ith term
    for i in string.dropLast().reversed() {
        
        // This condition will alternate between 0 and 1
        if i == "1" {
            string.append("0")
        } else {
            string.append("1")
        }
    }
    
    return string
}

let theSequence = regularPaperfoldingSequence(amount: 8)
print(theSequence)

