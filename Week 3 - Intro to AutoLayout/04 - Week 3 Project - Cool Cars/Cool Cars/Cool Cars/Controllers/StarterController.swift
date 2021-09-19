//
//  ViewController.swift
//  Cool Cars
//
//  Created by Guilherme Andre on 16/08/2021.
//

import UIKit

class StarterController: UIViewController {
    
    // Variables:
    var car: Car!
    
    // Outlets:
    @IBOutlet weak var skylineBtn: UIButton!
    @IBOutlet weak var supraBtn: UIButton!
    @IBOutlet weak var skylineStackView: UIStackView!
    @IBOutlet weak var supraStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.s
        
        car = Car(make: "", model: "", modelSpec: "", year: "", zeroToSexty: "", hpStr: "", mpgStr: "", imageName: nil)
        
        skylineBtn.addRoundedBorder()
        supraBtn.addRoundedBorder()
        skylineStackView.addRoundedBorder()
        supraStackView.addRoundedBorder()
        
        //Set Recognizer For the Skyline
        setGestureRecognizerForSkyline()
        
        //Set Recognizer For the Supra
        setGestureRecognizerForSupra()
        
        // Will disable the btn and remove the borders from the button and stack view
        disableSkylineBtnAndStackView()
        disableSupraBtnAndStackView()
    }

    @IBAction func skylineSwap(_ sender: Any) {
        skylineSelected()
        performSegue(withIdentifier: "yourCarVCSegue", sender: self)
    }
    
    @IBAction func supraSwap(_ sender: Any) {
        supraSelected()
        performSegue(withIdentifier: "yourCarVCSegue", sender: self)
    }
    
    @IBAction func unwindFromYourCarViewController(unwindSegue: UIStoryboardSegue) {
        
    }
    
    private func setGestureRecognizerForSkyline() {
        //Gesture Recognizer For Stack View For the Skyline
        let tapForSkylineGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTapSkylineAction))
        
        skylineStackView.addGestureRecognizer(tapForSkylineGestureRecognizer)
    }
    
    //
    private func setGestureRecognizerForSupra() {
        //Gesture Recognizer For Stack View For the Supra
        let tapForSupraGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTapSupraAction))
        
        supraStackView.addGestureRecognizer(tapForSupraGestureRecognizer)
    }
    
    // Tap Action to Skyline
    @objc private func onTapSkylineAction(recognizer: UITapGestureRecognizer) {
        // Will enable the btn and put the borders from the button and stack view
        enableSkylineBtnAndStackView()
        
        // Will disable the btn and remove the borders from the button and stack view
        disableSupraBtnAndStackView()
    }
    
    // Tap Action to Supra
    @objc private func onTapSupraAction(recognizer: UITapGestureRecognizer) {
        // Will enable the btn and put the borders from the button and stack view
        enableSupraBtnAndStackView()
        
        // Will disable the btn and remove the borders from the button and stack view
        disableSkylineBtnAndStackView()
    }
    
    private func disableSkylineBtnAndStackView() {
        skylineBtn.isEnabled = false
        skylineBtn.layer.borderWidth = 0.0
        skylineStackView.layer.borderWidth = 0.0
    }
    
    private func enableSkylineBtnAndStackView() {
        skylineBtn.isEnabled = true
        skylineBtn.layer.borderWidth = 3.0
        skylineStackView.layer.borderWidth = 3.0
    }
    
    private func disableSupraBtnAndStackView() {
        supraBtn.isEnabled = false
        supraBtn.layer.borderWidth = 0.0
        supraStackView.layer.borderWidth = 0.0
    }
    
    private func enableSupraBtnAndStackView() {
        supraBtn.isEnabled = true
        supraBtn.layer.borderWidth = 3.0
        supraStackView.layer.borderWidth = 3.0
    }
    
    private func skylineSelected() {
        car.make = "NISSAN"
        car.model = "Skyline"
        car.modelSpec = "GTR"
        car.year = "2001"
        car.zeroToSexty = "2.8"
        car.hpStr = "837"
        car.mpgStr = "20"
        car.imageName = "nissan-skyline-r34"
    }
    
    private func supraSelected() {
        car.make = "TOYOTA"
        car.model = "Supra"
        car.modelSpec = "2JZ"
        car.year = "1998"
        car.zeroToSexty = "2.7"
        car.hpStr = "821"
        car.mpgStr = "21"
        car.imageName = "supra-twin-turbo"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let yourCarVC = segue.destination as? YourCarViewController {
            yourCarVC.car = car
        }
    }

}

