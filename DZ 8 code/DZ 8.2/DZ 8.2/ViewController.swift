//
//  ViewController.swift
//  DZ 8.2
//
//  Created by AWAIN on 08.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let x: Double = 0
        let y: Double = Double(self.view.bounds.height) / 4
        
        let squere = UIView(frame: CGRect(x: x, y: y, width: 400, height: 400))
        squere.backgroundColor = UIColor.gray
        self.view.addSubview(squere)
        
        for x in 0..<8 {
            for y in 0..<8 {
                if x % 2 == y % 2 {
                    let value = UIView(frame: CGRect(x: 50 * Double(x), y: 50 * Double(y), width: 50, height: 50))
                    value.backgroundColor = UIColor.black
                    squere.addSubview(value)
                }
            }
        }
    }
}

