//
//  ViewController.swift
//  Light
//
//  Created by Guilherme Andre on 16/08/2021.
//

import UIKit

class ViewController: UIViewController {

    // Variables:
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}

