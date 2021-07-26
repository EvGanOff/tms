//
//  StatisticViewController.swift
//  DZ 9
//
//  Created by AWAIN on 26.07.2021.
//

import UIKit

class StatisticViewController: UIViewController {
    @IBAction func backToMenu(_ sender: Any) {
        present(getViewController(from: "MainMenuController"), animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
