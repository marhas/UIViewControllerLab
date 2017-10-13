//
//  ModalViewController.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2017-09-04.
//
//

import UIKit

protocol ModalDelegate: class {
    func pop()
    func closeModal()
}

class ModalViewController: UIViewController {

    weak var delegate: ModalDelegate?

    deinit {
        print("\(String(describing: self.title)) is deiniting")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        guard let appPresentedVC = UIApplication.shared.keyWindow?.rootViewController?.presentedViewController else {
            print("No presented VC")
            return
        }
        print("The app has this presented VC: \(appPresentedVC). I am \(self).")
    }


    @IBAction func presentModalOnParent(_ sender: Any) {
        if let navController = presentingViewController as? UINavigationController, let vc4 = navController.topViewController as? VC4 {
            vc4.presentModal()
        }

        if let vc4 = presentingViewController as? VC4 {
            vc4.presentModal()
        }
    }

    @IBAction func presentModalOnParentNav(_ sender: Any) {
        if let navController = presentingViewController as? NavController {
            navController.presentModal()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction
    public func close() {
        self.dismiss(animated: true, completion: nil)
//        delegate?.closeModal()
    }

    @IBAction func navigateBack(_ sender: Any) {
        delegate?.pop()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ModalViewController {
            destinationVC.delegate = delegate
        }
    }

}
