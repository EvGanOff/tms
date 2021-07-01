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
    var studentsNote: [Student]
    init(gropeName: String, studentArray: [Student]) {
        self.studentsNote = studentArray
        self.gropeName = gropeName
    }
    
    ///======== метод вывода =======
    
    func getStudents() {
        let someArr = studentsNote
        for (index, value) in someArr.enumerated() {
            print("№","\(index + 1)", "Имя - \(value.studentFirstName)", "||", "Фамилия - \(value.studentSecondName)", "||", "Возраст - \(value.studentAge)", "||", "Средний балл - \(value.studentMark)")
        }
    }
    
    ///========== метод отбора студентов ========
    
    func removeStudents(funcStudentMark: Int) {
        for (index, value) in studentsNote.enumerated().reversed() {
            if value.studentMark < funcStudentMark {
                studentsNote.remove(at: index)
                print("№","\(index + 1)", "Имя - \(value.studentFirstName)", "||", "Фамилия - \(value.studentSecondName)", "||", "Возраст - \(value.studentAge)", "||", "Средний балл - \(value.studentMark)")
            }
        }
        
    }
}
