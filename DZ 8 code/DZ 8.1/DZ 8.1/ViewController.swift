//
//  ViewController.swift
//  DZ 8.1
//
//  Created by AWAIN on 08.07.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var textF1: UITextField = UITextField(frame: CGRect(origin: CGPoint(x: 45, y: 200 ),
                                                        size: CGSize(width: 300, height: 25)))
    var textF2: UITextField = UITextField(frame: CGRect(origin: CGPoint(x: 45, y: 300),
                                                        size: CGSize(width: 300, height: 25)))
    var lableResult: UITextField = UITextField(frame: CGRect(origin: CGPoint(x: 155, y: 400),
                                                     size: CGSize(width: 100, height: 45)))
    
    var validator = Valid()
   
    @objc
    func textFieldAction(_ sender: UIButton) {
        guard textF1.text != nil, textF2.text != nil else { return }
        let funcTextF1 = (textF1.text! as NSString).doubleValue
        let funcTextF2 = (textF2.text! as NSString).doubleValue
        let sum = String(funcTextF1 + funcTextF2)
        lableResult.text! = sum
        
        
        print(lableResult.text!)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        switch textField {
        case textF1:
            return validator.nambers(text: string)
        case textF2:
            return validator.nambers(text: string)
        default:
            break
        }
        return true
    }
    struct Valid {
        let number = "0123456789"
        
        func nambers(text: String) -> Bool {
            for numberValue in number {
                if text.contains(numberValue) { return true }
            }
            return false
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
        
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("viewDidLoad")
        //Backgraund
        let color1 = UIColor(red: 153 / 255, green: 20 / 255, blue: 10 / 255, alpha: 1).cgColor
        let color2 = UIColor(red: 220 / 255, green: 200 / 255, blue: 31 / 255, alpha: 1).cgColor
        let gradietLayer = CAGradientLayer()
        gradietLayer.frame = view.bounds
        gradietLayer.colors = [color1, color2]
        gradietLayer.startPoint = CGPoint(x: 0, y: 0)
        gradietLayer.endPoint = CGPoint(x: 0, y: 1.0)
        self.view.layer.addSublayer(gradietLayer)
        
        //view.backgroundColor = UIColor(red: 153 / 255, green: 20 / 255, blue: 61 / 255, alpha: 1)
        
        // Views
        let labelText = UILabel(frame: CGRect(x: 150, y: 150,
                                              width: 300, height: 25))
        labelText.textColor = UIColor.white
        labelText.text = "Посчитаем!"
        view.addSubview(labelText)

        
        let textF1 = textF1
        textF1.backgroundColor = .white
        textF1.placeholder = "Жмякни сюда"
        textF1.clearButtonMode = .always
        textF1.keyboardAppearance = .dark
        view.addSubview(textF1)
        textF1.delegate = self
        
        let textF2 = textF2
        textF2.backgroundColor = .white
        textF2.placeholder = "Потом сюда"
        view.addSubview(textF2)
        textF2.delegate = self
        
        textF2.keyboardAppearance = .dark
        textF2.clearButtonMode = .always
       
        let lableResult = lableResult
        lableResult.textColor = UIColor.white
        lableResult.text = "0"
        
        
        view.addSubview(lableResult)
        
        let lablePlus = UILabel(frame: CGRect(origin: CGPoint(x: 190, y: 250 ),
                                              size: CGSize(width: 300, height: 25)))
        lablePlus.textColor = UIColor.white
        lablePlus.text = "+"
       
        view.addSubview(lablePlus)
        
        let buttonSum = UIButton(frame: CGRect(origin: CGPoint(x: 125, y: 350),
                                               size: CGSize(width: 150, height: 40)))
        
        buttonSum.backgroundColor = .darkGray
        buttonSum.setTitle("Результат", for: .normal)
        buttonSum.addTarget(self, action: #selector(textFieldAction), for: UIControl.Event.touchUpInside)
        
        
        view.addSubview(buttonSum)
        

        
        
        
    }
    
        
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    deinit {
        
    }
    
}


