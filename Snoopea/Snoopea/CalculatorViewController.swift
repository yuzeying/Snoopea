//
//  CalculatorViewController.swift
//  Snoopea
//
//  Created by Zeying Yu on 3/15/21.
//

import UIKit

class CalculatorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var currentd: dog?

    @IBOutlet weak var tb: UITableView!

    @IBOutlet weak var pickB: UIButton!
    
    @IBOutlet weak var meat: UITextField!
    @IBOutlet weak var otherorgans: UILabel!
    
    @IBOutlet weak var eggshell: UILabel!
    @IBOutlet weak var liver: UILabel!
    
    @IBOutlet weak var heart: UILabel!
    
    @IBOutlet weak var tripe: UILabel!
    //var doglist = ["Bean", "Coco", "Star", "Mocha", "Parker", "Nola", "Pepper", "Ralph", "Evan", "Gigi"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tb.delegate = self
        tb.dataSource = self
        tb.isHidden = true
    
        // Do any additional setup after loading the view.
    }
 
  
    override func viewWillAppear(_ animated: Bool) {
        pickB.setTitle("Pick a dog", for: .normal)
        tb.isHidden = true
        meat.text = ""
        liver.text = ""
        eggshell.text = ""
        heart.text = ""
        otherorgans.text = ""
        tripe.text = ""
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let d = dogs[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: d.type.rawValue, for: indexPath)
        cell.textLabel?.text = d.name
        return cell
    }
    
    @IBAction func bottonP(_ sender: UIButton) {
        if tb.isHidden{
            animate(toogle: true)
        }else{
            animate(toogle: false)
        }
    }
    func animate(toogle: Bool){
        if toogle{
            UIView.animate(withDuration: 0.3){
                self.tb.isHidden = false
            }
        }else{
            UIView.animate(withDuration: 0.3){
                self.tb.isHidden = true
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pickB.setTitle("\(dogs[indexPath.row].name)", for: .normal)
        currentd = dogs[indexPath.row]
        meat.text = ""
        liver.text = ""
        eggshell.text = ""
        heart.text = ""
        otherorgans.text = ""
        tripe.text = ""
        animate(toogle: false)
    }
    
    
    @IBAction func editend(_ sender: UITextField) {
        sender.resignFirstResponder()
        if currentd == nil{
            let alert4 = UIAlertController(title: "Please pick a dog", message: "", preferredStyle: .alert)
            alert4.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert4, animated: true, completion: nil)
            return
        }else{
            if Float(meat.text!) == nil{
                let alert2 = UIAlertController(title: "Invalid input", message: "", preferredStyle: .alert)
                alert2.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alert2, animated: true, completion: nil)
                return
            }
            else{
                currentd?.meat = Float(meat.text!)!
                liver.text = String(format: "%.2f", currentd!.meat * currentd!.liver * 0.01)
                tripe.text = String(format: "%.2f", currentd!.meat * currentd!.tripe * 0.01)
                heart.text = String(format: "%.2f", currentd!.meat * currentd!.heart * 0.01)
                otherorgans.text = String(format: "%.2f", currentd!.meat * currentd!.otherOrgans * 0.01)
                eggshell.text = String(format: "%.2f", currentd!.meat * Float(currentd!.eggShell) * 0.01)
                
            }
        }
    
    }
    
    
    @IBAction func backgroudTouched1(_ sender: UIControl) {
        meat.resignFirstResponder()
        if currentd == nil{
            let alert4 = UIAlertController(title: "Please pick a dog", message: "", preferredStyle: .alert)
            alert4.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert4, animated: true, completion: nil)
            return
        }else{
            if Float(meat.text!) == nil{
                let alert2 = UIAlertController(title: "Invalid Input", message: "", preferredStyle: .alert)
                alert2.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alert2, animated: true, completion: nil)
                return
            }
            else{
                currentd?.meat = Float(meat.text!)!
                liver.text = String(format: "%.2f", currentd!.meat * currentd!.liver * 0.01)
                tripe.text = String(format: "%.2f", currentd!.meat * currentd!.tripe * 0.01)
                heart.text = String(format: "%.2f", currentd!.meat * currentd!.heart * 0.01)
                otherorgans.text = String(format: "%.2f", currentd!.meat * currentd!.otherOrgans * 0.01)
                eggshell.text = String(format: "%.2f", currentd!.meat * Float(currentd!.eggShell) * 0.01)
                
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

