//
//  DataViewController.swift
//  SingleViewExample
//
//  Created by Parsoya, Saritha(AWF) on 1/29/19.
//  Copyright © 2019 Parsoya, Saritha(AWF). All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

