//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by JiJi on 2/14/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Four + two equal to six?", a: "True"),
        Question(q: "Is sky is yellow?", a: "False"),
        Question(q: "Humans have 507 bones. True or False?", a: "False")
        
    ]
    
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer (_ userAnswer: String) -> Bool{
        if (userAnswer == quiz[questionNumber].answer) {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText () -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress () -> Float {
        return Float(questionNumber+1) / Float(quiz.count)
    }
    
    mutating func nextQuestion () {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore () -> Int {
        return score
    }
}
