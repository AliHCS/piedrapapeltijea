//
//  ViewController.swift
//  Piedra_Papel_Tijera
//
//  Created by Diplomado on 14/10/23.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var GameModeView: RoundPlay!
    
    @IBAction func InfoAction(_ sender: UIButton) {
        if sender.tag == 0 {
            segueToInfo()
        } else {
//            segueToGame()
        }
    }
    func segueToInfo() {
        let shareViewController = InfoAction()
        present(shareViewController, animated: true)
    }
    
//    func segueToGame() {
//        guard let photosViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ImageStackViewController") as? ImageStackViewController else { return }
//        photosViewController.showCat = photoTypeSwitch.isOn
//        if customTitleSwitch.isOn {
//            photosViewController.title = titleTextField.text
//        }
//        navigationController?.pushViewController(photosViewController, animated: true)
//    }
}

