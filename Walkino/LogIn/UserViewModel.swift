//
//  UserViewModel.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 23.02.2023.
//

import Foundation

struct UserViewModel {
    var email: String = ""
    var password: String = ""
    var fullname: String = ""
    var confirmPassword: String = ""
    
    func passwordsMatch(_confirmPW: String) -> Bool {
        return _confirmPW == password
    }
    func isEmpty(_field:String) -> Bool{
        return _field.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    func isEmailValid(_email: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-] +@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
        return passwordTest.evaluate(with: email)
    }
    func isPassworValid(_password: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$")
        return passwordTest.evaluate(with: password)
    }
    var isSignInComplete: Bool {
        if  !isEmailValid(_email: email) ||
            isEmpty(_field: fullname) ||
            !isPassworValid(_password: password) ||
            !passwordsMatch(_confirmPW: confirmPassword){
            return false
        }
        return true
    }
    var isLogInComplete:Bool {
        if isEmpty(_field: email) ||
          isEmpty(_field: password) {
            return false
        }
        return true
    }
    var validNameText: String {
        if !isEmpty(_field: fullname){
            return ""
        } else {
            return "Enter your full name"
        }
    }
    var validEmailAddresText: String {
        if isEmailValid(_email: email){
            return ""
        } else {
            return "Enter a valid email address"
        }
    }
    var validPasswordText: String{
        if isPassworValid(_password: password){
            return ""
        } else {
            return "Must be 8 characters containing at least one number and one Capital letter"
        }
    }
    var validConfirmPasswordText: String {
        if passwordsMatch(_confirmPW: confirmPassword){
            return ""
        } else {
            return "Password fields do not match."
        }
    }
    }
