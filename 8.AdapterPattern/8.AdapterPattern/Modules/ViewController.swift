//
//  ViewController.swift
//  8.AdapterPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    let service: SignService = SignAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func googleSignAction(_ sender: Any) {
        service.login(signType: .google, email: emailTextFiled.text,
                      password: passwordTextFiled.text) { googleUser, token in
            print("Sign in google, user is: \(googleUser), token: \(token)")
        } failure: { error in
            if let error = error {
                print("Sign failure: \(error.localizedDescription)")
            }
        }
    }
    
    @IBAction func appleSignAction(_ sender: Any) {
        service.login(signType: .apple, email: nil, password: nil) { appleUser, token in
            print("Sign in apple, user is: \(appleUser), token: \(token)")
        } failure: { error in
            if let error = error {
                print("Sign failure: \(error.localizedDescription)")
            }
        }
    }
}
