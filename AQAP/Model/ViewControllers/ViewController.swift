//
//  ViewController.swift
//  AQAP
//
//  Created by Edgar Backer on 2023-03-31.
//

import UIKit

class ViewController: UIViewController {
    
    let segueGoToGame = " GoToGame"

    
    @IBOutlet weak var rulesLabel: UILabel!
    
    @IBOutlet weak var pickLevel: UIPickerView!
    
    var levels = ["Easy", "intermediate","Hard"]
    var timeLimits = [60,40,20]
    var selectedLevel: String?
    var selectedTimeLimtis: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rulesLabel.text = "Welcome to AQAP! The game where you write As Quick As Possible. In this game you will be shown words which you need to write in the field below. You have 5 s for each word. 1 point/word or -1 for each mistake. Each game is 10 rounds. Can you make the highscore? "
    }
    
  
        
    
    
    
    
}

