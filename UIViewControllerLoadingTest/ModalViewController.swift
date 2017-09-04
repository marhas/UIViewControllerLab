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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction
    public func close() {
//        self.dismiss(animated: true, completion: nil)
        delegate?.closeModal()
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
