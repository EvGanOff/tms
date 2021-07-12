//
//  ViewController.swift
//  DZ 9
//
//  Created by AWAIN on 10.07.2021.
//

import UIKit

protocol ViewControllerResultDelegate: class {
    func result(_ textField1: Int, textField2: String?)
    
}
    

class ViewController: UIViewController, ViewControllerResultDelegate {
    
    func result(_ textField1: Int, textField2: String?) {
        self.view.layer.sublayers?.first(where: {$0 is CAGradientLayer})?.removeFromSuperlayer()
        
     
        let color3 = UIColor(red: 150 / 255, green: 80 / 255, blue: 50 / 255, alpha: 1).cgColor
        let color4 = UIColor(red: 210 / 255, green: 20 / 255, blue: 61 / 255, alpha: 1).cgColor
        let gradietLayer1 = CAGradientLayer()
        gradietLayer1.frame = view.bounds
        gradietLayer1.colors = [color3, color4]
        gradietLayer1.startPoint = CGPoint(x: 0, y: 0)
        gradietLayer1.endPoint = CGPoint(x: 0, y: 1.0)
        let color5 = UIColor(red: 150 / 255, green: 150 / 255, blue: 50 / 255, alpha: 1).cgColor
        let color6 = UIColor(red: 210 / 255, green: 150 / 255, blue: 61 / 255, alpha: 1).cgColor
        let gradietLayer2 = CAGradientLayer()
        gradietLayer2.frame = view.bounds
        gradietLayer2.colors = [color5, color6]
        gradietLayer2.startPoint = CGPoint(x: 0, y: 0)
        gradietLayer2.endPoint = CGPoint(x: 0, y: 1.0)
        if (textField1 > 50) && textField2 == "M" {
            self.view.layer.insertSublayer(gradietLayer1, at: 0)
        }
        if (textField1 < 50) && textField2 == "M" {
            return
        }
        if  textField2 == "F" {
            self.view.layer.insertSublayer(gradietLayer2, at: 0)
        }
        
    }
        
  
    @IBOutlet weak var userName: UITextField!
    
    
    @IBAction func nextBattonAction(_ sender:UIButton) {
        //guard userName.text?.isEmpty != nil  else { return }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if userName.text == nil {
//            return
//        }
        if let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
        let sum = userName.text!
            vc.resultName = "Hello \(sum)"
            vc.delegate = self
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
            
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Backgraund color main ViewContr
        let color1 = UIColor(red: 150 / 255, green: 150 / 255, blue: 50 / 255, alpha: 1).cgColor
        let color2 = UIColor(red: 50 / 255, green: 200 / 255, blue: 61 / 255, alpha: 1).cgColor
        let gradietLayer = CAGradientLayer()
        gradietLayer.frame = view.bounds
        gradietLayer.colors = [color1, color2]
        gradietLayer.startPoint = CGPoint(x: 0, y: 0)
        gradietLayer.endPoint = CGPoint(x: 0, y: 1.0)
        self.view.layer.insertSublayer(gradietLayer, at: 0)
        //view.backgroundColor = UIColor.green
        
        userName.keyboardAppearance = .dark
        userName.placeholder = " Please, enter your name..."
        userName.clearButtonMode = .always
        
    
    }

}


