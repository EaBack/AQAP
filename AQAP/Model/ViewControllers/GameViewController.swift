//
//  GameViewController.swift
//  AQAP
//
//  Created by Edgar Backer on 2023-03-31.
//

import UIKit

class GameViewController: UIViewController {
    
    var word = Words()
    var randomWord: String = " "

    
    @IBOutlet weak var playtime: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var CountdownTimer: UILabel!
    @IBOutlet weak var displayWord: UILabel!
    
    var timer1: Timer?
    var countDown = 3
    
    var gameTime: Int = 60
    var timer2: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        randomWord = word.listOfWords.randomElement() ?? " "
        print(randomWord)
        displayWord.text = randomWord
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
                    self.gameTime -= 1
                    self.playtime.text = "\(self.gameTime) seconds left"
                    
                    if self.gameTime == 0 {
                        self.gameOver()
                    }
                })
            }
            
            func gameOver() {
                timer2?.invalidate()
                // Show game over screen
            }
    
    @IBAction func playerInput(_ sender: UITextField) {
    }
    
    @IBAction func startPlaying(_ sender: UIButton) {
        print("starting...please wait")
        //startPlaying.isHidden = true
        CountdownTimer.isHidden = false
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDownAction), userInfo: nil, repeats: true)
    }
    
    @objc func countDownAction() {
        countDown -= 1
        CountdownTimer.text = "\(countDown)"
        if countDown == 0 {
            CountdownTimer.isHidden = true
            displayWord.isHidden = false
            timer1?.invalidate()
            let randomIndex = Int.random(in: 0..<randomWord.count)
            displayWord.text = randomWord
             }
    }
    
    func checkWord(){
        
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
