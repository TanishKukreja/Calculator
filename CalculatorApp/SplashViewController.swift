//
//  SplashViewController.swift
//  CalculatorApp
//
//  Created by Tanish Kukreja on 24/11/23.
//

import Foundation
import UIKit

class SplashViewController : UIViewController{
    
    
    var logoImageView : UIImageView!
    
    override func viewDidLoad() {
        
    
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        
        logoImageView = UIImageView()

        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "appstore 1")
        view.addSubview(logoImageView)

       
        logoImageView.backgroundColor = .blue
        
        
        NSLayoutConstraint.activate([
            
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 180),
            logoImageView.heightAnchor.constraint(equalToConstant: 180)
            
            
        ])
        openNewViewControllerAfterDelay()
        
    }
    
    func openNewViewControllerAfterDelay() {
        let delayInSeconds: Double = 1.0

        DispatchQueue.main.asyncAfter(deadline: .now() + delayInSeconds) {
            let calculator = CalculatorViewController()

            self.present(calculator, animated: true, completion: nil)
        
        }
    }
    
}
