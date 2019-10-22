//
//  ViewController.swift
//  CDEto123
//
//  Created by Aidan Gutierrez on 10/28/18.
//  Copyright © 2018 Aidan Gutierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

   // first define all variables
    //Lables
    @IBOutlet weak var the1: UILabel!
    @IBOutlet weak var the2: UILabel!
    @IBOutlet weak var the3: UILabel!
    @IBOutlet weak var the4: UILabel!
    @IBOutlet weak var the5: UILabel!
    @IBOutlet weak var the6: UILabel!
    @IBOutlet weak var the7: UILabel!
    //input
    @IBOutlet weak var Key: UITextField!
    
    
    let keys = ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B","C","C#","D","D#","E","F","F#","G","G#","A","A#","B"]
    let flatKeys = ["C","Dflat","D","Eflat","E","F","Gflat","G","Aflat","A","Bflat","B","C","Dflat","D","Eflat","E","F","Gflat","G","Aflat","A","Bflat","B"]
    var newKeys = ["c","c#","d","d#","e","f","f#"]
    //buttons
    @IBAction func showMe(_ sender: UIButton) {
    
        var specifiedKey = ""
        
        // make sure the text field is not empty
        if Key != nil{
            specifiedKey = Key.text!
        }else {print ("no key input")}
        
        // finds the key in the ordered list
        var i = 0
        if specifiedKey.contains("Flat") || specifiedKey.contains("flat"){
            while !(flatKeys[i].caseInsensitiveCompare(specifiedKey)==ComparisonResult.orderedSame) && i < flatKeys.count {
                i = i+1
                if i == flatKeys.count-1 {
                    i = 1
                    showAlert()
                    break
                }
            }
            
            //assigns each chord a number
            newKeys[0] = flatKeys[i]
            newKeys[1] = flatKeys[i + 2]
            newKeys[2] = flatKeys[i + 4]
            newKeys[3] = flatKeys[i + 5]
            newKeys[4] = flatKeys[i + 7]
            newKeys[5] = flatKeys[i + 9]
            newKeys[6] = flatKeys[i + 11]
            
            //swaps the label on the screen with a chord
            self.the1.text = newKeys[0]
            self.the2.text = newKeys[1]
            self.the3.text = newKeys[2]
            self.the4.text = newKeys[3]
            self.the5.text = newKeys[4]
            self.the6.text = newKeys[5]
            self.the7.text = newKeys[6]
        }
            else if specifiedKey.contains("minor") || specifiedKey.contains("Minor") || specifiedKey.contains("m") || specifiedKey.contains("M"){
                while !(specifiedKey.contains(keys[i])) && i < keys.count {
                    i = i+1
                    if i == flatKeys.count-1 {
                        i = 1
                        showAlert()
                        break
                    }
                }
                newKeys[0] = keys[i]
                newKeys[1] = keys[i + 2]
                newKeys[2] = keys[i + 3]
                newKeys[3] = keys[i + 5]
                newKeys[4] = keys[i + 7]
                newKeys[5] = keys[i + 8]
                newKeys[6] = keys[i + 10]
                
                //swaps the label on the screen with a chord
                self.the1.text = newKeys[0]
                self.the2.text = newKeys[1]
                self.the3.text = newKeys[2]
                self.the4.text = newKeys[3]
                self.the5.text = newKeys[4]
                self.the6.text = newKeys[5]
                self.the7.text = newKeys[6]
                
        }
        else{
        
            while !(keys[i].caseInsensitiveCompare(specifiedKey)==ComparisonResult.orderedSame) && i < keys.count {
                i = i+1
                if i == flatKeys.count-1 {
                    i = 1
                    showAlert()
                    break
                }
            }
        
            //assigns each chord a number
            newKeys[0] = keys[i]
            newKeys[1] = keys[i + 2]
            newKeys[2] = keys[i + 4]
            newKeys[3] = keys[i + 5]
            newKeys[4] = keys[i + 7]
            newKeys[5] = keys[i + 9]
            newKeys[6] = keys[i + 11]
        
            //swaps the label on the screen with a chord
            self.the1.text = newKeys[0]
            self.the2.text = newKeys[1]
            self.the3.text = newKeys[2]
            self.the4.text = newKeys[3]
            self.the5.text = newKeys[4]
            self.the6.text = newKeys[5]
            self.the7.text = newKeys[6]

        }
    }
    
//    let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
//    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
    
    //UIAlerController is apples pop up warning thing
    let warning = UIAlertController(title: "THATS NOT A KEY", message: "Wrong, sir! Wrong! Under section 37B of the contract signed by him, it states quite clearly that all offers shall become null and void if - and you can read it for yourself in this photostatic copy:\n" +
        "I, the undersigned, shall forfeit all rights, privileges, and licenses herein and herein contained, et cetera, et cetera... Fax mentis incendium gloria cultum, et cetera, et cetera... Memo bis punitor delicatum!\n" +
        "It's all there, black and white, clear as crystal! You stole fizzy lifting drinks! You bumped into the ceiling which now has to be washed and sterilized, so you get nothing! You lose! Good day, sir!", preferredStyle: .alert)
    
    func showAlert() {
        // Shows warning
        self.present(warning, animated: true, completion: nil)
        // set the timer
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.dismissAlert), userInfo: nil, repeats: false)
    }
    
    func dismissAlert(){
        warning.dismiss(animated: true, completion: nil)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}

