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

    
    convenience init() {
        println("not1")
        
        self.init(frame: CGRectMake(UIScreen.mainScreen().bounds.size.width, 100, 0, 400))

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
        println("not2")
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        println("not3")
        super.init(frame: frame)
    }

    func loadModeMinimized(){
        println("loadModeMinimized()")

        nameLabel.textAlignment = NSTextAlignment.Left
        nameLabel.text = offer.product.name
        self.addSubview(nameLabel)
        
        
        beforePriceLabel.frame = CGRectMake(0, 30, 200, 21)
        beforePriceLabel.textAlignment = NSTextAlignment.Left
        beforePriceLabel.text = NSString(format: "%.2f", product.price) as String
        self.addSubview(beforePriceLabel)
        
        
        afterPriceLabel.frame = CGRectMake(0, 60, 200, 21)
        afterPriceLabel.textAlignment = NSTextAlignment.Left
        afterPriceLabel.text = NSString(format: "%.2f", offer.price) as String
        self.addSubview(afterPriceLabel)
        
        
        offerPicture.frame = CGRectMake(20, 90, 200, 300);
        offerPicture.image = offer.picture
        self.addSubview(offerPicture)
        
        offerPicture.gestureRecognizers?.removeAll(keepCapacity: false)
        var SwipeLeft = UISwipeGestureRecognizer(target: self, action: "loadModeMaximized")
        SwipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        offerPicture.addGestureRecognizer(SwipeLeft)
        var SwipeRight = UISwipeGestureRecognizer(target: self, action: "loadModeZero")
        SwipeRight.direction = UISwipeGestureRecognizerDirection.Right
        offerPicture.addGestureRecognizer(SwipeRight)
        

        
        self.backgroundColor = UIColor.blueColor()
        
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width*2/3, self.frame.origin.y, 300, self.frame.size.height)
            self.nameLabel.frame = CGRectMake(200, 0, 200, 21)
        })
    }
    

    
    func loadModeMaximized(){
        println("loadModeMaximized()")

        
        offerPicture.gestureRecognizers?.removeAll(keepCapacity: false)
        var SwipeRight = UISwipeGestureRecognizer(target: self, action: "loadModeMinimized")
        SwipeRight.direction = UISwipeGestureRecognizerDirection.Right
        offerPicture.addGestureRecognizer(SwipeRight)

        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width/3, self.frame.origin.y, 600, self.frame.size.height)
        })
    }
    
    
    
    func loadModeZero(){
        println("loadModeZero()")

        
        offerPicture.gestureRecognizers?.removeAll(keepCapacity: false)
       
        UIView.animateWithDuration(1.0, animations: {
            self.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width, self.frame.origin.y, 0, self.frame.size.height)
        })
    }
    
    func changeProduct(product:Product){
        
    }
    
    func removeGestures(UIImageView){
        
    }
    
}