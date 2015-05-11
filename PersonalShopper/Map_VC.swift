//
//  Map_VC.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/28/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class Map_VC: StaticVC
{
    var map:UIImageView!
    var userAv:UserAvatarView!
    var noti:Notification!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        map = UIImageView(frame: self.view.frame)
        map.backgroundColor = UIColor.redColor()
        view.addSubview(map)
        
        userAv = UserAvatarView(frame: CGRectMake(200, 90, 40, 40))
        view.addSubview(userAv)
    
        noti = Notification(frame: self.view.frame)
        view.addSubview(noti)
    }

    override func didReceiveMemoryWarning()
    {
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
