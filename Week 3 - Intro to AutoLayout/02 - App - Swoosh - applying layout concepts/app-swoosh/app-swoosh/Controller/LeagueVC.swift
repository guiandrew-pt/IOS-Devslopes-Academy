//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Guilherme Andre on 14/08/2021.
//

import UIKit

class LeagueVC: UIViewController {
    
    // Variables:
    var player: Player!
    
    // Outelts:
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
        
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
