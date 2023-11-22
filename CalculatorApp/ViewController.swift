//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Tanish Kukreja on 05/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var temp : Double = 0
    var total : Double = 0
    private var operating:Bool=false
    private var operation : OperationType =  .NONE
    
    private let kDecimalSeparator = Locale.current.decimalSeparator
    private let kMaxLength = 9
    private let kTotal = "total"
    
    var readingLabel = UILabel()
    var calculatorStackView = UIStackView()
    let screenHeight = UIScreen.main.bounds.height
    let CHorizontalStackView = UIStackView()
    let SevenHorizontalStackView = UIStackView()
    let OneStackView = UIStackView()
    let FourStackView = UIStackView()
    let ZeroHorizontalStackView = UIStackView()
    var workings : String = ""
    var button : UIButton!

    
    func addToWorkings(value:String) {
        workings = workings+value
        readingLabel.text = workings
    }
    
    
    func plusButtonTapped(){
        
        operation = .ADDICION
        
        temp = Double(readingLabel.text!) ?? 0.0
        
        print(temp)
        
        if(temp.description.count > 0 ){
            allClearButtonTapped()
        }
        
        else{
            print("No values found")
        }

        
       
        
    }
    
    private enum OperationType {
        case NONE,ADDICION,SUBSTRACTION,DIVISION,PORCENT,MULTIPLICATION
    }
    
    private func result(){
        
        
        switch operation {
            
        case .NONE:
            break
            
        case .ADDICION:
            
            
            print("Addition tapped")
    
            total = temp + Double(readingLabel.text!)!
            print(total)
            readingLabel.text = String(total)
            
            
            break
            
        case .SUBSTRACTION:
            
            print("Subtraction tapped")
    
            total = temp - Double(readingLabel.text!)!
            print(total)
            readingLabel.text = String(total)

            break
        case .MULTIPLICATION:
            
            print("Multiplication tapped")
    
            total = temp * Double(readingLabel.text!)!
            print(total)
            readingLabel.text = String(total)

            break
        case .DIVISION:
            
            print("Divison  tapped")
    
            total = temp / Double(readingLabel.text!)!
            print(total)
            readingLabel.text = String(total)

            break
        case .PORCENT:
            temp = temp / 100
            total = temp
            readingLabel.text = String(total)

            break
            
        default :
            print("nothing executed")
        }
    }
    

    
    
    func allClearButtonTapped(){
        workings = ""
        readingLabel.text = ""
    }
    
   

    func SubtractButtonTapped(){
        
        temp = Double(readingLabel.text!) ?? 0.0
        
        print(temp)
        
        if(temp.description.count > 0 ){
            allClearButtonTapped()
        }
        
        else{
            print("No values found")
        }

        print(readingLabel.text)
    }
    
    func MultiplyButtonTapped(){
        temp = Double(readingLabel.text!) ?? 0.0
        
        print(temp)
        
        if(temp.description.count > 0 ){
            allClearButtonTapped()
        }
        
        else{
            print("No values found")
        }

        print(readingLabel.text)
    }
    
    func DivideButtonTapped(){
        temp = Double(readingLabel.text!) ?? 0.0
        
        print(temp)
        
        if(temp.description.count > 0 ){
            allClearButtonTapped()
        }
        
        else{
            print("No values found")
        }

        print(readingLabel.text)
    }
    
    @objc func equalTotButtonTapped(_ sender:UIButton){

          result()
    }
    
    
@objc func divideButtonTapped(_ sender: UIButton){
    operation = .DIVISION
        DivideButtonTapped()
    }
    
    @objc func plusButtonTapped(_ sender: UIButton){
        operation = .ADDICION
        plusButtonTapped()
    }
    @objc func SubtractButtonTapped(_ sender: UIButton){
        operation = .SUBSTRACTION
        SubtractButtonTapped()
    }
    
    @objc func MultiplyButtonTapped(_ sender: UIButton){
        operation = .MULTIPLICATION
        MultiplyButtonTapped()
    }
    
    @objc func ACButtonTapped(_ sender: UIButton){
        allClearButtonTapped()
        
    }
    @objc func SevenButtonTapped(_ sender: UIButton){
        addToWorkings(value: "7")
    }
    
    @objc func EightButtonTapped(_ sender: UIButton){
        addToWorkings(value: "8")
    }
    
    @objc func NineButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "9")
        
    }
    
    @objc func SixButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "6")
        
    }
    @objc func FiveButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "5")
        
    }
    @objc func FourButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "4")
        
    }
    @objc func ThreeButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "3")
        
    }
    
    @objc func TwoButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "2")
        
    }
    @objc func ZeroButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "0")
        
    }
    
    @objc func OneButtonTapped(_ sender: UIButton){
        
        addToWorkings(value: "1")
        
    }
    
    
    @objc func swipeLabel(_ sender: UISwipeGestureRecognizer){
        if sender.direction == .left && readingLabel.text?.isEmpty == false{
            workings.removeLast()
            readingLabel.text = workings
        }
        else if sender.direction == .right{
        }
        else{
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let stackViewHeight = 0.55 * screenHeight
        let labelHeight = 0.1 * screenHeight
        
        let swipeLabel = UISwipeGestureRecognizer(target: self, action: #selector(swipeLabel(_:)))
        readingLabel.addGestureRecognizer(swipeLabel)
        readingLabel.isUserInteractionEnabled = true
        swipeLabel.direction = .left

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
        
        
        for i in 0..<4 {
                  button = UIButton()
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
                     button.addTarget(self, action:#selector(divideButtonTapped(_:)), for: .touchUpInside)

                     button.backgroundColor = .orange
                 }
                 button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

                 button.clipsToBounds = true
                 CHorizontalStackView.addArrangedSubview(button)
             }

        for i in 0..<4 {
             button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

            if i == 0 {
                button.addTarget(self, action:#selector(SevenButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("7", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.addTarget(self, action:#selector(EightButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("8", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 2 {
                button.addTarget(self, action:#selector(NineButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("9", for: .normal)
                button.backgroundColor = .darkGray
            } else {
                button.setTitle("X", for: .normal)
                button.addTarget(self, action:#selector(MultiplyButtonTapped(_:)), for: .touchUpInside)

                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            SevenHorizontalStackView.addArrangedSubview(button)
        }

        for i in 0..<4 {
             button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame

            if i == 0 {
                button.setTitle("4", for: .normal)
                button.addTarget(self, action:#selector(FourButtonTapped(_:)), for: .touchUpInside)

                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.addTarget(self, action:#selector(FiveButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("5", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 2 {
                button.addTarget(self, action:#selector(SixButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("6", for: .normal)
                button.backgroundColor = .darkGray

            } else {
                button.setTitle("-", for: .normal)
                button.addTarget(self, action:#selector(SubtractButtonTapped(_:)), for: .touchUpInside)

                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            FourStackView.addArrangedSubview(button)
        }

        for i in 0..<4 {
             button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame
            if i == 0 {
                button.addTarget(self, action:#selector(OneButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("1", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 1 {
                button.addTarget(self, action:#selector(TwoButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("2", for: .normal)
                button.backgroundColor = .darkGray

            } else if i == 2 {
                button.addTarget(self, action:#selector(ThreeButtonTapped(_:)), for: .touchUpInside)

                button.setTitle("3", for: .normal)
                button.backgroundColor = .darkGray

            } else {
                button.setTitle("+", for: .normal)
            
                button.addTarget(self, action:#selector(plusButtonTapped(_:)), for: .touchUpInside)

                button.backgroundColor = .orange
            }
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)

            button.layer.cornerRadius = button.bounds.height / 2
            button.clipsToBounds = true
            OneStackView.addArrangedSubview(button)
        }

        for i in 0..<3 {
             button = UIButton()
            button.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Set the frame
            if i == 0 {
                button.setTitle("0", for: .normal)
                button.addTarget(self, action:#selector(ZeroButtonTapped(_:)), for: .touchUpInside)

                button.backgroundColor = .darkGray
                
            } else if i == 1 {
                button.setTitle(".", for: .normal)
                button.backgroundColor = .darkGray
                
            }  else {
                button.setTitle("=", for: .normal)
                button.addTarget(self, action:#selector(equalTotButtonTapped(_:)), for: .touchUpInside)

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
