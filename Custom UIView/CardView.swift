//
//  CardFile.swift
//  Custom UIView
//
//  Created by Macbook Air 2017 on 8. 6. 2023..
//

import Foundation
import UIKit

class CardView: UIView {
    let imageName: String
    let username: String
    let spiritAnimal: String
    let chineseHoroscope: String
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
        imageView.image = UIImage(named: imageName)
        return imageView
    }()
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "username: " + username
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.layer.borderWidth = 3
        label.layer.borderColor = UIColor.purple.withAlphaComponent(0.4).cgColor
        return label
    }()
    
    lazy var horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 20.0
        stack.alignment = .top
        stack.distribution = .fillProportionally
        stack.addArrangedSubview(profileImageView)
        stack.addArrangedSubview(usernameLabel)
        return stack
    }()
    
    lazy var spiritAnimalLabel: UILabel = {
        let label = UILabel()
        label.text = "spirit animal: " + spiritAnimal
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    lazy var chineseHoroscopeLabel: UILabel = {
        let label = UILabel()
        label.text = "chinese horoscope: " + chineseHoroscope
        label.textColor = .black
        label.font = .systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    lazy var verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10.0
        stack.alignment = .leading
        stack.addArrangedSubview(horizontalStack)
        stack.addArrangedSubview(spiritAnimalLabel)
        stack.addArrangedSubview(chineseHoroscopeLabel)
        return stack
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(imageName: String, username: String, spiritAnimal: String, chineseHoroscope: String) {
        self.imageName = imageName
        self.username = username
        self.spiritAnimal = spiritAnimal
        self.chineseHoroscope = chineseHoroscope
        super.init(frame: .zero)
        
        backgroundColor = .lightGray
        addSubview(verticalStack)
        
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        verticalStack.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        verticalStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        verticalStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}
