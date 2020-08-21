//
//  UILabel.swift
//  tindercard
//
//  Created by Paloma Matos on 18/07/20.
//  Copyright © 2020 Paloma Matos. All rights reserved.
//

import UIKit

extension UILabel {
    
    static func textLabel(textColor: UIColor = .black,
                          numberOfLines: Int = 1,
                          font: UIFont) -> UILabel {
        
            let label = UILabel()
            label.font = font
            label.textColor = textColor
            label.numberOfLines = numberOfLines
            return label
    }
    
    func adicionaShadow () {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
}
