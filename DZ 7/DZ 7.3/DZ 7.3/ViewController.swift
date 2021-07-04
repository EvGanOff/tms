//
//  ViewController.swift
//  DZ 7.3
//
//  Created by AWAIN on 04.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let human1 = Human()
        let human2 = Human()
        let dog1 = Dog()
        let dog2 = Dog()
        let giraff1 = Giraff()
        let giraff2 = Giraff()
        let monkey1 = Monkey()
        let monkey2 = Monkey()
        let crocodil1 = Crocodil()
        let crocodil2 = Crocodil()
        
        var animalCount = 0
        var quadLegsOrg = 0
        var humanCount = 0
        var sumOrg = 0
        let arrayOrganism = [human1, human2, dog1, dog2, giraff1, giraff2, monkey1, monkey2, crocodil1, crocodil2]
        
        for value in arrayOrganism {
            if (value is Animals) {
                animalCount += 1
            }
            if (value is Human) {
                humanCount += 1
            }
            if (value is Quadlegs) {
                quadLegsOrg += 1
            }
            sumOrg += 1
        }
        
        print("Четвероногие - \(quadLegsOrg)")
        print("Животные - \(animalCount)")
        print("Людей - \(humanCount)")
        print("Всего существ - \(sumOrg)")
    }

}

