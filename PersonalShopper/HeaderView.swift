//
//  HeaderView.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class HeaderView: UIView, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource{
    var searchBar: UISearchBar
    var logoImage: UIImageView
    
    let logoSize:CGSize = CGSize(width: 25, height: 25)
    
    
    var tableView: UITableView  =   UITableView()
    var is_searching:Bool!
    var dataArray:NSMutableArray!
    var searchingDataArray:NSMutableArray!
    
    
    override init(frame: CGRect)
    {
        let searchBarSize:CGSize = CGSize(width: 0.7*frame.width, height: 0.5*frame.height)
        
        let searchBarFrame:CGRect = CGRectMake(0.25*frame.width, 0, 0.25*frame.width, searchBarSize.height)
        
        let logoFrame:CGRect = CGRectMake(0.03*frame.width, 0, logoSize.width, logoSize.height)
        
        searchBar = UISearchBar(frame: searchBarFrame)
        logoImage = UIImageView(frame: logoFrame)
        logoImage.contentMode = .ScaleAspectFit
        var img = UIImage(named: "Joao Brandao")
        logoImage.image = img
        
        super.init(frame: frame)
        
        
        self.addSubview(searchBar)
        self.addSubview(logoImage)
//        self.addSubview(tableView)
//        bringSubviewToFront(tableView)
        
        searchBar.delegate = self
        searchBar.showsCancelButton = true
        
        is_searching = false
        
        dataArray = ["Apple", "Samsung", "iPHone", "iPad", "Macbook", "iMac" , "Mac Mini"]
        searchingDataArray = []
        
        tableView.frame = CGRect(x: 50,y: 10,width: 200,height: 200)
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.userInteractionEnabled = true
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.backgroundColor = UIColor.redColor()
        
        logoImage.backgroundColor = UIColor.blackColor()

//        self.clipsToBounds = true
        
        self.subviews.last?.removeFromSuperview()
    }

    required init(coder aDecoder: NSCoder)
    {
        searchBar = UISearchBar()
        logoImage = UIImageView()
        super.init(coder: aDecoder)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if is_searching == true{
            return searchingDataArray.count
        }else{
            return dataArray.count
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
    
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        
        
        self.backgroundColor = UIColor.greenColor()
        
        self.frame = CGRect(x: 10, y: 10, width: 300, height: 300)
        
        NSNotificationCenter.defaultCenter().postNotificationName("NotificationIdentifier", object: nil)
        
        self.addSubview(tableView)
        
        bringSubviewToFront(self)
        bringSubviewToFront(tableView)
    }
//
//    func searchBar(searchBar: UISearchBar, textDidChange searchText: String){
//        searchBarDidChange(searchBar, searchText: searchText)
//    }
    
}