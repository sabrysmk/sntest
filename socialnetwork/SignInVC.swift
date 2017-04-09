//
//  ViewController.swift
//  socialnetwork
//
//  Created by Александр Сабри on 02.04.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookbtntaped(_ sender: Any) {
        
        let facebooklogin = FBSDKLoginManager()
        facebooklogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("SABRY: Cant authenticate with facebook - \(error)")
            } else if result?.isCancelled == true {
                print("SABRY: User fuct up")
            } else{
                print("SABRY: sucsessfully auth with facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("SABRY: unable to authenticate with Firebase - \(error)")
            }else{
                print("SABRY: All good authenticated with FireBase")
            }
        })
    }

}

