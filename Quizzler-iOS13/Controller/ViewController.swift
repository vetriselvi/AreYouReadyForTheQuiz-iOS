//
//  ViewController.swift
//  Quizzler-iOS13
//
//
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
 
        let userAnswer = sender.currentTitle! //True or False
        
        let check = quizBrain.checkAnswer(userAnswer)
        
        
        
        if check == true {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
               
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

        quizBrain.nextQuestion()
        
    }
    
    @objc func updateUI() {
      //  questionLabel.text = quiz[questionNumber][0]
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        scoreLabel.text = "Score: \(quizBrain.getScore()) "
        progressBar.progress = quizBrain.getProgress()
        
       
    }
    


}

