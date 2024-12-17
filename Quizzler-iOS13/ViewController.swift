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
    
    let quiz = [["Four + two equal to six?","True"], ["Is sky is yellow?","False"], ["Humans have 507 bones. True or False?","False"]]
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[questionNumber][0]
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print(questionNumber)
        if sender.currentTitle == quiz[questionNumber][1] {
            print(sender.currentTitle!)
            print(quiz[questionNumber][1])
            print("RIGHT")
        } else { print("WRONG")
            print(sender.currentTitle!)
            print(quiz[questionNumber][1])
        }
        
        updateUI()
        
    }
    
    func updateUI() {
      //  questionLabel.text = quiz[questionNumber][0]
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        }
       
    }
    


}

