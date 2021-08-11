//
//  Student.swift
//  DZ 16 TableView
//
//  Created by Евгений Ганусенко on 8/9/21.
//

import UIKit

class Student: NSObject {
    var firstName = String()
    var lastName = String()
    var avMark = Int()
    
    var fullName: String {
        return self.firstName + " " + self.lastName
    }
    
    init(firstName: String, lastName: String, avMark: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.avMark = avMark
        
        super.init()
    }
    
}
