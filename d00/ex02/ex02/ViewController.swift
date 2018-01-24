//
//  ViewController.swift
//  ex02
//
//  Created by Eren Ozdek on 12/06/2017.
//  Copyright © 2017 Eren Ozdek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLbl: UILabel!
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        outputLbl.text = "0"
        currentOperation = Operation.Empty
        runningNumber = ""
        leftValStr = ""
        rightValStr = ""
        result = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(sender : UIButton)
    {
        print("\(sender.tag)")
        runningNumber += "\(sender.tag)"
        outputLbl.text = runningNumber
    }
    
    @IBAction func onEqualPressed(_ sender: Any) {
        print("=")
        if leftValStr != "" {
            processOperation(operation: currentOperation)
        }
        
    }
    
    @IBAction func onACPressed(_ sender: Any) {
        print("AC")
        result = "0"
        runningNumber = ""
        leftValStr = "0"
        rightValStr = "0"
        outputLbl.text = "0"
        currentOperation = Operation.Empty
    }
    
    @IBAction func onNegPressed(_ sender: Any) {
        print("NEG")
        if (runningNumber != "") {
            runningNumber = "\(-1 * Double(runningNumber)!)"
            outputLbl.text = runningNumber
        } else if leftValStr != "" {
            leftValStr = "\(-1 * Double(leftValStr)!)"
            outputLbl.text = leftValStr
        }
        
    }
    
    @IBAction func onAddPressed(_ sender: Any) {
        print("+")
        processOperation(operation: .Add)

    }
    
    @IBAction func onSubtractPressed(_ sender: Any) {
        print("-")
        processOperation(operation: .Subtract)

    }
    
    @IBAction func onDividePressed(_ sender: Any) {
        print("/")
        processOperation(operation: .Divide)

    }
    
    @IBAction func onMultiplyPressed(_ sender: Any) {
        print("*")
        processOperation(operation: .Multiply)

    }
    
    func processOperation(operation: Operation) {
        if currentOperation != Operation.Empty {
            if runningNumber != ""
            {
                rightValStr = runningNumber
                runningNumber = ""
                if leftValStr != ""
                {
                    if currentOperation == Operation.Multiply
                    {
                        result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                    } else if currentOperation == Operation.Divide {
                        result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                    } else if currentOperation == Operation.Subtract {
                        result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                    } else if currentOperation == Operation.Add {
                        result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                    }
                }
                leftValStr = result
                outputLbl.text = result
            }
            currentOperation = operation
        }
        else
        {
            //first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }

}

