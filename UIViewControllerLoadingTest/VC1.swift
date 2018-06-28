//
//  VC1.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-08-30.
//
//

import UIKit
import os.log

class VC1: UIViewController {

    @IBOutlet var segueButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2")
        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC3")
        let vc4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC4")

//        navigationController?.pushViewController(vc2, animated: false)
//        navigationController?.pushViewController(vc3, animated: false)
//        navigationController?.pushViewController(vc4, animated: false)
    }

    @IBAction func segueButtonTapped(_ sender: Any) {
        os_log("Before segue")
        performSegue(withIdentifier: "segue1", sender: self)
        os_log("After segue to SegueVC1")
        guard let segueVc1 = presentedViewController as? SegueVC1 else {
            print("No segueVc1 is presented")
            return
        }
        segueVc1.performSegue(withIdentifier: "seguevc1_to_seguevc2", sender: self)
        os_log("After segue from SegueVC1 to SegueVC2")
//        os_log("Presented VC: %@", String(describing: presentedViewController))

//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            os_log("Presented VC after a while: %@", String(describing: self.presentedViewController))
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction
    func exitToVC1(segue: UIStoryboardSegue) { }

    deinit {
        print("\(String(describing: self.title)) is deiniting")
    }

}
