//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        

        
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            SVProgressHUD.show()
            if error != nil {
                SVProgressHUD.dismiss()
                SVProgressHUD.showError(withStatus: "Has problem in Register.")
                print(error!)
            } else {
                SVProgressHUD.dismiss()
                SVProgressHUD.showSuccess(withStatus: "Success!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            
        }
        

        
        
    } 
    
    
}
