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
    
    var product:Product!
    var offer:Offer!
    
    var nameLabel:UILabel!
    var beforePriceLabel:UILabel!
    var afterPriceLabel:UILabel!
    var offerPicture:UIImageView!
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        product = Product(name: "Nescau 200g", price: 2.90, brand: "Nestlé")
        offer = Offer(price: 2.32, product: product, picture: UIImage(named: "nescau.jpg"))
        
        nameLabel = UILabel()
        beforePriceLabel = UILabel()
        afterPriceLabel = UILabel()
        offerPicture = UIImageView()
        offerPicture.userInteractionEnabled = true
        
        loadModeMinimized()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    func loadModeMinimized(){
        println("loadModeMinimized()")
        
        nameLabel.textAlignment = NSTextAlignment.Left
        nameLabel.text = offer.product.name
        self.addSubview(nameLabel)
        
        
        beforePriceLabel.frame = CGRectMake(0, 130, 200, 21)
        beforePriceLabel.textAlignment = NSTextAlignment.Left
        beforePriceLabel.text = NSString(format: "%.2f", product.price) as String
        self.addSubview(beforePriceLabel)
        
        
        afterPriceLabel.frame = CGRectMake(0, 160, 200, 21)
        afterPriceLabel.textAlignment = NSTextAlignment.Left
        afterPriceLabel.text = NSString(format: "%.2f", offer.price) as String
        self.addSubview(afterPriceLabel)
        
        
        offerPicture.frame = CGRectMake(20, 190, 200, 300);
        offerPicture.image = offer.picture
        self.addSubview(offerPicture)
        
        offerPicture.gestureRecognizers?.removeAll(keepCapacity: false)
        var SwipeLeft = UIPanGestureRecognizer(target: self, action: "loadModeMaximized")
//        SwipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        SwipeLeft.cancelsTouchesInView = false
        offerPicture.addGestureRecognizer(SwipeLeft)
        
        
        
        
        
        
        var SwipeRight = UISwipeGestureRecognizer(target: self, action: "loadModeZero")
        SwipeRight.direction = UISwipeGestureRecognizerDirection.Right
        offerPicture.addGestureRecognizer(SwipeRight)
        
        
        
        self.backgroundColor = UIColor.blueColor()
        
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width*2/3, 0, UIScreen.mainScreen().bounds.size.width/3 - 5, UIScreen.mainScreen().bounds.size.height)
        })
    }
    
    
    
    func loadModeMaximized(){
        println("loadModeMaximized()")
        
        
        offerPicture.gestureRecognizers?.removeAll(keepCapacity: false)
        var SwipeRight = UISwipeGestureRecognizer(target: self, action: "loadModeMinimized")
        SwipeRight.direction = UISwipeGestureRecognizerDirection.Right
        offerPicture.addGestureRecognizer(SwipeRight)
        
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width/3, 0, UIScreen.mainScreen().bounds.size.width*2/3 - 5, UIScreen.mainScreen().bounds.size.height)
        })
    }
    
    
    
    func loadModeZero(){
        println("loadModeZero()")
        
        
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width, self.frame.origin.y, 0, self.frame.size.height)

        })
    
    }
    
    func changeProduct(product:Product){
        
    }
    
    func removeGestures(UIImageView){
        
    }
    
}