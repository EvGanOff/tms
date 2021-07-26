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
    @IBAction func statistic(_ sender: Any) {
        present(getViewController(from: "StatisticViewController"), animated: true, completion: nil)
    }
    @IBAction func settings(_ sender: Any) {
        present(getViewController(from: "SettingsViewController"), animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
