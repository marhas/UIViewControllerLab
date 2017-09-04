//
//  VC1.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-08-30.
//
//

import UIKit

class VC1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2")
        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC3")
        let vc4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC4")

        navigationController?.pushViewController(vc2, animated: false)
        navigationController?.pushViewController(vc3, animated: false)
        navigationController?.pushViewController(vc4, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    deinit {
        print("\(String(describing: self.title)) is deiniting")
    }

}
