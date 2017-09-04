//
//  VC3.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-08-30.
//
//

import UIKit

class VC3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC3 did load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("\(String(describing: self.title)) is deiniting")
    }
}
