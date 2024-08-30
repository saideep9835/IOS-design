//
//  ViewController.swift
//  IOS-design
//
//  Created by Saideep Reddy Talusani on 8/26/24.
//  .default -- . represents "Implicit Member Expression"

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username:UITextField!
    

    @IBOutlet weak var password: UITextField!
    @IBAction func login(_ sender: UIButton) {
        if (username.text?.isEmpty ?? true) || (password.text?.isEmpty ?? true){
            print("Please enter missing details")
            self.presentSimpleAlert(message: "Please enter username and password.")
        }else{
            print("Successfully details entered")
        }
    }
    func presentSimpleAlert(title: String = "IOS App", message: String) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

            alertController.addAction(UIAlertAction(title: "OK", style: .default))
            
            present(alertController, animated: true, completion: nil)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}





