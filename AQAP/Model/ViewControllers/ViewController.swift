//
//  ViewController.swift
//  AQAP
//
//  Created by Edgar Backer on 2023-03-31.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let segueGoToGame = "GoToGame"

    
    @IBOutlet weak var rulesLabel: UILabel!
    
    
    @IBOutlet weak var pickLvl: UIPickerView!
    
    @IBOutlet weak var startTheGame: UIButton!
    
    let difficultyLevels = ["Easy", "Intermediate", "Hard"]
        var selectedDifficultyLevel: DifficultyLevel = .easy
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickLvl.delegate = self
        pickLvl.dataSource = self
        startTheGame.addTarget(self, action: #selector(getter: startTheGame), for: .touchUpInside)
        
        rulesLabel.text = "Welcome to AQAP! The game where you write As Quick As Possible. In this game you will be shown words which you need to write in the field below. You have 5 s for each word. 1 point/word or -1 for each mistake. Each game is 10 rounds. Can you make the highscore? "
    }

    
    @objc func startGame() {
        performSegue(withIdentifier: "GoToGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueGoToGame {
            if let gameVC = segue.destination as? GameViewController
            { gameVC.gameTime = selectedDifficultyLevel.gameTime()
            }
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return difficultyLevels.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return difficultyLevels[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedDifficultyLevel = DifficultyLevel(rawValue: row) ?? .easy
    }
    
    
    
}

