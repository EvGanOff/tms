//
//  Artist.swift
//  DZ 7
//
//  Created by AWAIN on 03.07.2021.
//

import Foundation

class Artist: NSObject{
    let firstName: String
    let secondName: String
    init(firstName: String, secondName: String) {
        self.firstName = firstName
        self.secondName = secondName
    }
    
    func performance() -> String {
        return "performance"
    }
}

