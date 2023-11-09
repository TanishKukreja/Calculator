//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Tanish Kukreja on 05/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var readingLabel = UILabel()
    var button: UIButton!
    var calculatorStackView = UIStackView()
    let screenHeight = UIScreen.main.bounds.height
    let CHorizontalStackView = UIStackView()
    let SevenHorizontalStackView = UIStackView()
    let OneStackView = UIStackView()
    let FourStackView = UIStackView()
    let ZeroHorizontalStackView = UIStackView()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @objc func ACButtonTapped(_ sender: UIButton){
        
        readingLabel.text = "0"
        
    }
    @objc func SevenButtonTapped(_ sender: UIButton){
        
        readingLabel.text = "7"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let stackViewHeight = 0.55 * screenHeight
        let labelHeight = 0.1 * screenHeight

        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(readingLabel)
        view.addSubview(calculatorStackView)

        calculatorStackView.addArrangedSubview(CHorizontalStackView)
        calculatorStackView.addArrangedSubview(SevenHorizontalStackView)
        calculatorStackView.addArrangedSubview(FourStackView)
        calculatorStackView.addArrangedSubview(OneStackView)
        calculatorStackView.addArrangedSubview(ZeroHorizontalStackView)

        calculatorStackView.translatesAutoresizingMaskIntoConstraints = false
        calculatorStackView.axis = .vertical
        calculatorStackView.alignment = .fill
        calculatorStackView.distribution = .fillEqually
        calculatorStackView.spacing = 10

        CHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        CHorizontalStackView.axis = .horizontal
        CHorizontalStackView.distribution = .fillEqually
        CHorizontalStackView.spacing = 10

        SevenHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        SevenHorizontalStackView.axis = .horizontal
        SevenHorizontalStackView.distribution = .fillEqually
        SevenHorizontalStackView.spacing = 10

        FourStackView.translatesAutoresizingMaskIntoConstraints = false
        FourStackView.axis = .horizontal
        FourStackView.distribution = .fillEqually
        FourStackView.spacing = 10
        
        OneStackView.translatesAutoresizingMaskIntoConstraints = false
        OneStackView.axis = .horizontal
        OneStackView.distribution = .fillEqually
        OneStackView.spacing = 10

        ZeroHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        ZeroHorizontalStackView.axis = .horizontal
        ZeroHorizontalStackView.distribution = .fillProportionally
        ZeroHorizontalStackView.spacing = 10
        

        readingLabel.translatesAutoresizingMaskIntoConstraints = false
        readingLabel.textColor = .white
        readingLabel.textAlignment = .right
        readingLabel.font = UIFont.systemFont(ofSize: 82)
//        readingLabel.backgroundColor = .gray
        
        
        for i in 0..<4 {
                 let button = UIButton()
                 button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                 if i == 0 {
                     button.addTarget(self, action:#selector(ACButtonTapped(_:)), for: .touchUpInside)
                     button.setTitle("C", for:.normal)
                     button.backgroundColor = .lightGray
                 } else if i == 1 {
                     button.setTitle("+ / -", for: .normal)
                     button.backgroundColor = .lightGray
                 } else if i == 2 {
                     button.setTitle("%", for: .normal)
                     button.backgroundColor = .lightGray
                 } else {
                     button.setTitle("/", for: .normal)
                     button.backgroundColor = .orange
                 }
                 button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

                 button.clipsToBounds = true
                 CHorizontalStackView.addArrangedSubview(button)
             }

        for i in 0..<4 {
            let button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame

            if i == 0 {
                button.addTarget(self, action:#selector(SevenButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("7", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.setTitle("8", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 2 {
                button.setTitle("9", for: .normal)
                button.backgroundColor = .darkGray
            } else {
                button.setTitle("X", for: .normal)
                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            SevenHorizontalStackView.addArrangedSubview(button)
        }

        for i in 0..<4 {
            let button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame

            if i == 0 {
                button.setTitle("4", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.setTitle("5", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 2 {
                button.setTitle("6", for: .normal)
                button.backgroundColor = .darkGray

            } else {
                button.setTitle("-", for: .normal)
                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            FourStackView.addArrangedSubview(button)
        }

        for i in 0..<4 {
            let button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame
            if i == 0 {
                button.setTitle("1", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.setTitle("2", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 2 {
                button.setTitle("3", for: .normal)
                button.backgroundColor = .darkGray

            } else {
                button.setTitle("+", for: .normal)
                
                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            OneStackView.addArrangedSubview(button)
        }

        for i in 0..<3 {
            let button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame
            if i == 0 {
                button.setTitle("0", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.setTitle(".", for: .normal)
                button.backgroundColor = .darkGray

            }  else {
                button.setTitle("=", for: .normal)
                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            ZeroHorizontalStackView.addArrangedSubview(button)
        }
      
        
        

        NSLayoutConstraint.activate([

                
                readingLabel.bottomAnchor.constraint(equalTo: calculatorStackView.topAnchor,constant: -10),
                readingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                readingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                readingLabel.heightAnchor.constraint(equalToConstant: labelHeight),
                
                calculatorStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -20),
                calculatorStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                calculatorStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                calculatorStackView.heightAnchor.constraint(equalToConstant: stackViewHeight),
                
                
                
            ])
            
        }
        
        
    }
