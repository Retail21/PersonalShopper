
//
//  TabBarControllerViewController.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 5/7/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func jabba(badge: String, viewNumber: Int){
        var tabarra = tabBar.items as NSArray!
        var tabite = tabarra.objectAtIndex(viewNumber) as! UITabBarItem
        tabite.badgeValue = badge
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
