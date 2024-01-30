//
//  ViewController.swift
//  week3_homework
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    var logIn = true
    let action = UIAlertAction(title: "OK", style: .default, handler: .none)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disabledCheck()
    }
    
    @IBAction func statusChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            disabledCheck()
            clearTextField()
            logIn = true
        } else {
            EabledCheck()
            clearTextField()
            logIn = false
        }
    }
    
    func clearTextField(){
        accountTextField.text = ""
        passwordTextField.text = ""
        checkTextField.text = ""
    }
    
    func EabledCheck(){
        checkLabel.textColor = .black
        checkTextField.isEnabled = true
        checkTextField.backgroundColor = .white
    }
    
    func disabledCheck(){
        checkLabel.textColor = .gray
        checkTextField.isEnabled = false
        checkTextField.backgroundColor = .gray
    }
    
    func logInScenario(){
        if accountTextField.text == "appworks_school" && passwordTextField.text == "1234" {
            let alert = UIAlertController(title: "Success", message: "Welcome!", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        } else  {
            let alert = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
    
    func signUpScenario(){
        if accountTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        } else if passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Password should not be empty.", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        } else if checkTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Check Password should not be empty.", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        } else if passwordTextField.text != checkTextField.text {
            let alert = UIAlertController(title: "Error", message: "Signup fail", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: "Success", message: "Signup Success", preferredStyle: .alert)
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if logIn {
            logInScenario()
        } else {
            signUpScenario()
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if self.logIn {
            if textField == accountTextField {
                return passwordTextField.becomeFirstResponder()
            } else {
                return passwordTextField.resignFirstResponder()
            }
            
        } else {
            if textField == accountTextField {
                return passwordTextField.becomeFirstResponder()
            } else if textField == passwordTextField {
                return checkTextField.becomeFirstResponder()
            } else {
                return checkTextField.resignFirstResponder()
            }
        }
    }
}
