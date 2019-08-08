//
//  Game.swift
//  Open Quizz
//
//  Created by Frederick Port on 08/08/2019.
//  Copyright © 2019 StudiOS 21. All rights reserved.
//

import Foundation
class Game {
    var score: Int = 0
    var questions = [Question]()
    var state: State = .ongoing
    
    private var currentIndex = 0
    var currentQuestion: Question {
        return questions[currentIndex]
    }
    
    enum State {
        case ongoing, over
    }
    
    func answerCurrentQuestion(with answer: Bool) {
        if (currentQuestion.isCorrect && answer) || (!currentQuestion.isCorrect && !answer) {
            score += 1
        }
        nextQuestion()
    }
    
    func nextQuestion(){
        if currentIndex < questions.count - 1 {
            currentIndex += 1
        }
        else {
            state = .over
        }
    }
    
    func refresh (){
        score = 0
        currentIndex = 0
        state = .over
        
        QuestionManager.shared.get(completionHandler: receveidQuestions(_:))
    }
    
    private func receveidQuestions(_ questions: [Question]) {
        self.questions = questions
        print(questions)
        state = .ongoing
    }
}
