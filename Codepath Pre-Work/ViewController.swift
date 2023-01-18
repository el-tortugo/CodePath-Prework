//
//  ViewController.swift
//  Codepath Pre-Work
//
//  Created by Kehinde Adeoso on 1/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var schoolnameTextField: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    
    @IBOutlet weak var yearSegementedControl: UISegmentedControl!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
        numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
        
        let year = yearSegementedControl.titleForSegment(at: yearSegementedControl.selectedSegmentIndex)
            
        
        let introduction = "My name is \(firstnameTextField.text!) \(lastnameTextField.text!) and I attend \(schoolnameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs It is \(morePetsSwitch.isOn) that I want more pets."
            
       
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
     
        alertController.addAction(action)
            
        present(alertController, animated: true, completion: nil)
        }
}
