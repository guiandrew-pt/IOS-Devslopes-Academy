//
//  YourCarControllerViewController.swift
//  Cool Cars
//
//  Created by Guilherme Andre on 18/08/2021.
//

import UIKit

class YourCarViewController: UIViewController {

    // Variables:
    var car: Car!
    
    // Outlets:
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var makeLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var mpgLbl: UILabel!
    @IBOutlet weak var hpLbl: UILabel!
    @IBOutlet weak var speedometerLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.addRoundedBorder()
        
        // Do any additional setup after loading the view.
        loadComponents()
    }
    
    private func loadComponents() {
        makeLbl.text = car.make
        
        img.image = UIImage(named: car.imageName ?? "NA_icon")
        modelLbl.text = "\(car.model ?? "N/A") \(car.modelSpec ?? "N/A") (\(car.year ?? "N/A"))"
        speedometerLbl.text = car.zeroToSexty
        mpgLbl.text = "\(car.mpgStr ?? "N/A")/34"
        hpLbl.text = car.hpStr
        titleLbl.text = "Your \(car.model ?? "N/A")"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
