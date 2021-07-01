//
//  ViewController.swift
//  DZ 6
//
//  Created by AWAIN on 30.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let student1 = Student(studentfirsName: "Ivan",
                               studentSecondName: "Ivanov",
                               studentAge: 20,
                               studentMark: 5)
        
        let student2 = Student(studentfirsName: "Sergey",
                               studentSecondName: "Pupkin",
                               studentAge: 24,
                               studentMark: 2)
        
        let student3 = Student(studentfirsName: "Anna",
                               studentSecondName: "Drozdova",
                               studentAge: 23,
                               studentMark: 6)
        
        let student4 = Student(studentfirsName: "Valera",
                               studentSecondName: "Miladze",
                               studentAge: 65,
                               studentMark: 3)
        
        let student5 = Student(studentfirsName: "Artur",
                               studentSecondName: "Pirozhkov",
                               studentAge: 33,
                               studentMark: 9)
        
        
        let studentsNoteBook = Group.init(gropeName: "AC - 100", studentArray: [student1, student2, student3, student4, student5])
        
        print("===================",studentsNoteBook.gropeName,"===================")
        print()
        studentsNoteBook.getStudents()
        
        print()
        print("============ Cтуденты, у кого средний балл выше 3 ===========")
        print()
        print("===================",studentsNoteBook.gropeName,"===================")
        print()
        studentsNoteBook.removeStudents(funcStudentMark: 5)
        
    }
}
