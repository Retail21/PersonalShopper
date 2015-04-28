//
//  Offer.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class Offer {
    var price:Float32
    var product:Product
    var picture:UIImage?
//    var video:Video..
//    var uusetios:[UseTip]
//    var related_products:[Product]
//    var beacon:Beacon
//    var like:Like
    
    
    
    init(price:Float32, product:Product, picture: UIImage?){
        self.price = price
        self.product = product
        self.picture = picture
    }
    
}