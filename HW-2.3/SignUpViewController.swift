//
//  SignUpViewController.swift
//  HW-2.3
//
//  Created by Nureles Abdullai uulu on 4/30/24.
//

import SwiftUI
import SnapKit

class SignUpViewController: UIViewController {
    private let signUpLabel = UILabel()
    private let loginButton = UIButton()
    private let usernameTextField = UITextField()
    private let passwordTextField = UITextField()
    private let reenterPasswordTextField = UITextField()
    private let signUpButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        view.addSubview(signUpLabel)
        view.addSubview(loginButton)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(reenterPasswordTextField)
        view.addSubview(signUpButton)
        
        setupSignUpLabel()
        setupLoginButton()
        setupTextFields()
        setupSignUpButton()
        
    }
    
    private func setupSignUpLabel() {
        view.addSubview(signUpLabel)
        
        signUpLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        signUpLabel.text = "Sign Up /"
        
        signUpLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(47)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(188)
        }
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        loginButton.setTitleColor(UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1.0), for: .normal)
        
        loginButton.snp.makeConstraints { make in
            make.leading.equalTo(signUpLabel.snp.trailing).offset(10)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(192)
        }
        
        loginButton.addAction(UIAction { _ in
            let loginViewController = ViewController()
            loginViewController.modalPresentationStyle = .fullScreen
            self.present(loginViewController, animated: true)
        }, for: .touchUpInside)
    }
    
    private func setupTextFields() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(reenterPasswordTextField)
        
        usernameTextField.placeholder = "Username"
        usernameTextField.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        usernameTextField.snp.makeConstraints { make in
            make.top.equalTo(signUpLabel.snp.bottom).offset(50)
            make.leading.equalTo(signUpLabel)
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
        
        reenterPasswordTextField.placeholder = "Re-enter Password"
        reenterPasswordTextField.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        reenterPasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(47)
            make.height.equalTo(38)
        }
        
        let lineColor = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1.0)
        addBottomLine(to: usernameTextField, color: lineColor)
        addBottomLine(to: passwordTextField, color: lineColor)
        addBottomLine(to: reenterPasswordTextField, color: lineColor)
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
    
    private func setupSignUpButton() {
        view.addSubview(signUpButton)
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.backgroundColor = UIColor(red: 119/255, green: 149/255, blue: 255/255, alpha: 1.0)
        signUpButton.setTitleColor(UIColor.white, for: .normal)
        
        signUpButton.layer.cornerRadius = 15
        
        signUpButton.snp.makeConstraints { make in
            make.trailing.equalTo(usernameTextField)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(563)
            make.width.equalTo(142)
            make.height.equalTo(44)
        }
    }
}
