//
//  File.swift
//  openFireApp
//
//  Created by mac on 7/21/19.
//  Copyright © 2019 arrow. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    let backgroundimageView = UIImageView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let signupButton = UIButton()
    let loginButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBackground()
        setEmailTextField()
    }
    
    func setBackground() {
        addSubview(backgroundimageView)
        backgroundimageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        backgroundimageView.image = UIImage(named:"bgImage")
        backgroundimageView.contentMode = .scaleAspectFill
        sendSubviewToBack(backgroundimageView)
    }
    

    
    func setEmailTextField() {
        addSubview(emailTextField)
        emailTextField.borderStyle = .none
        emailTextField.layer.cornerRadius = 5
        emailTextField.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        emailTextField.textColor = UIColor(white: 0.9, alpha: 0.8)
        emailTextField.font = UIFont.systemFont(ofSize: 17)
        emailTextField.autocorrectionType = .no
//        placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString:NSAttributedString (string:"Email", attributes:[NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor:UIColor(white: 1, alpha: 0.7)]))
        emailTextField.attributedPlaceholder = placeholder
        emailTextField.setAnchor(width: 0, height: 40)
        settextFieldConstraints()
    }
    
    func settextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailTextField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    func setPasswordTextField() {
        addSubview(passwordTextField)
        passwordTextField.borderStyle = .none
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        passwordTextField.textColor = UIColor(white: 0.9, alpha: 0.8)
        passwordTextField.font = UIFont.systemFont(ofSize: 17)
        passwordTextField.autocorrectionType = .no
        //        placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString:NSAttributedString (string:"Password", attributes:[NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor:UIColor(white: 1, alpha: 0.7)]))
        passwordTextField.attributedPlaceholder = placeholder
        passwordTextField.setAnchor(width: 0, height: 40)
        
    }
    
    func setloginButton() {
        addSubview(loginButton)
        let attributtedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        loginButton.setAttributedTitle(attributtedString, for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor(red: 80/255, green: 227/255, blue: 194/255, alpha: 1).cgColor
        loginButton.setAnchor(width: 0, height: 50)
    }
    
    func setsignupButton() {
        addSubview(signupButton)
        let attributtedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        signupButton.setAttributedTitle(attributtedString, for: .normal)
        signupButton.layer.cornerRadius = 5
        signupButton.layer.borderWidth = 1
        signupButton.layer.borderColor = UIColor(red: 255/255, green: 151/255, blue: 164/255, alpha: 1).cgColor
        signupButton.setAnchor(width: 0, height: 50)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
