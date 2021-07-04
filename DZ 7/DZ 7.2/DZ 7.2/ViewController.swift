//
//  ViewController.swift
//  DZ 7.2
//
//  Created by AWAIN on 03.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let hel = Helicopter(speed: 200, holdingСapacity: 4, priceOfOneKm: 600, name: "Вертолет")
        let car = Car(speed: 120, holdingСapacity: 4, priceOfOneKm: 4, name: "Автомобиль")
        let airplane = Airplane(speed: 750, holdingСapacity: 200, priceOfOneKm: 500, name: "Самолет")
        let ship = Ship(speed: 60, holdingСapacity: 500, priceOfOneKm: 50, name: "Корабль")
        
        let arrayVehicle = [hel, car, airplane, ship]
        for vehicle in arrayVehicle {
            vehicle.transportation(passanger: 100, distance: 2000)
        }
        
        
        
        
        
    }
    


}

