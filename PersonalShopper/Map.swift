//
//  Map.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/24/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit


class Map: UIView {

    var MapImage:UIImageView!
    var arrow:UIImageView!
    
    convenience init() {
        println("MAP3")

        self.init(frame: CGRectMake(0, 50, 500,500))
        
        self.backgroundColor = UIColor.redColor()
        MapImage = UIImageView()
        MapImage.frame = CGRectMake(20, 90, 460, 300);
        MapImage.image = UIImage(named: "mapMarket.png")
        self.addSubview(MapImage)
        
        arrow = UIImageView()
        arrow.frame = CGRectMake(200, 90, 40, 40);
        arrow.image = UIImage(named: "arrow.png")
        self.addSubview(arrow)
//use of self in delegating initializer before self.init is called
    }
    
    required init(coder aDecoder: NSCoder) {
        println("MAP1")
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        println("MAP2")
        super.init(frame: frame)
        
    }
    
    func ChangedTab(newTabNumber:Int){
        println(newTabNumber)
    }

}
