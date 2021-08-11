//
//  File.swift
//  DZ 16 TableView
//
//  Created by Евгений Ганусенко on 8/9/21.
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
