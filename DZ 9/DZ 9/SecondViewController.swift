//
//  SecondViewController.swift
//  DZ 9
//
//  Created by AWAIN on 10.07.2021.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{
    
    

    @IBOutlet weak var buttonFolowFirstView: UIButton!
    weak var delegate: ViewControllerResultDelegate?
    @IBAction func buttonFolowFirstView (_ sender: UIButton) {
        guard let age = Int(userAge.text!) else { return }
        let gender = (userGender.text!) 
        delegate?.result(age, textField2: gender)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var resultUserName: UILabel!
    var resultName: String = ""
    var validForUserAge = ValidForUserAge()
    var validForUserGender = ValidForUserGender()
    @IBOutlet weak var userAge: UITextField!
    
    
    @IBOutlet weak var userGender: UITextField!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard !string.isEmpty else { return true }
        switch textField {
        case userAge:
            return validForUserAge.nambers(text: string)
        case userGender:
            return validForUserGender.charecter(text: string)
        default:
            break
        }
        return true
    }
    struct ValidForUserAge {
        let number = "0123456789"
        
        func nambers(text: String) -> Bool {
            for numberValue in number {
                if text.contains(numberValue) { return true }
            }
            return false
        }
    }
    struct ValidForUserGender {
        let charecter = "MF"
        
        func charecter(text: String) -> Bool {
            for numberValue in charecter {
                if text.contains(numberValue) { return true }
            }
            return false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Backgraund SecondVeiwConr
        let color1 = UIColor(red: 30 / 255, green: 50 / 255, blue: 150 / 255, alpha: 1).cgColor
        let color2 = UIColor(red: 100 / 255, green: 100 / 255, blue: 150 / 255, alpha: 1).cgColor
        let gradietLayer = CAGradientLayer()
        gradietLayer.frame = view.bounds
        gradietLayer.colors = [color1, color2]
        gradietLayer.startPoint = CGPoint(x: 0, y: 0)
        gradietLayer.endPoint = CGPoint(x: 0, y: 1.0)
        self.view.layer.insertSublayer(gradietLayer, at: 0)
        //
        
        resultUserName.text = resultName
        //TextFeild Style
        userAge.placeholder = "Please, enter your age..."
        userAge.clearButtonMode = .always
        userAge.delegate = self
        userGender.placeholder = "Male or Female, enter M or F..."
        userGender.clearButtonMode = .always
        userGender.delegate = self
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
