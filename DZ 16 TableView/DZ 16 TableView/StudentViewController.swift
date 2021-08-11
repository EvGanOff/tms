//
//  StudentViewController.swift
//  DZ 16 TableView
//
//  Created by Евгений Ганусенко on 8/9/21.
//

import UIKit

class StudentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    static let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    @IBOutlet weak var studentTableView: UITableView!
    var arrayStudent = [[Student]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentTableView.dataSource = self
        studentTableView.delegate = self
        
        var mark5 = [Student]()
        var mark4 = [Student]()
        var mark3 = [Student]()
        var mark2 = [Student]()
        
        for v in 0..<25 {
            let student = Student(firstName: "\(StudentViewController.alphabet[Int.random(in: 0...StudentViewController.alphabet.count - 1)])Имя",
                                  lastName: "№\(v)",
                                  avMark: Int.random(in: 2...5))
            switch student.avMark {
            case 5: mark5.append(student)
            case 4: mark4.append(student)
            case 3: mark3.append(student)
            case 2: mark2.append(student)
            default: break
            }
        }
        
        let sortedMark5 = mark5.sorted { $0.firstName < $1.firstName }
        let sortedMark4 = mark4.sorted { $0.firstName < $1.firstName }
        let sortedMark3 = mark3.sorted { $0.firstName < $1.firstName }
        let sortedMark2 = mark2.sorted { $0.firstName < $1.firstName }
        
        if !sortedMark5.isEmpty {
            self.arrayStudent.append(sortedMark5)
        }
        if !sortedMark4.isEmpty {
            self.arrayStudent.append(sortedMark4)
        }
        if !sortedMark3.isEmpty {
            self.arrayStudent.append(sortedMark3)
        }
        if !sortedMark2.isEmpty {
            self.arrayStudent.append(sortedMark2)
        }
        
       
    }
   

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayStudent[section].count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         var cell2 = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell") as? StudentTableViewCell
        if (cell2 == nil) {
            cell2 = StudentTableViewCell(style: .value1, reuseIdentifier: "")
        }
            let studentArray = self.arrayStudent[indexPath.section]
        let students = studentArray[indexPath.row]
            
        cell2!.textLabel?.text = "Полное имя: \(students.firstName)"
        cell2!.detailTextLabel!.text = "Оценка: \(students.avMark)"
        cell2!.contentView.backgroundColor = students.avMark < 3 ? .red : .clear
        
        return cell2!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            title = "Отличники"
        case 1:
            title = "Хорошисты"
        case 2:
            title = "Троешники"
        case 3:
            title = "Двоешники"
        default: break
        }
        return title
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.arrayStudent.count
    }
 

}
