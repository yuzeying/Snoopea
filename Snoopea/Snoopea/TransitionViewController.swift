//
//  TransitionViewController.swift
//  Snoopea
//
//  Created by Zeying Yu on 3/15/21.
//

import UIKit

class TransitionViewController: UIViewController {
    let container = UIView()
    let f = UIImageView(image: UIImage(named: "fed"))
    let nf = UIImageView(image: UIImage(named: "notfed"))
    var fed: Bool = false
    var ifchange: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        let w = view.bounds.width - 200
        let h = view.bounds.height - 700
        container.frame = CGRect(x: 100, y: 250, width: w, height: h)
        view.addSubview(container)
        
        f.frame = CGRect(x: 0, y: 0, width: w, height: h)
        nf.frame = f.frame
        
        container.addSubview(nf)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func change(_ sender: UIButton) {
           var transitionOptions = UIView.AnimationOptions()
           transitionOptions = .transitionFlipFromRight
           
           if let title = sender.currentTitle {
            if title == "Yes, I did!"{
                if fed == false{
                    ifchange = true
                }else{
                    ifchange = false
                }
                fed = true
            }
            else if title == "Sorry, not yet!"{
                if fed == true{
                    ifchange = true
                }else{
                    ifchange = false
                }
                fed = false
                
            }
           }
        let view1 = f.superview != nil ? f : nf
        let view2 = f.superview != nil ? nf : f
        if ifchange{
            UIView.transition(with: self.container, duration: 0.5, options: transitionOptions, animations: {
                view1.removeFromSuperview()
                self.container.addSubview(view2)
                }, completion: nil)
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
