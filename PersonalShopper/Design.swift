//
//  Design.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 5/3/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit

class Button: UIButton {
    var button: UIButton!
    var colors = Color()
    var fonts = Font()
    var fontsizes = FontSize()
    var buttonsizes = ButtonSizes()
    
    init(x: CGFloat, y: CGFloat, type: Int, buttonSize:Int, text:String){
        
        super.init(frame: CGRectMake(x,y,0,0))
        button = UIButton(frame: frame)
        button.layer.cornerRadius = 5
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowOpacity = 1
        button.layer.shadowRadius = 1
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.setTitle(text, forState: .Normal)
        button.titleLabel?.font = UIFont(name: fonts.Medium, size: fontsizes.size6)
        bringSubviewToFront(button)

        
        switch type {
        case 1:
            button.backgroundColor   = colors.Store
            button.layer.shadowColor = colors.StoreShadow.CGColor
            button.setTitleColor(colors.StorePressed, forState: UIControlState.Highlighted)
        case 2:
            button.backgroundColor   = colors.CheckBoxes
            button.layer.shadowColor = colors.CheckBoxesShadow.CGColor
            button.setTitleColor(colors.CheckBoxesPressed, forState: UIControlState.Highlighted)
        case 3:
            button.backgroundColor   = colors.Offers
            button.layer.shadowColor = colors.OffersShadow.CGColor
            button.setTitleColor(colors.OffersPressed, forState: UIControlState.Highlighted)
        default:
            println("Class Button: Wrong type")
        }
        
        switch buttonSize {
        case 1:
            button.frame.size.width  = buttonsizes.width1
            button.frame.size.height = buttonsizes.height1
        case 2:
            button.frame.size.width  = buttonsizes.width2
            button.frame.size.height = buttonsizes.height1
        case 3:
            button.frame.size.width  = buttonsizes.width3
            button.frame.size.height = buttonsizes.height1
        default:
            println("Class Button: Wrong buttonSize")
        }
        button.frame.origin.x = 0.0
        button.frame.origin.y = 0.0
        frame.size.height = button.frame.size.height
        frame.size.width = button.frame.size.width
        
        addSubview(button)
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

struct Font {
    let Medium:String = "HelveticaNeue-Medium"
    let Normal:String = "HelveticaNeue-Normal"
    let Light:String  = "HelveticaNeue-Light"
    
}

struct FontSize {
    
    let size1: CGFloat = 13
    let size2: CGFloat = 14
    let size3: CGFloat = 15
    let size4: CGFloat = 16
    let size5: CGFloat = 17
    let size6: CGFloat = 18
    let size7: CGFloat = 28
    let size8: CGFloat = 22
    
}

struct ButtonSizes {
    let width1: CGFloat = 170
    let width2: CGFloat = 190
    let width3: CGFloat = 245
    
    let height1: CGFloat = 42
}



class Color {
    var MainText: UIColor!
    
    var Store: UIColor!
    var StorePressed: UIColor!
    var StoreShadow: UIColor!
    
    var CheckBoxes: UIColor!
    var CheckBoxesPressed: UIColor!
    var CheckBoxesShadow: UIColor!
    
    var Offers: UIColor!
    var OffersPressed: UIColor!
    var OffersShadow: UIColor!
    
    init(){
        
        MainText          = UIColorFromRGB(0x58595B)
        
        Store             = UIColorFromRGB(0xF6921E)
        StorePressed      = UIColorFromRGB(0xB76506)
        StoreShadow       = UIColorFromRGB(0xB76501)
        
        CheckBoxes        = UIColorFromRGB(0x2DBD9B)
        CheckBoxesPressed = UIColorFromRGB(0x097B61)
        CheckBoxesShadow  = UIColorFromRGB(0x097B61)
        
        Offers            = UIColorFromRGB(0xEB5638)
        OffersPressed     = UIColorFromRGB(0xBD391F)
        OffersShadow      = UIColorFromRGB(0xBD391F)
        
    }
    
    
    func UIColorFromRGB(rgbValue: Int) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
}




