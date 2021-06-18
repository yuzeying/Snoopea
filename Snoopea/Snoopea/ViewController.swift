//
//  ViewController.swift
//  Snoopea
//
//  Created by Zeying Yu on 1/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var liver: UILabel!
    @IBOutlet weak var eggshell: UILabel!
    @IBOutlet weak var heart: UILabel!
    @IBOutlet weak var tripe: UILabel!
    @IBOutlet weak var otherOrgans: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func food(_ sender: UITextField) {
        if let title = sender.text{
            if Double(title)!<300{
                liver.text = String(format: "%.2f", Double(title)! * 0.05)
                otherOrgans.text = String(format: "%.2f", Double(title)! * 0.05)+"-"+String(format: "%.2f", Double(title)! * 0.07)
                tripe.text = String(format: "%.2f", Double(title)! * 0.05)+"-"+String(format: "%.2f", Double(title)! * 0.1)
                heart.text = String(format: "%.2f", Double(title)! * 0.04)
                eggshell.text = String(format: "%.2f", Double(title)! * 1.225)            }
        }
    }
    
   
    
}

