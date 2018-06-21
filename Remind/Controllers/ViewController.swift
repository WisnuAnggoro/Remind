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
        AlertService.actionSheet(in: self, title: "5 seconds") {
            UNService.shared.timerRequest(with: 5)
        }
    }

    @IBAction func onDateTapped() {
        print("Date")
        AlertService.actionSheet(in: self, title: "Some future time") {
            var components = DateComponents()
            components.second = 0
            
            UNService.shared.dateRequest(with: components)
        }
    }
    
    @IBAction func onLocationTapped() {
        print("Location")
        AlertService.actionSheet(in: self, title: "When I return") {
            
        }
    }
}

