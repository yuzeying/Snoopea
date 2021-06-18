//
//  detailViewController.swift
//  Snoopea
//
//  Created by Zeying Yu on 3/15/21.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var liverSlider: UISlider!
    
    @IBOutlet weak var eggshellStepper: UIStepper!
    @IBOutlet weak var quitbutton: UIButton!
    @IBOutlet weak var savebutton: UIButton!
    @IBOutlet weak var eggshell: UILabel!
    @IBOutlet weak var otherorgansNum: UILabel!
    @IBOutlet weak var heartNum: UILabel!
    @IBOutlet weak var tripeNum: UILabel!
    @IBOutlet weak var liverNum: UILabel!
    @IBOutlet weak var otherorgansSlider: UISlider!
    @IBOutlet weak var heartSlider: UISlider!
    @IBOutlet weak var tripeSlider: UISlider!
    var dogg: dog?
    override func viewDidLoad() {
        super.viewDidLoad()
        //liverNum.text = "\(Int(liverSlider.value))"
       // tripeNum.text = "\(Int(tripeSlider.value))"
       // heartNum.text = "\(Int(heartSlider.value))"
       // otherorgansNum.text = "\(Int(otherorgansSlider.value))"
       // eggshellNum.text = "0"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if let d = dogg {
            liverSlider.value = d.liver
            tripeSlider.value = d.tripe
            heartSlider.value = d.heart
            otherorgansSlider.value = d.otherOrgans
            eggshell.text = "\(d.eggShell)"
            liverNum.text = "\(Int(liverSlider.value))"
            tripeNum.text = "\(Int(tripeSlider.value))"
            heartNum.text = "\(Int(heartSlider.value))"
            otherorgansNum.text = "\(Int(otherorgansSlider.value))"
        }
    }
    

    @IBAction func sliderMoved1(_ sender: UISlider) {
        liverNum.text = "\(Int(sender.value))"
    }
    @IBAction func sliderMoved2(_ sender: UISlider) {
        tripeNum.text = "\(Int(sender.value))"
    }
    @IBAction func sliderMoved3(_ sender: UISlider) {
        heartNum.text = "\(Int(sender.value))"
    }
    @IBAction func sliderMoved4(_ sender: UISlider) {
        otherorgansNum.text = "\(Int(sender.value))"
    }
    
    @IBAction func stepperTouched(_ sender: UIStepper) {
        eggshell.text = "\(Int(sender.value))"
    }
    
    @IBAction func buttonP(_ sender: UIButton) {
        if let title = sender.currentTitle{
            if title == "quit"{
                let qaler = UIAlertController(title:"quit saving new recipe", message: "", preferredStyle: .alert)
                qaler.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(qaler, animated: true, completion: nil)
            }
            else if title == "save"{
                dogg?.liver = liverSlider.value
                dogg?.heart = heartSlider.value
                dogg?.tripe = tripeSlider.value
                dogg?.otherOrgans = otherorgansSlider.value
                dogg?.eggShell = Int(eggshellStepper.value)
                let aler = UIAlertController(title:"new recipe saved for \(String(dogg!.name))", message: "", preferredStyle: .alert)
                aler.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(aler, animated: true, completion: nil)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
