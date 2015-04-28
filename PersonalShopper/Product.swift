//
//  Product.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/27/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class Product {
    var name:String
    var section:String
    var price:Float32
//    var picture:UIImage
    var brand:String
//    var recipes:[Recipe]
//    var promotion:Promotion
//    var nutritionInfo:NutritionInfo
    
    
    init(name:String, price:Float32, /*picture: UIImage,*/ brand:String){
        self.name = name
        self.price = price
//        self.picture = picture
        self.brand = brand
        self.section = "dfd"

    }
    

    
}