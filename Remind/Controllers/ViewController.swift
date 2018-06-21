//
//  ViewController.swift
//  Remind
//
//  Created by MTMAC18 on 21/06/18.
//  Copyright © 2018 Wisnu Anggoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNService.shared.authorize()
    }
    
    @IBAction func onTimerTapped() {
        print("Timer")
    }

    @IBAction func onDateTapped() {
        print("Date")
    }
    
    @IBAction func onLocationTapped() {
        print("Location")
    }
}

