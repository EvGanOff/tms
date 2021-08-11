//
//  Color.swift
//  DZ 16 TableView
//
//  Created by Евгений Ганусенко on 8/8/21.
//

import UIKit

class Color: NSObject {
    
    var text = String()
    var color = UIColor()
    
     override init() {
        
        super .init()
        let r = CGFloat.random(in: 0...255)
        let g = CGFloat.random(in: 0...255)
        let b = CGFloat.random(in: 0...255)
        
        self.color = self.randomColor(r: r / 255.0, g: g / 255.0, b: b / 255.0)
        self.text = String(format: "RGB: (%1.0f, %1.0f, %1.0f) ", r, g, b) //"RGB(\(r),\(g),\(b))"
    }
    
    func randomColor(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    
    
}
