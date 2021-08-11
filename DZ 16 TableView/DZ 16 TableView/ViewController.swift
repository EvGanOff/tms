//
//  ViewController.swift
//  DZ 16 TableView
//
//  Created by Евгений Ганусенко on 03.08.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBAction func studentTable(_ sender: Any) {
        present(getViewController(from: "StudentViewController"), animated: true, completion: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    
    var colorArray = [Color]()
    static let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var arrayStudent = [Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        //var array = [Student]()
      
    
        for _ in 0..<200 {
            let j = Color()
            colorArray.append(j)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell {
//            var color = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
            
            let colorLable = self.colorArray[indexPath.row]
            cell.lable_.textColor = colorLable.color 
            cell.lable_.text = colorLable.text
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    
}

