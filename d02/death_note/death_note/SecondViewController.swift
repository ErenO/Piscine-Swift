//
//  SecondViewController.swift
//  death_note
//
//  Created by Eren Ozdek on 13/06/2017.
//  Copyright © 2017 Eren Ozdek. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var deathTxt: UITextView!
//    var dateMod : String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backSegue"
        {
              print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
            if self.nameLbl.text != "" && self.deathTxt.text != ""
            {
                  print("==============================")
                if let vc = segue.destination as? ViewController
                {
                      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
                    let newElem = Data(name: (self.nameLbl?.text!)!, date: datePicker.date.description, death: (self.deathTxt?.text!)!)
                    vc.deathCell.insert(newElem, at: 0)
                }
            }
        }
    }
    
//    @IBAction func backBtn(_ sender: Any) {
//        performSegue(withIdentifier: "backSegue", sender: self)
//    }
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "backSegue", sender: self)
    }

//    @IBAction func DatePickerChanged(_ sender: UIDatePicker) {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd.MM.yyyy HH:mm"
//        
//        dateMod = formatter.string(from: sender.date)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deathTxt?.layer.borderWidth = 1
        deathTxt?.layer.borderColor = UIColor.black.cgColor
//         Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
