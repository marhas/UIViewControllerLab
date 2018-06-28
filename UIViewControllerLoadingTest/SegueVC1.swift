//
//  SegueViewController.swift
//  UIViewControllerLoadingTest
//
//  Created by Marcel Hasselaar on 2018-06-28.
//

import UIKit
import os.log

class SegueVC1: UIViewController {

    override func viewDidLoad() {
        os_log("viewDidLoad")
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        os_log("viewWillAppear")
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        os_log("viewDidAppear")
        super.viewDidAppear(animated)
    }

    override func loadView() {
        os_log("loadView")
        super.loadView()
    }

    @IBAction
    func segueToSegueVC1(segue: UIStoryboardSegue) { }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        os_log("SegueVC1 preparing to segue")
    }
}
