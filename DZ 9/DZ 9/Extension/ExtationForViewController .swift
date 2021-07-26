//
//  ExtationForViewController .swift
//  DZ 9
//
//  Created by AWAIN on 25.07.2021.
//

import UIKit

extension UIViewController: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
