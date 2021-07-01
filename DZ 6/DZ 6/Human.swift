//
//  Human.swift
//  DZ 6
//
//  Created by AWAIN on 30.06.2021.
//

import Foundation


class Student {
    var studentFirstName: String
    var studentSecondName: String
    let studentAge: Int
    let studentMark: Int
    
    init(studentfirsName: String, studentSecondName: String, studentAge: Int, studentMark: Int ) {
        self.studentFirstName = studentfirsName
        self.studentSecondName = studentSecondName
        self.studentAge = studentAge
        self.studentMark = studentMark
    }
}

class Group {
    
    let gropeName: String
    let studentsNote: [Student]
    init(gropeName: String, studentArray: [Student]) {
        self.studentsNote = studentArray
        self.gropeName = gropeName
    }
    
    ///======== метод вывода =======
    
    func getStudents(array: [Student]) {
        for (index, value) in array.enumerated() {
            print("№","\(index + 1)", "Имя - \(value.studentFirstName)", "||", "Фамилия - \(value.studentSecondName)", "||", "Возраст - \(value.studentAge)", "||", "Средний балл - \(value.studentMark)")
        }
    }
    
    ///========== метод отбора студентов ========
    
    func removeStudents(array: [Student]) {
        var hallperAray = array
        for (index, value) in hallperAray.enumerated() {
            if value.studentMark > 3 {
                hallperAray.removeAll()
                print("№","\(index + 1)", "Имя - \(value.studentFirstName)", "||", "Фамилия - \(value.studentSecondName)", "||", "Возраст - \(value.studentAge)", "||", "Средний балл - \(value.studentMark)")
            }
        }
    }
}
