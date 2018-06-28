//
//  SegueVC2.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2018-06-28.
//

import UIKit
import os.log

class SegueVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        os_log("SegueVC2 preparing to segue")
    }

}
