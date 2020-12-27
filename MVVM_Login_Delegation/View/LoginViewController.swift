//
//  ViewController.swift
//  MVVM_Login_Delegation
//
//  Created by Nikhil Balne on 27/12/20.
//

import UIKit

protocol LoginViewControllerDelegate {
    func sendReturnedData(handledData:String?)
}

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    private var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewModel.loginViewControllerDelegate = self
    }

    @IBAction func didTapOnSubmitButton(_ sender: Any) {
        loginViewModel.sendValues(from: emailTextField.text, userPassword: passwordTextField.text)
    }
    
}

extension LoginViewController : LoginViewControllerDelegate {
    
    func sendReturnedData(handledData: String?) {
        print("ReturnedData:\(String(describing: handledData))")
    }
    
}
