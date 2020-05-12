//
//  ViewController.swift
//  IntegrationTestApp
//
//  Created by Andrew King on 2020-03-10.
//  Copyright © 2020 BKBeachLabs. All rights reserved.
//

import UIKit
import MyFramework


class ViewController: UIViewController {

    @IBOutlet weak var testIdTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MyClass().printA()
    }

    @IBAction func didPressRunButton(_ sender: Any) {
        guard let testIdRawValue = testIdTextField.text,
            let testId = TestId(rawValue: testIdRawValue) else {
                fatalError()
        }
    }
    
}

