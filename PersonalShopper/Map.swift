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
    var s: String?
    var i: Int?
    convenience init() {
        println("MAP3")
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "I'am a test label"
        self.init(frame: CGRectMake(0, 0, 400, 221))
        self.backgroundColor = UIColor.redColor()
        self.addSubview(label)

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
        println(s!)
    }

}
//    required init(coder aDecoder: NSCoder) {
//        print("wewrwer\n")
//        abc = "sdsd"
//        super.init(coder: aDecoder)
//        print("222222\n")
//        
//        
//        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
//        label.center = CGPointMake(160, 284)
//        label.textAlignment = NSTextAlignment.Left
//        label.text = "I'am a test label"
//        self.addSubview(label)
//        //        fatalError("init(coder:) has not been implemented")
//    }


/*
//        let tabItems = self.tabBar.items as! [UITabBarItem]
//        let tabItem0 = tabItems[0] as UITabBarItem
//        let tabItem1 = tabItems[1] as UITabBarItem
//        let tabItem2 = tabItems[2] as UITabBarItem
//        let tabItem3 = tabItems[3] as UITabBarItem
//        tabItem0.title = "Mapa"
//        tabItem1.title = "Ofertas"
//        tabItem2.title = "Receitas"
//        tabItem3.title = "Listas Prontas"
*/