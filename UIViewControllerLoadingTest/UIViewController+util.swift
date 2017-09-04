//
//  UIViewController+util.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-09-04.
//
//

import UIKit

extension UIViewController {
    func closeAllModals() {
        if let presentedVC = presentedViewController {
            presentedVC.dismiss(animated: true, completion: { print("Presented vc was dismissed") })
        }
    }

}
