//
//  Vehicle.swift
//  DZ 7.2
//
//  Created by AWAIN on 03.07.2021.
//

import Foundation

class Vichle: NSObject{
    let name : String
    let speed: Int
    let holdingСapacity: Double
    let priceOfOneKm: Double
    
    init(speed: Int, holdingСapacity: Double, priceOfOneKm: Double, name: String ) {
        self.speed = speed
        self.holdingСapacity = holdingСapacity
        self.priceOfOneKm = priceOfOneKm
        self.name = name
        
    }
    func transportation(passanger: Double, distance: Int)  {
        //let repeats = (passanger / self.holdingСapacity) * Double(time)
        let price = (passanger * self.priceOfOneKm * Double(distance)) /  Double(self.holdingСapacity)
        let time =  Double(distance / self.speed)
        let repeats = ceil(Double(passanger / self.holdingСapacity))
        print(name)
        print()
        print("Количество затраченного времени \(time)")
        print("Количество затраченных денег \(price)")
        print("Количество транспортных средств (ездка) \(Int(repeats))")
        print()
    }
    
    
    
}
