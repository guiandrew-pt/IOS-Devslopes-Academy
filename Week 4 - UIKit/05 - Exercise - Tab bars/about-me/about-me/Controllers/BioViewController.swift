//
//  ViewController.swift
//  about-me
//
//  Created by Guilherme Andre on 25/08/2021.
//

import UIKit

class BioViewController: UIViewController {

    // Outlets:
    @IBOutlet weak var bioLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bioLbl.text = """
        - My name is Guilherme Andre.

        - I want to make mobile application in IOS.

        - And i want to became a freelancer.
        """
    }


}

