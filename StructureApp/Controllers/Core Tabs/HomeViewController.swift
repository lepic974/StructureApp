//
//  HomeViewController.swift
//  StructureApp
//
//  Created by Joh_Macbook on 26/07/2021.
//

import UIKit
import SwiftUI
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthentication()
    }
    
    private func handleNotAuthentication() {
        // Check auth status
        if Auth.auth().currentUser == nil {
            
            // Show log in
            let signinVC = SignInViewController()
            signinVC.modalPresentationStyle = .fullScreen
            present(signinVC, animated: false)
            
        }
    }
}
