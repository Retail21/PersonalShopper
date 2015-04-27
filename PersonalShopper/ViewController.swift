//
//  ViewController.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/24/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var Tabs: UISegmentedControl!
    var map:Map!
    var offers:Offers!
    var search:Search!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func TabChanged(sender: AnyObject) {
        println(Tabs.selectedSegmentIndex)
        if Tabs.selectedSegmentIndex == 1{
            map = Map()
            view.subviews.last?.removeFromSuperview()
            view.addSubview(map)
        }
        if Tabs.selectedSegmentIndex == 2{
            offers = Offers()
            view.subviews.last?.removeFromSuperview()
            view.addSubview(offers)
        }
    }
    
    func parseJSONSwift(requestUrl: NSString) -> NSDictionary{
        var error: NSError?
        var dataGet:NSData! = NSData(contentsOfURL: NSURL(string: requestUrl as String)!)
        var dataDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(dataGet, options: NSJSONReadingOptions.MutableContainers, error: &error) as! NSDictionary
        return dataDictionary
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        search = Search()
        view.subviews.last?.removeFromSuperview()
        view.addSubview(search)
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String){
        search.searchBarDidChange(searchBar, searchText: searchText)
    }

}

