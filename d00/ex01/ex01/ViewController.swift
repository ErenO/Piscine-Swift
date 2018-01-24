//
//  ViewController.swift
//  ex01
//
//  Created by Eren Ozdek on 12/06/2017.
//  Copyright © 2017 Eren Ozdek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLbl: UILabel!
    
    @IBAction func clickBtn(_ sender: Any) {
        if helloLbl.text == "Hello World !" {
            helloLbl.text = "Hello le monde !"
        } else {
          helloLbl.text = "Hello World !"  
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        helloLbl.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

