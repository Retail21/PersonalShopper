//
//  Notification.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit


class Notification: UIView {
    
    var offerPicture:UIImageView!
    var suggestions:UIImageView!
    var earType:UIImageView!
    var notificationFrame:UIImageView!
    
    var moreOffers:Button!
    var findInStore:Button!
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        

        
        notificationFrame = UIImageView()
        notificationFrame.frame = CGRectMake(32, 50, self.frame.width, self.frame.height)
        notificationFrame.backgroundColor = UIColor.whiteColor()
        notificationFrame.layer.shadowOffset = CGSize(width: -1, height: 0)
        notificationFrame.layer.shadowOpacity = 1
        self.addSubview(notificationFrame)
        
        offerPicture = UIImageView()
        offerPicture.userInteractionEnabled = true
        offerPicture.contentMode = UIViewContentMode.ScaleAspectFit
        offerPicture.frame = CGRectMake(70, 190, 249, 341);
        offerPicture.image = UIImage(named: "NotificationFull_Product")
        offerPicture.backgroundColor = UIColor.whiteColor()
        self.addSubview(offerPicture)

        suggestions = UIImageView()
        suggestions.contentMode = UIViewContentMode.ScaleAspectFit
        suggestions.frame = CGRectMake(400, 190, 569, 452)
        suggestions.image = UIImage(named: "NotificationFull_Sugestion&Similars")
        suggestions.backgroundColor = UIColor.whiteColor()
        self.addSubview(suggestions)

        earType = UIImageView()
        earType.frame = CGRectMake(0, self.frame.height/2 - 61, 34,123)
        earType.userInteractionEnabled = true
        self.addSubview(earType)
        
        moreOffers = Button(x: 50, y: 550, type: 3, buttonSize: 3, text: "Ver mais sobre esta oferta")

        findInStore = Button(x: 50, y: 550, type: 1, buttonSize: 3, text: "Encontrar na loja")
        
        loadModeMinimized()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    func loadModeMinimized(){
        
        addSubview(moreOffers)
        findInStore.removeFromSuperview()
        
        var SwipeLeft = UISwipeGestureRecognizer(target: self, action: "loadModeMaximized")
        SwipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        
        var SwipeRight = UISwipeGestureRecognizer(target: self, action: "loadModeZero")
        SwipeRight.direction = UISwipeGestureRecognizerDirection.Right
        
        earType.image = UIImage(named: "EarMin")
        earType.gestureRecognizers?.removeAll(keepCapacity: false)
        earType.addGestureRecognizer(SwipeLeft)
        earType.addGestureRecognizer(SwipeRight)
    
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width*2/3, 0, UIScreen.mainScreen().bounds.size.width/3, UIScreen.mainScreen().bounds.size.height)
        })
    }
    
    
    
    func loadModeMaximized(){
        
        addSubview(findInStore)
        moreOffers.removeFromSuperview()
        
        var SwipeRight = UISwipeGestureRecognizer(target: self, action: "loadModeMinimized")
        SwipeRight.direction = UISwipeGestureRecognizerDirection.Right
        
        earType.image = UIImage(named: "EarMax.png")
        earType.gestureRecognizers?.removeAll(keepCapacity: false)
        earType.addGestureRecognizer(SwipeRight)
        
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height)
        })
    }
    
    
    
    func loadModeZero(){
        println("loadModeZero()")
        
        var SwipeLeft = UISwipeGestureRecognizer(target: self, action: "loadModeMinimized")
        SwipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        
        earType.image = UIImage(named: "EarZero")
        earType.gestureRecognizers?.removeAll(keepCapacity: false)
        earType.addGestureRecognizer(SwipeLeft)

        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width-32, 0, UIScreen.mainScreen().bounds.size.width*3/3, UIScreen.mainScreen().bounds.size.height)
        })
    }
    
}