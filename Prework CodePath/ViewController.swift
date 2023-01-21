//
//  ViewController.swift
//  Prework CodePath
//
//  Created by Teo Brown on 1/15/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var schoolNameText: UITextField!
    
    @IBOutlet weak var switchy: UISwitch!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var controlBar: UISegmentedControl!
    @IBOutlet weak var numOfPets: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //inrements the stepper for amount of pets
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numOfPets.text = "\(Int(sender.value))"
        print(sender.value)
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
       
       // Lets us choose the title we have selected from the segmented control
       // In our example that is whether it is first, second, third or forth
       let year = controlBar.titleForSegment(at: controlBar.selectedSegmentIndex)
       
       // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
       let introduction = "My name is \(firstNameText.text!) \(lastNameText.text!) and I attend \(schoolNameText.text!). I am currently in my \(year!) year and I own \(numOfPets.text!) dogs. It is \(switchy.isOn) that I want more pets."
       
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
   }

}

