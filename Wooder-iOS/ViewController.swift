//
//  ViewController.swift
//  Wooder-iOS
//
//  Created by Meng Li on 2019/04/26.
//  Copyright © 2019 MuShare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = NSLocalizedString("main_hello", comment: "")
        label2.text = NSLocalizedString("main_introduction", comment: "")
    }

}

