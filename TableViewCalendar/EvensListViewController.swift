//
//  EvensListViewController.swift
//  TableViewCalendar
//
//  Created by Yanting Cao on 15/10/15.
//  Copyright © 2015年 Yanting Cao. All rights reserved.
//

import UIKit

class EvensListViewController: UIViewController, UITableViewDataSource
{
    
    
    @IBOutlet weak var tableView: UITableView!
    
//    let AM = [
//        ("Meeting", "CS Building"),
//        ("Lunch with Someone", "Union South")]
//    
//    let PM = [
//        ("Class Discussion", "CS Building"),
//        ("Information Session", "Union South"),
//        ("Dinner with Somone", "State Street")]
    var events = [String]()
    var newEvent: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        events = ["Breakfast","Meeting","Lunch"]
        
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    @IBAction func done(segue:UIStoryboardSegue) {
        let eventDetailVC = segue.sourceViewController as! AddEventViewController
        newEvent = eventDetailVC.name
        
        events.append(newEvent)
    }
    
//    @IBAction func addAGroupBtnclicked(sender: UIBarButtonItem) {
//        events.append(event(text: "ok"))
//        tableView.reloadData()
//    }
    
    //Delete Event
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            events.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = events[indexPath.row]
        //        var myImage = UIImage(name:"CellIcon")
        //        cell.imageView?.image = myImage
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Events"
 }
    
    
    
    
    
}

