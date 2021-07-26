//
//  ViewContoller + CoreKit.swift
//  DZ 9
//
//  Created by AWAIN on 25.07.2021.
//

import UIKit
extension UIViewController {
    func getViewController(from id: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
        currentViewController.modalPresentationStyle = .fullScreen
        currentViewController.modalTransitionStyle = .crossDissolve
        return currentViewController
    }
}
