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
    
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)

        self.backgroundColor = UIColor.redColor()
        MapImage = UIImageView()
        MapImage.frame = self.frame
        MapImage.image = UIImage(named: "mapMarket.png")
        self.addSubview(MapImage)
        
        arrow = UIImageView()
        arrow.frame = CGRectMake(200, 90, 40, 40);
        arrow.image = UIImage(named: "arrow.png")
        self.addSubview(arrow)
        

        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    func ChangedTab(newTabNumber:Int){
        println(newTabNumber)
    }
    
}
