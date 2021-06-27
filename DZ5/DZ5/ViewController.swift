//
//  ViewController.swift
//  DZ5
//
//  Created by AWAIN on 26.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("//////////////////       Task - 1      ///////////////")
        
        let englishABC: String = "abcdefghijkimnopqrstuvwxyz"
        let someConst: String = "j"

        for (index, value) in englishABC.enumerated(){             ////  - перебираем массив
            print("index - \(index), value - \(value)")
                if index == 9 {                                    ////  - смотрим под каким индексом "j"
                    print("value - \(value) == someConst \(someConst)")
                        break
            }
        }
        
        func getMeCharacter(from abc: String, at index : Int) -> String? {
            guard abc.count > index else { return nil }
            for (indexString, value) in englishABC.enumerated()  {
                    if indexString == index {
                        return String (value)
                }
            }
            return nil
        }
        ///// print("\(getMeCharacter(from: englishABC, at: 9))") выведет опциональный тип
        if getMeCharacter(from: englishABC, at: 9) != nil {
            print(getMeCharacter(from: englishABC, at: 9)!)
        } else {
            print(getMeCharacter(from: englishABC, at: 9) == nil)
        }
        print("//////////////////       Task - 2      ///////////////")

        let arrayDaysInMonths: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let arrayMonths: [String] = ["Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь"]
        for value in 0..<arrayDaysInMonths.count {
            print(arrayDaysInMonths[value])
        }
        print("========     1")
        for (index, value) in arrayDaysInMonths.enumerated() {
            print("\(arrayMonths[index]) - \(value)")
            
        }
        print("========     2")
        for value in 0..<arrayDaysInMonths.count {
            let tupleArray: (month: String, days: Int) = (arrayMonths[value], arrayDaysInMonths[value])
            print("\(tupleArray.month) - \(tupleArray.days)")
        }
        print("========     3")
        for value in 0..<arrayDaysInMonths.count {
            let tupleArray: (month: String, days: Int) = (arrayMonths[value], arrayDaysInMonths[value])
            print("\(tupleArray.month) - \(tupleArray.days)")
        }
        print("========     4")
        var tupleArray:[(month: Any?, days: Any?)] = []
        for value in 0..<arrayDaysInMonths.count {
            let tuple = (arrayMonths[value], arrayDaysInMonths[value])
            //print("\(tupleArray.0) - \(tupleArray.1)")
            tupleArray.append(tuple)
            tupleArray.reverse()
            }
        for value in tupleArray {
            
            if value == nil {
                continue
            }
            print("\(value.month!) - \(value.days!)")
//            if value.month is String {
//                print(value.month!)
//            }
//            if value.days is Int {
//                print(value.days!)
//            }
        }
        
        print("========     5")
            
        print("//////////////////       Task - 3      ///////////////")

        let someArrayStr: String = "абвгдеежзийклмнопрстуфхцчшщъыьэюя"
        var someMass: [String] = []
        for value in someArrayStr {
            someMass.append(String(value))
            someMass.reverse()
        }
        print(someMass)
        
        print("//////////////////       Task - 4      ///////////////")
        var arrayText: [String] = []
        let someText: String = "dflkvnldlkdnfvldknfkdnflvnldfnbblkdnlfbkndlfkbnldkfnblkdfnv3i4j9838u4003943;4mf,/.rjgfh284f834oifeevinnviwjrf8u3984y3i4;lm/3h3984yg8j3p4knrglkdfvlkdeofvhov3y4983plml'oeihovheoirrvlkdlfv;jpiwe7yff34hjnsldjvwo4ihr34f/.kuheifuh774gfuskdhvufkvbksjvjbi4flfjbwdgv87bwjrnvku2bbkjl8y8274fuojf.wjvh48f"
        for value in someText {
            arrayText.append(String(value))
            
        }

        
        print("//////////////////       Task - 5      ///////////////")       //  неравильно сделал
        var array1: [Double] = [5, 3, 6, 2, 7]
        func reveresArray1(someArray: inout [Double]) ->  [Double] {
                someArray.reverse()
            return someArray
        }
        print(reveresArray1(someArray: &array1))
        
//        func reveresArray2(someArray: [Double]...) ->  [Double] {
//
//
//        }
        print("//////////////////       Task - 6      ///////////////")
        
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}


