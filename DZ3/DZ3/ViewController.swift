//
//  ViewController.swift
//  DZ3
//
//  Created by AWAIN on 18.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ///// Task 1
        
        typealias Person = (pushUps: Int, pullUps: Int, squats: Int)
        
        var someTuple: Person = (40, 12, 50)
        print(someTuple)
        
        //// Task 2
        
        print(someTuple.pushUps)
        print(someTuple.pullUps)
        print(someTuple.squats)
        
        print(someTuple.0)
        print(someTuple.1)
        print(someTuple.2)
        
        ///// Task 3
        
        let someTuple2: Person = (15, 10, 30)
        print(someTuple2.0)
        print(someTuple2.1)
        print(someTuple2.2)
//        var halper = someTuple2
//        print(halper)
//        someTuple = halper
//        print(someTuple)
        
        ///// Task 4
        
        var (pushUps, pullUps, squats) = someTuple
        
        var someTuple3 = (pushUps:(pushUps - 15), pullUps:(pullUps - 10), squats:(squats - 30))
        print(someTuple3)
        
//      Вопрос: Необходимо было распарсить оба тюпла?
        
        
        ///// Task 5
        
        let a: String = "5"
        let b: String? = "0jdf"
        let c: String = "2"
        let d: String = "3"
        let e: String? = "8lkdfv"
        
        var b2: Int? = Int(b!)
        var e2: Int? = Int(e!)
        
        var sum = 0
        var sum2 = 0
        
        if  b2 != nil {
            b2 = nil
        }
        
        if  e2 != nil {
            e2 = nil
        }
        
        sum = Int(a)! + Int(b2 ?? 0)
        print(sum)
        sum2 = sum + Int(c)! + Int(d)! + Int(e2 ?? 0)
        print(sum2)
        
        print("sum2 = \(a) + \(b2) + \(c) + \(d) + \(e2)")
        
        
        //// Task 6
        
        
//        let tuple1: (code: Int, message: String, errorMessage: String?) = (Int.random(in: 200..<300), "Massage", nil)
//        let (code, message, errorMessage) = tuple1
//
//        if code > 200 && code < 300 {
//            print(message)
//        } else {
//            print(errorMessage)
//        }
       
        var x = Int.random(in: 200..<300)
        
        var tuple1: (code: Int, message: String, errorMessage: String?) = (x, "Massage", nil)
        var (code, message, errorMessage) = tuple1
        if code == x {
            print(message)
            } else {
            print(errorMessage)
                }

        var tuple2: (message: String?, errorMessage: String?) = (nil, "errorMassage")
        if message == nil {
            print("Message")
            } else {
                print("errorMassage")
                }
        
        /////  и тут я запутался окончательно
        
        //// Task 7
        
        let student1: (name: String, carNumber: Int?, examPoints: Int?) = ("Джонни", 333, nil)
        let (name, carNumber, examPints) = student1
        var student2: (name: String, carNumber: Int?, examPoints: Int?) = ("Тонни", nil, 5)
        var student3: (name: String, carNumber: Int?, examPoints: Int?) = ("Иван", 777, nil)
        var student4: (name: String, carNumber: Int?, examPoints: Int?) = ("Илья", nil, 4)
        var student5: (name: String, carNumber: Int?, examPoints: Int?) = ("Ибрагим", 999, nil)
        
        if student1.name != nil {
            print(name)
            }
        if student1.carNumber != nil {
            print(carNumber!)
        } else {
            print(student1.carNumber)
            }
        if student1.examPoints != nil {
            print(examPints!)
        } else {
            print(student1.examPoints)
            }

        
            //// Task 8
            
        typealias FiveValue = (v1:Int?, v2:Int?, v3:Int?, v4:Int?, v5:Int?)
            
        let someTuple5: FiveValue = (6, 7, 1, 9, 3)
        let (v1, v2, v3, v4, v5) = someTuple5
        
        let sum4 = Int(v1!) + Int(v2!) + Int(v3!) + Int(v4!) + Int(v5!)
        print(sum4)
        let sum5 = Int(v1 ?? 0) + Int(v2 ?? 0) + Int(v3 ?? 0) + Int(v4 ?? 0) + Int(v5 ?? 0)
        print(sum5)
        
        var sum6 = 0
        if v1 != nil {
            sum6 += v1!
        }
        if v2 != nil {
            sum6 += v2!
        }
        if v3 != nil {
            sum6 += v3!
        }
        if v4 != nil {
            sum6 += v4!
        }
        if v5 != nil {
            sum6 += v5!
        }
        print(sum6)
            
        
        


    


        
        }
    }
