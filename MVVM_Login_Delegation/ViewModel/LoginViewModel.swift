//
//  LoginViewModel.swift
//  MVVM_Login_Delegation
//
//  Created by Nikhil Balne on 27/12/20.
//

import Foundation

protocol LoginViewModelDelegate {
    func sendValues(from userEmail:String?, userPassword:String?)
}

struct LoginViewModel : LoginViewModelDelegate {
    
    weak var loginViewControllerDelegate : LoginViewController?
    
    func sendValues(from userEmail: String?, userPassword: String?) {
        loginViewControllerDelegate?.sendReturnedData(handledData: userEmail! + userPassword!)
    }
    
}
