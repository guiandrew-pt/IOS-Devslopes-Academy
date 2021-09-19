//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Guilherme Andre on 12/09/2021.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let grinningFace = Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness")
    let confusedFace = Emoji(symbol: "😕", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure")
    let heartEyes = Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive")
    let policeOfficer = Emoji(symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority")
    let turtle = Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow")
    let elephant = Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory")
    let spaghetti = Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti")
    let die = Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game")
    let tent = Emoji(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping")
    let stackOfBooks = Emoji(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying")
    let brokenHeart = Emoji(symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness")
    let snore = Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness")
    let checkeredFlag = Emoji(symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage: "completion")
    var emojisSctions: Array<Array<Emoji>> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = editButtonItem
        
        emojisSctions = [
            [grinningFace, confusedFace],
            [turtle, elephant],
            [policeOfficer],
            [heartEyes, brokenHeart],
            [spaghetti],
            [die, tent],
            [snore, checkeredFlag],
            [stackOfBooks]
        ]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // IBACTION:
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return emojisSctions.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section < emojisSctions.count {
            return emojisSctions[section].count
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        
        let emoji = emojisSctions[indexPath.section][indexPath.row]

        // Configure the cell...
        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name)"
        cell.detailTextLabel?.text = emoji.description
        
        cell.showsReorderControl = true

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt
    indexPath: IndexPath) {
        let emoji = emojisSctions[indexPath.section][indexPath.row]
        print("\(emoji.symbol) \(indexPath)")
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        //let movedEmoji = emojisSctions.remove(at: fromIndexPath.row)
        let movedEmoji = emojisSctions[fromIndexPath.section].remove(at: fromIndexPath.row)
        
        if emojisSctions[fromIndexPath.section].count > 0 {
            emojisSctions[fromIndexPath.section].insert(movedEmoji, at: to.row)
            
            tableView.reloadData()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
            switch section {
                case 0:
                    return "Face emoticons"
                case 1:
                    return "Animals"
                case 2:
                    return "Police Officer"
                case 3:
                    return "Hearts"
                case 4:
                    return "Food"
                case 5:
                    return "Nature"
                case 6:
                    return "Flags"
                case 7:
                    return "Books"
                default:
                    return ""
            }
    }
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
