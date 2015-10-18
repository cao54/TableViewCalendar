//
//  EventsList.swift
//  TableViewCalendar
//
//  Created by Yanting Cao on 15/10/15.
//  Copyright © 2015年 Yanting Cao. All rights reserved.
//

import UIKit

class EventsList: UIViewController, UITableViewDataSource {
//    
//    let AM = [
//        ("Meeting", "CS Building"),
//        ("Lunch with Someone", "Union South")]
//    
//    let PM = [
//        ("Class Discussion", "CS Building"),
//        ("Information Session", "Union South"),
//        ("Dinner with Somone", "State Street")]
    
    
    let AM = [
        ("Meeting", "CS Building"),
        ("Lunch with Someone", "Union South")]
    
    let PM = [
        ("Class Discussion", "CS Building"),
        ("Information Session", "Union South"),
        ("Dinner with Somone", "State Street")]
    
    @IBAction func done(segue:UIStoryboardSegue) {
        let carDetailVC = segue.sourceViewController as! AddEventViewController
        newCar = carDetailVC.name
        
        cars.append(newCar)
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return AM.count}
        else {
            return PM.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        if indexPath.section == 0{
            let (eventName, eventLocation) = AM[indexPath.row]
            cell.textLabel?.text = eventName
            cell.detailTextLabel?.text = eventLocation
        }else {
            let (eventName, eventLocation) = PM[indexPath.row]
            cell.textLabel?.text = eventName
            cell.detailTextLabel?.text = eventLocation
            
        }
        
        //        var myImage = UIImage(name:"CellIcon")
        //        cell.imageView?.image = myImage
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "AM"
        }else {
            return "PM"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}