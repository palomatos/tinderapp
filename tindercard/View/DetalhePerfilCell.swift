//
//  DetalhePerfilCell.swift
//  tindercard
//
//  Created by Paloma Matos on 09/08/20.
//  Copyright © 2020 Paloma Matos. All rights reserved.
//

import UIKit

class DetalhePerfilCell: UICollectionViewCell {
    
    var usuario: Usuario? {
        didSet {
            if let usuario = usuario {
                nomeLabel.text = usuario.nome
                idadeLabel.text = String(usuario.idade)
                fraseLabel.text = usuario.frase
            }
        }
    }
    
    let nomeLabel: UILabel = .textLabel(font: .boldSystemFont(ofSize: 32))
    let idadeLabel: UILabel = .textLabel(font: .systemFont(ofSize: 28))
    let fraseLabel: UILabel = .textLabel(numberOfLines: 2, font: .systemFont(ofSize: 18))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    let nomeIdadeStackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
    nomeIdadeStackView.spacing = 12
    
    let stackView = UIStackView(arrangedSubviews: [nomeIdadeStackView, fraseLabel])
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    
    addSubview(stackView)
    stackView.preencherSuperView(padding: .init(
    top: 20,
    left: 20,
    bottom: 20,
    right: 20
    ))
}
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
