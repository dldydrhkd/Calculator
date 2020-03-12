//
//  ViewController.swift
//  Calculator
//
//  Created by 이용광 on 2020/03/13.
//  Copyright © 2020 이용광. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("touched \(digit) digit")
    }
    
}
