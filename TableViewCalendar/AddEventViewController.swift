//
//  AddEventViewController.swift
//  TableViewCalendar
//
//  Created by Yanting Cao on 15/10/15.
//  Copyright © 2015年 Yanting Cao. All rights reserved.
//


import UIKit

class AddEventViewController: UIViewController {
    
    @IBOutlet weak var eventName: UITextField!
   
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "doneSegue" {
            name = eventName.text!
        }
    }
    
}
