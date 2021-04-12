//
//  ViewController.swift
//  Log In
//
//  Created by admin2 on 12.04.2021.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {

    //MARK: - IBOutlets
    
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var LogInBtn: UIButton!
    
    @IBOutlet var warningLabel: UILabel!
    
    //MARK: - private properties
    
    private var username: String = ""
    private var password: String = ""
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usernameField.delegate = self
        self.passwordField.delegate = self
        
        warningLabel.isHidden = true
    }

    //MARK: - Textfield behaviour
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //MARK: - IBAction
        
    @IBAction func LogIn() {
        username = usernameField.text ?? ""
        password = passwordField.text!
        
        nextPage()
    }
    
    //MARK: - Segue transition
    
    private func nextPage() {
        if username == "" || password == "" {
            warningLabel.isHidden = false
            warningLabel.text = "Empty username or password given!"
        } else {
            warningLabel.isHidden = true
            performSegue(withIdentifier: "logedInPage", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "logedInPage" else {
            return
        }
        let resultVC = segue.destination as! LogedInViewController
        resultVC.userName = username
        resultVC.UserPass = password
        
    }
}
