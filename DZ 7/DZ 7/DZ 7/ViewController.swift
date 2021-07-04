//
//  ViewController.swift
//  DZ 7
//
//  Created by AWAIN on 03.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let dencer = Danser(firstName: "Valera", secondName: "Petrenko")
        let singer = Singer(firstName: "Alla", secondName: "Pugach")
        let painter = Painter(firstName: "Vanya", secondName: "Ivanov")
        
//        print(dencer.performance())
//        print(singer.performance())
//        print(painter.performance())
        
        let array: [Artist] = [dencer, singer, painter]
        for value in array {
            print(value.performance())
        }
        
    }


}

