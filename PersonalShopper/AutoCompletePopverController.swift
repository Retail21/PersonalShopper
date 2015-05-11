//
//  AutoCompletePopverController.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 5/8/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class AutoCompletePopverController: UITableViewController
{
    var data:[AnyObject] = []
    var sections:[String] = []
    var searchingData:[AnyObject] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        data = ["Bis", "Biscoito", "Bisnaguinha"]
        sections = ["Marcas", "Sub Categorias"]
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return sections.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel!.text = data[indexPath.row] as? String
        
        return cell;
    }


    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        println(" cell Selected #\(indexPath.row)! %@ ",data[indexPath.row] as! NSString)
        
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return self.sections[section]
    }
    
    override func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
    {
        if index > 0
        {
            return 1
        }
        
        return 0
    }
    

    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
