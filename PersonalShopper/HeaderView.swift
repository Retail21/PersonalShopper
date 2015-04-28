//
//  HeaderView.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class HeaderView: UIView, UISearchBarDelegate
{
    var searchBar: UISearchBar
    var logoImage: UIImageView
    
    let logoSize:CGSize = CGSize(width: 25, height: 25)
    
    override init(frame: CGRect)
    {
        let searchBarSize:CGSize = CGSize(width: 0.7*frame.width, height: 0.5*frame.height)
        
        let searchBarFrame:CGRect = CGRectMake(0.25*frame.width, 0, 0.75*frame.width, searchBarSize.height)
        
        let logoFrame:CGRect = CGRectMake(0.03*frame.width, 0, logoSize.width, logoSize.height)
        
        searchBar = UISearchBar(frame: searchBarFrame)
        logoImage = UIImageView(frame: logoFrame)
        logoImage.contentMode = .ScaleAspectFit
        var img = UIImage(named: "Joao Brandao")
        logoImage.image = img
        
        super.init(frame: frame)
        
        self.addSubview(searchBar)
        self.addSubview(logoImage)
        
        searchBar.delegate = self
        
        // delete after this
        
        logoImage.backgroundColor = UIColor.blackColor()
    }

    required init(coder aDecoder: NSCoder)
    {
        searchBar = UISearchBar()
        logoImage = UIImageView()
        super.init(coder: aDecoder)
    }
}