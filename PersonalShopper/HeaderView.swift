//
//  HeaderView.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class HeaderView: UIView//, UISearchBarDelegate, UIPopoverPresentationControllerDelegate
{
    var searchBar: UISearchBar!
    var logoImage: UIImageView!
    var buttonCancel: UIButton!
    
    let logoSize:CGSize = CGSize(width: 95, height: 34)
    
    var is_searching:Bool = false
    var dataArray:NSMutableArray!
    var searchingDataArray:NSMutableArray!
    var popovercontent:AutoCompletePopverController = AutoCompletePopverController()
    
    
    //var popover:UIPopoverPresentationController? = nil
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        logoImage = UIImageView()
        logoImage.frame = CGRectMake(30, -17, 95, 34)
        logoImage.contentMode = UIViewContentMode.ScaleAspectFit
        logoImage.image = UIImage(named: "Logo")
        self.addSubview(logoImage)
        
        searchBar = UISearchBar()
        //searchBar.delegate = self
        searchBar.showsCancelButton = true
        searchBar.frame = CGRectMake(139, -10, 861, 28)
        searchBar.showsCancelButton = false
        searchBar.backgroundColor = UIColor.blueColor()
        self.addSubview(searchBar)
        
        buttonCancel = UIButton()
        buttonCancel.frame = CGRectMake(920 , -5, 360, 18)
        self.addSubview(buttonCancel)
        
//        dataArray = ["Apple", "Samsung", "iPHone", "iPad", "Macbook", "iMac" , "Mac Mini"]
//        searchingDataArray = []
        
    }
    
//    var showAutoComplete = true
//    func searchBarTextChange(searchText:String, srcViewController:UIViewController)
//    {
//        if count(searchText) >= 3
//        {
//            if showAutoComplete
//            {
//                showAutoComplete = false
//                self.popovercontent = AutoCompletePopverController()
//                self.popovercontent.modalPresentationStyle = UIModalPresentationStyle.Popover
//                self.popovercontent.preferredContentSize = CGSizeMake(self.searchBar.frame.width, 400)
//                self.popovercontent.popoverPresentationController?.delegate = srcViewController
//            }
//        }
//        
//    }
    
    required init(coder aDecoder: NSCoder)
    {
        searchBar = UISearchBar()
        logoImage = UIImageView()
        super.init(coder: aDecoder)
    }
    
    
    
    
    
}