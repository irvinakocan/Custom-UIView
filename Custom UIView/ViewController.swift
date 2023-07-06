//
//  ViewController.swift
//  Custom UIView
//
//  Created by Macbook Air 2017 on 8. 6. 2023..
//

import UIKit

class ViewController: UIViewController {
    let cardView = CardView(imageName: "ProfilePicture1", username: "moewkitty", spiritAnimal: "tiger", chineseHoroscope: "rabbit")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        cardView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
    }
}

