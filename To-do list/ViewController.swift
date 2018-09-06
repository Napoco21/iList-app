//
//  ViewController.swift
//  To-do list
//
//  Created by aagbetra on 5/19/18.
//  Copyright © 2018 Group4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var AddItem: UITextField!
    @IBOutlet weak var List: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // self.view.backgroundColor = UIColor.brown
    }

    @IBAction func didTapButton(_ sender: Any) {
        if let text = AddItem.text {
            if text == "" {
                return
            }
            List.text.append("\(text)\n") // appends the variable "text" and goes to the next line
            AddItem.text = ""
            AddItem.resignFirstResponder()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

