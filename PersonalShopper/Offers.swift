//
//  Offer.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/25/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit


class Offers: UIView {
        var s: String?
        var i: Int?
        convenience init() {
            println("offer3")
            var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
            label.center = CGPointMake(160, 284)
            label.textAlignment = NSTextAlignment.Left
            label.text = "I'am a test label offer"
            
            self.init(frame: CGRectMake(0, 0, 200, 21))
            self.addSubview(label)
            self.backgroundColor = UIColor.greenColor()
            
        }
        
        required init(coder aDecoder: NSCoder) {
            println("offer1")
            super.init(coder: aDecoder)
        }
        
        override init(frame: CGRect) {
            println("offer2")
            super.init(frame: frame)
        }
        
        func ChangedTab(newTabNumber:Int){
            println(newTabNumber)
            println(s!)
        }
    
}