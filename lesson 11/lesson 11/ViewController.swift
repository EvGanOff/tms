//
//  ViewController.swift
//  lesson 11
//
//  Created by AWAIN on 15.07.2021.
//

import UIKit
var view1: UIView!
var label: UILabel!

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonZero: UIView!
    @IBOutlet var button: [UIView]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        for value in button {
            value.layer.cornerRadius = value.frame.size.width / 2
        }
        buttonZero.layer.cornerRadius = buttonZero.frame.size.width / 5

        }
}
 
    

  


