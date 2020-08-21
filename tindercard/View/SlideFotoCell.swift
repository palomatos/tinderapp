//
//  SlideFotoCell.swift
//  tindercard
//
//  Created by Paloma Matos on 10/08/20.
//  Copyright © 2020 Paloma Matos. All rights reserved.
//

import UIKit

class SlideFotoCell: UICollectionViewCell {
    
    var fotoImageView: UIImageView = .fotoImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 8
        clipsToBounds = true
        
        addSubview(fotoImageView)
        fotoImageView.preencherSuperView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
