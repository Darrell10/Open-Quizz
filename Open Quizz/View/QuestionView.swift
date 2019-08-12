//
//  QuestionView.swift
//  Open Quizz
//
//  Created by Frederick Port on 12/08/2019.
//  Copyright © 2019 StudiOS 21. All rights reserved.
//

import UIKit

class QuestionView: UIView {
    
    @IBOutlet private var label: UILabel!
    
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = #colorLiteral(red: 0.783455193, green: 0.9254883528, blue: 0.6281108856, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.9539787173, green: 0.5271614194, blue: 0.5785237551, alpha: 1)
            icon.image = UIImage(named: "Error")
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7489774823, green: 0.7690340877, blue: 0.7860667109, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = " " {
        didSet {
            label.text = title
        }
    }
    
    

}
