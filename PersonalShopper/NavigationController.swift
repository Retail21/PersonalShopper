//
//  NavigatioController.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/29/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    var header:HeaderView!
    var abc:Int!
    var search:Search!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        header = HeaderView(frame: self.navigationController!.navigationBar.frame)
//        self.navigationController?.navigationBar.addSubview(header)
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "methodOfReceivedNotification:", name:"NotificationIdentifier", object: nil)
        

        // Do any additional setup after loading the view.
    }

    func methodOfReceivedNotification(notification: NSNotification){
        //Action take on Notification
        search = Search()

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
