//
//  HeaderView.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class HeaderView: UIView, UISearchBarDelegate{
    var searchBar: UISearchBar!
    var logoImage: UIImageView!
    var buttonCancel: UIButton!
    
    let logoSize:CGSize = CGSize(width: 95, height: 34)
    
    
    var is_searching:Bool = false
    var dataArray:NSMutableArray!
    var searchingDataArray:NSMutableArray!

    
    override init(frame: CGRect)
    {
        
        super.init(frame: frame)
        
        
        logoImage = UIImageView()
        logoImage.frame = CGRectMake(30, -17, 95, 34)
        logoImage.contentMode = UIViewContentMode.ScaleAspectFit
        logoImage.image = UIImage(named: "Logo")
        self.addSubview(logoImage)
        
        searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.showsCancelButton = true
        searchBar.frame = CGRectMake(139, -10, 861, 28)
        searchBar.showsCancelButton = false
        searchBar.backgroundColor = UIColor.blueColor()
        self.addSubview(searchBar)
        
        buttonCancel = UIButton()
        buttonCancel.frame = CGRectMake(920 , -5, 360, 18)
        self.addSubview(buttonCancel)
        
        dataArray = ["Apple", "Samsung", "iPHone", "iPad", "Macbook", "iMac" , "Mac Mini"]
        searchingDataArray = []
        
    }
    
    required init(coder aDecoder: NSCoder)
    {
        searchBar = UISearchBar()
        logoImage = UIImageView()
        super.init(coder: aDecoder)
    }
    
    
    
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        println(searchBar.text)
        
        buttonCancel.setTitle("Cancel", forState: UIControlState.Normal)
        buttonCancel.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        buttonCancel.titleLabel?.font = UIFont(name: "HelveticaNeue-Normal", size: 18)
        buttonCancel.addTarget(self, action: "searchBarTextDidEndEditing:", forControlEvents: UIControlEvents.TouchUpInside)

        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.LayoutSubviews, animations: {
            
            self.buttonCancel.frame = CGRectMake(920 , -5, 60, 18)
            self.searchBar.frame = CGRectMake(139, -10, 757, 28)
            
        }, completion: nil)

    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        
        println("sssss")

    }
    
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        println("ddddd")
        searchBar.endEditing(true)
        self.resignFirstResponder()

        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.LayoutSubviews, animations: {
            
            self.buttonCancel.frame = CGRectMake(920 , -5, 260, 18)
            self.searchBar.frame = CGRectMake(139, -10, 861, 28)
            
            }, completion: nil)
    }
    
}