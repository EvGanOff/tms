//
//  Painter.swift
//  DZ 7
//
//  Created by AWAIN on 03.07.2021.
//

import Foundation

class Painter: Artist {
     
    var firstN: String = "Amazing ~ Pablo ~"
    var secondN: String = "Picasso"
    
   override init(firstName: String, secondName: String ) {
        super.init(firstName: firstN, secondName: secondN)
        self.firstN = firstName
        self.secondN = secondName
    }
    
    override func performance() -> String {
        return "\(firstName) \(secondName) - пишет картину"
    }
}
