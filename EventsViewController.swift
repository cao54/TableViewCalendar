//
//  EvensListViewController.swift
//  TableViewCalendar
//
//  Created by Yanting Cao on 15/10/15.
//  Copyright © 2015年 Yanting Cao. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDataSource
{
    
    
    @IBOutlet weak var tableView: UITableView!
    

    var events = [String]()
    var newEvent: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        events = ["Breakfast @ 9:00AM","Meeting @ 11:00AM","Lunch @ 1:00PM"]
        
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
   
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Events"
    }
    
    
    
    
    
}

