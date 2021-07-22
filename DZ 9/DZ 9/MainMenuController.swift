//
//  MainMenuController.swift
//  DZ 9
//
//  Created by AWAIN on 22.07.2021.
//

import UIKit

class MainMenuController: UIViewController {

    @IBAction func newGame(_ sender: Any) {
        present(getViewController(from: "ViewController"), animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func getViewController(from id: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
        currentViewController.modalPresentationStyle = .fullScreen
        currentViewController.modalTransitionStyle = .crossDissolve
        return currentViewController
    }

}
