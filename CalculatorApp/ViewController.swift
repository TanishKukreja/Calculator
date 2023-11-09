//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Tanish Kukreja on 05/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var readingLabel = UILabel()
    
    var button : UIButton!
    
    var calculatorStackView = UIStackView()
    
    let screenHeight = UIScreen.main.bounds.height
    
    let CHorizontalStackView = UIStackView()
    let SevenHorizontalStackView = UIStackView()
    let FourHorizontalStackView = UIStackView()
    let OneHorizontalStackView = UIStackView()
    let ZeroHorizontalStackView = UIStackView()
    
//    let button = UIButton(
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        button.round()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for i in 0..<4 {
             button = UIButton()
            if i == 0 {
                button.round()
                button.setTitle("C", for: .normal)
            } else if i == 1 {
                button.setTitle("+/-", for: .normal)
            }
            else if i == 2{
                button.setTitle("%", for: .normal)
            }
            else{
                button.setTitle("/", for: .normal)
            }
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .orange
            button.round()
            CHorizontalStackView.addArrangedSubview(button)
        }

        for i in 0..<4 {
             button = UIButton()
            if i == 0 {
                button.round()
                button.setTitle("7", for: .normal)
            } else if i == 1 {
                button.setTitle("8", for: .normal)
            }
            else if i == 2{
                button.setTitle("9", for: .normal)
            }
            else{
                button.setTitle("X", for: .normal)
            }
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .orange
            button.round()
            SevenHorizontalStackView.addArrangedSubview(button)
        }
        
        for i in 0..<4 {
             button = UIButton()
            if i == 0 {
                button.round()
                button.setTitle("4", for: .normal)
            } else if i == 1 {
                button.setTitle("5", for: .normal)
            }
            else if i == 2{
                button.setTitle("6", for: .normal)
            }
            else{
                button.setTitle("-", for: .normal)
            }
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .orange
            button.round()
            FourHorizontalStackView.addArrangedSubview(button)
        }
        
        for i in 0..<4 {
             button = UIButton()
            if i == 0 {
                button.round()
                button.setTitle("1", for: .normal)
            } else if i == 1 {
                button.setTitle("2", for: .normal)
            }
            else if i == 2{
                button.setTitle("3", for: .normal)
            }
            else{
                button.setTitle("+", for: .normal)
            }
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .orange
            button.round()
            OneHorizontalStackView.addArrangedSubview(button)
        }
        
        
        
        let stackViewHeight = 0.55 * screenHeight
        let labelHeight = 0.1 * screenHeight
        
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(readingLabel)
        view.addSubview(calculatorStackView)
        
        calculatorStackView.addArrangedSubview(CHorizontalStackView)
        calculatorStackView.addArrangedSubview(SevenHorizontalStackView)
        calculatorStackView.addArrangedSubview(OneHorizontalStackView)
        calculatorStackView.addArrangedSubview(FourHorizontalStackView)
        calculatorStackView.addArrangedSubview(ZeroHorizontalStackView)
        
//        CHorizontalStackView.addSubview(button)
        
        calculatorStackView.translatesAutoresizingMaskIntoConstraints = false
        calculatorStackView.axis = .vertical
        calculatorStackView.alignment = .fill
        calculatorStackView.distribution = .fillEqually
        calculatorStackView.spacing = 5
        
        CHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        CHorizontalStackView.axis = .horizontal
//        CHorizontalStackView.backgroundColor = .red
        CHorizontalStackView.distribution = .fillEqually
        CHorizontalStackView.spacing = 10
        
        
        SevenHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        SevenHorizontalStackView.axis = .horizontal
//        SevenHorizontalStackView.backgroundColor = .blue
        SevenHorizontalStackView.distribution = .fillEqually


        FourHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        FourHorizontalStackView.axis = .horizontal
//        FourHorizontalStackView.backgroundColor = .green
        FourHorizontalStackView.distribution = .fillEqually
        
        OneHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        OneHorizontalStackView.axis = .horizontal
        OneHorizontalStackView.distribution = .fillEqually
//        OneHorizontalStackView.backgroundColor = .brown
        
        ZeroHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        ZeroHorizontalStackView.axis = .horizontal
        ZeroHorizontalStackView.distribution = .fillEqually
//        ZeroHorizontalStackView.backgroundColor = .orange
        
        readingLabel.translatesAutoresizingMaskIntoConstraints = false
        readingLabel.textColor = .white
        readingLabel.textAlignment = .right
        readingLabel.backgroundColor = .gray
        
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .gray
//        button.setTitle("ABC", for: .normal)
        

        
        NSLayoutConstraint.activate([
            
            readingLabel.bottomAnchor.constraint(equalTo: calculatorStackView.topAnchor),
            readingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            readingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            readingLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            calculatorStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -20),
            calculatorStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calculatorStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calculatorStackView.heightAnchor.constraint(equalToConstant: stackViewHeight),
            
//            button.heightAnchor.constraint(equalToConstant: 30),
//            button.widthAnchor.constraint(equalToConstant: 30)

            
        ])
        
    }


}

