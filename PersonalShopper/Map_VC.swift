//
//  Map_VC.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/28/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class Map_VC: UIViewController
{

    var map:Map!
    var noti:Notification!
    var header:HeaderView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        header = HeaderView(frame: self.navigationController!.navigationBar.frame)
        self.navigationController?.navigationBar.addSubview(header)
        
//        view.addSubview(Map(frame: CGRectMake(  0, self.navigationController!.navigationBar.frame.size.height, self.view.frame.size.width, self.view.frame.size.height - self.navigationController!.navigationBar.frame.size.height - self.tabBarController!.tabBar.frame.size.height)))
        
//        view.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        map = Map(frame: self.view.frame)
        view.addSubview(map)
        
        noti = Notification(frame: self.view.frame)
        view.addSubview(noti)
        
        view.bringSubviewToFront(header)
        
        
//        header.tableView.delegate = self
//        header.tableView.dataSource = self
//        header.tableView.userInteractionEnabled = true
//        header.userInteractionEnabled = true
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
