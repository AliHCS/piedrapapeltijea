//
//  InfoController.swift
//  Piedra_Papel_Tijera
//
//  Created by Diplomado on 14/10/23.
//

import UIKit

class InfoViewController: UIViewController, {
    
    private lazy var infoLabel: UILabel = {
        let infoLabel = UILabel()
        return infoLabel
    }()
    
    private lazy var shareButton: UIButton = {
        let action = UIAction(title: "Share") { [weak self] _ in
            self?.shareButtonTapped()
        }
        let button = UIButton(primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        //previo a iOS 14 -> por eso el @objc
        //let button = UIButton()
        //button.addTarget(self, action: #selector(shareButtonTapped), for: .touchUpInside)
        //button.setTitle("Share", for: .normal)
        return button
        
    }()
    
        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setElements()
    }
    
    private func setElements() {
        view.addSubview(textView)
        view.addSubview(shareButton)
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            textView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            textView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            textView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            shareButton.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 20),
            shareButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3),
            shareButton.heightAnchor.constraint(equalToConstant: 50),
            shareButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }


}

