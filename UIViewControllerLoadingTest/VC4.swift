//
//  VC4.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-08-30.
//
//

import UIKit


class VC4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC4 did load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ModalViewController {
            destinationVC.delegate = self
        }
    }

    deinit {
        print("\(String(describing: self.title)) is deiniting")
    }
}



extension VC4: ModalDelegate {
    func pop() {
        navigationController?.popViewController(animated: true)
    }

    func closeModal() {
        if presentedViewController != nil {
            presentedViewController?.dismiss(animated: false, completion: { self.closeModal() })
        }
    }
}
