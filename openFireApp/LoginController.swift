//
//  ViewController.swift
//  openFireApp
//
//  Created by mac on 7/21/19.
//  Copyright © 2019 arrow. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    var loginView : LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .yellow
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func setupView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    

}

