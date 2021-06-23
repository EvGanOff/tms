//
//  ViewController.swift
//  DZ4
//
//  Created by AWAIN on 21.06.2021.
//

import UIKit

typealias Person = (name: String, age: Int, sallary: Float)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

////     ======= Task 1 ========
        
        let firsPerson: Person = ("Oleg", 23, 200)
        let secondPerson: Person = ("Artem", 34, 200)
        let thirdPerson: Person = ("Olga", 70, 200)

        func forPerson(someEmployee: Person) {
            
            var employee = someEmployee
            
            switch employee.age {
            case 18...30:
                employee.sallary *= 1.5
            case 31...40:
                employee.sallary *= 2
            default:
                employee.sallary *= 3
            }
            
           print(employee)
        }
        print(" //////////      Task 1    ////////////     ")
        forPerson(someEmployee: firsPerson)
        forPerson(someEmployee: secondPerson)
        forPerson(someEmployee: thirdPerson)
        
        
 print("=================== ИЛИ ===============")
        
        
        var Person1: (name: String, age: Int, sallary: Float) = ("Oleg", 23, 200)
        var Person2: (name: String, age: Int, sallary: Float) = ("Artem", 37, 200)
        var Person3: (name: String, age: Int, sallary: Float) = ("Olga", 80, 200)

        func forPerson(someEmployee: inout (name: String, age: Int, sallary: Float)) {
            
            switch someEmployee.age {
            case 18...30:
                someEmployee.sallary *= 1.5
            case 31...40:
                someEmployee.sallary *= 2
            default:
                someEmployee.sallary *= 3
            }
            
           print(someEmployee)
        }
        print(" //////////      Task 1    ////////////     ")
        forPerson(someEmployee: &Person1)
        forPerson(someEmployee: &Person2)
        forPerson(someEmployee: &Person3)
        
//  ============ Task 2 ==========
        
        func srednee (param1: Float, param2: Float, param3: Float) {
            let a = param1
            let b = param2
            let c = param3
            var sum: Float = 0
            sum = Float(a + b + c)
            sum  /= 3
            print(sum)
        }
        print(" //////////      Task 2    ////////////     ")
        
        srednee(param1: 5.5, param2: 7.1, param3: 4.2)
        
        
        
        /////=============== Task 3 =============
        
        func calcuiationCredit(sum: Int, period: Int, percent: Float) {
            
            var m: Float = 0
            var s: Float = 0
            let n: Float = Float(sum)
            let y: Float = Float(period)
            let p: Float = percent / 100
            let value1: Float = 1 + p
            let value2: Float = Float(y)
            let powResult: Float = Float(pow(value1, value2))
            m = (n * p * powResult) / (12 * (powResult - 1))
            s = (m * 12) * y
            print("-----------------------")
            print("Сумма кредита (руб): \(Int(n))")
            print("Период (количество лет): \(Int(y))")
            print("Процент: \(Int(percent))")
            print("Ежемесячно: \(Int(round(m)))")
            print("Общая сумма: \(Int(round(s)))")
        
            
    }
        print(" //////////      Task 3    ////////////     ")
        calcuiationCredit(sum: 1000000, period: 10, percent: 12)
}

}
