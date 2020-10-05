//
//  ViewController.swift
//  NewDropInDemo
//
//  Created by Cannillo, Sammy on 10/5/20.
//

import UIKit
import InAppSettingsKit
import Braintree

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let apiClient = BTAPIClient.init(authorization: "token")
        view.backgroundColor = UIColor.red
    }

}
