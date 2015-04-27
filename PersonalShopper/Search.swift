//
//  Search.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/25/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit


class Search: UIView ,UITableViewDelegate,UITableViewDataSource {
    var s: String?
    var i: Int?
    var tableView: UITableView  =   UITableView()
    var is_searching:Bool!
    var dataArray:NSMutableArray!
    var searchingDataArray:NSMutableArray!
    
    
    convenience init() {
        println("offer3")
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Left
        label.text = "I'am a test label search"
        
        self.init(frame: CGRectMake(0, 0, 500, 521))
        self.addSubview(label)
        self.backgroundColor = UIColor.greenColor()
        
        tableView.frame         =   CGRectMake(50, 50, 320, 200);
        tableView.delegate      =   self
        tableView.dataSource    =   self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.addSubview(tableView)
        is_searching = false
        dataArray = ["Apple", "Samsung", "iPHone", "iPad", "Macbook", "iMac" , "Mac Mini"]
        searchingDataArray = []
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        bringSubviewToFront(tableView)
        self.tableView.userInteractionEnabled = true
    }
    
    required init(coder aDecoder: NSCoder) {
        println("offer1")
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        println("offer2")
        super.init(frame: frame)
    }

    
    func parseJSONSwift(requestUrl: NSString) -> NSDictionary{
        var error: NSError?
        var dataGet:NSData! = NSData(contentsOfURL: NSURL(string: requestUrl as String)!)
        var dataDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(dataGet, options: NSJSONReadingOptions.MutableContainers, error: &error) as! NSDictionary
        return dataDictionary
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if is_searching == true{
            return searchingDataArray.count
        }else{
            return dataArray.count  //Currently Giving default Value
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        if is_searching == true{
            cell.textLabel!.text = searchingDataArray[indexPath.row] as! NSString as String
        }else{
            cell.textLabel!.text = dataArray[indexPath.row] as! NSString as String
        }
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println(" cell Selected #\(indexPath.row)! %@ ",dataArray[indexPath.row] as! NSString)
    }
    
    func searchBarDidChange(searchBar: UISearchBar, searchText: String){
        
        
        if searchBar.text.isEmpty{
            is_searching = false
            tableView.reloadData()
        } else {
            println(" search text %@ ",searchBar.text as NSString)
            is_searching = true
            searchingDataArray.removeAllObjects()
            for var index = 0; index < dataArray.count; index++
            {
                var currentString = dataArray.objectAtIndex(index) as! String
                if currentString.lowercaseString.rangeOfString(searchText.lowercaseString)  != nil {
                    searchingDataArray.addObject(currentString)
                    
                }
            }
            tableView.reloadData()
        }
    }


    
}