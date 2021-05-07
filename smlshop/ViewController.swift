//
//  ViewController.swift
//  smlshop
//
//  Created by Yang Nina on 2021/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var brazilLabel: UILabel!
    @IBOutlet weak var shanghaiLabel: UILabel!
    @IBOutlet weak var batLabel: UILabel!
    @IBOutlet weak var rainbowLabel: UILabel!
    @IBOutlet weak var pinkLabel: UILabel!
    @IBOutlet weak var usaLabel: UILabel!
    @IBOutlet weak var kiwiLabel: UILabel!
    
    @IBOutlet weak var brazilStepper: UIStepper!
    @IBOutlet weak var shanghaiStepper: UIStepper!
    @IBOutlet weak var batStepper: UIStepper!
    @IBOutlet weak var rainbowStepper: UIStepper!
    @IBOutlet weak var pinkStepper: UIStepper!
    @IBOutlet weak var usaStepper: UIStepper!
    @IBOutlet weak var kiwiStepper: UIStepper!
    
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeQty(_ sender: Any) {
        //UIStepper.value數字變字串
        let brazilQTY = Int(brazilStepper.value)
        brazilLabel.text = "\(brazilQTY)"
        
        let shanghaiQTY = Int(shanghaiStepper.value)
        shanghaiLabel.text = "\(shanghaiQTY)"
        
        let batQTY = Int(batStepper.value)
        batLabel.text = "\(batQTY)"
        
        let rainbowQTY = Int(rainbowStepper.value)
        rainbowLabel.text = "\(rainbowQTY)"
        
        let pinkQTY = Int(pinkStepper.value)
        pinkLabel.text = "\(pinkQTY)"
        
        let usaQTY = Int(usaStepper.value)
        usaLabel.text = "\(usaQTY)"
        
        let kiwiQTY = Int(kiwiStepper.value)
        kiwiLabel.text = "\(kiwiQTY)"
        
        //總和
        totalLabel.text = "\(900 * (brazilQTY + shanghaiQTY + usaQTY) + 790 * (rainbowQTY + kiwiQTY) + 1080 * (batQTY + pinkQTY))"
    }
    //清除按鈕
    @IBAction func clearBtn(_ sender: Any) {
        //UIStepper & Label值要同時清除
        brazilStepper.value = 0
        brazilLabel.text = "\(0)"
        
        shanghaiStepper.value = 0
        shanghaiLabel.text = "\(0)"
        
        batStepper.value = 0
        batLabel.text = "\(0)"
        
        rainbowStepper.value = 0
        rainbowLabel.text = "\(0)"
        
        pinkStepper.value = 0
        pinkLabel.text = "\(0)"
        
        usaStepper.value = 0
        usaLabel.text = "\(0)"
        
        kiwiStepper.value = 0
        kiwiLabel.text = "\(0)"
        
        totalLabel.text = "\(0)"
    }

}

