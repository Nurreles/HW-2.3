//
//  ViewController.swift
//  HW-2.3
//
//  Created by Nureles Abdullai uulu on 4/30/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let loginLabel = UILabel()
    private let signUpButton = UIButton()
    private let usernameTextField = UITextField()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton()
    private let signUpViewController = SignUpViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        setupLoginLabel()
        setupSignUpButton()
        setupTextFields()
        setupLoginButton()
    }
    
    private func setupLoginLabel() {
        view.addSubview(loginLabel)
        
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        loginLabel.text = "LOGIN /"
        
        loginLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(47)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(188)
        }
    }
    
    private func setupSignUpButton() {
        view.addSubview(signUpButton)
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        signUpButton.setTitleColor(UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1.0), for: .normal)
        
        signUpButton.snp.makeConstraints { make in
            make.leading.equalTo(loginLabel.snp.trailing).offset(10)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(192)
        }
        
        signUpButton.addAction(UIAction { _ in
            self.signUpViewController.modalPresentationStyle = .fullScreen
            self.present(self.signUpViewController, animated: true)
        }, for: .touchUpInside)
        self.view.layoutIfNeeded()
    }
    
    
    
    private func setupTextFields() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        
        usernameTextField.placeholder = "Username"
        usernameTextField.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        usernameTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(50)
            make.leading.equalTo(loginLabel)
            make.leading.trailing.equalToSuperview().inset(47)
            make.height.equalTo(38)
        }
        
        passwordTextField.placeholder = "Password"
        passwordTextField.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(usernameTextField.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(47)
            make.height.equalTo(38)
        }
        
        let lineColor = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1.0)
        addBottomLine(to: usernameTextField, color: lineColor)
        addBottomLine(to: passwordTextField, color: lineColor)
    }
    
    private func addBottomLine(to textField: UITextField, color: UIColor) {
        let lineView = UIView()
        lineView.backgroundColor = color
        textField.addSubview(lineView)
        
        lineView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(2)
        }
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = UIColor(red: 119/255, green: 149/255, blue: 255/255, alpha: 1.0)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        
        loginButton.layer.cornerRadius = 15
        
        loginButton.snp.makeConstraints { make in
            make.trailing.equalTo(usernameTextField)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(499)
            make.width.equalTo(142)
            make.height.equalTo(44)
        }
    }
}

