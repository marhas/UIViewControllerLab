//
//  NavController.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-10-13.
//

import UIKit

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentModal() {
        let modalVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ModalViewController")
        present(modalVC, animated: true)
    }

}
