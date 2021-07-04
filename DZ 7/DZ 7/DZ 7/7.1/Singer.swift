//
//  Singer.swift
//  DZ 7
//
//  Created by AWAIN on 03.07.2021.
//

import Foundation

class Singer: Artist {
    
    override func performance() -> String {
        return "\(firstName) \(secondName) - поёт калинку"
    }
}
