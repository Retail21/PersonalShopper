//
//  UserAvatarView.swift
//  PersonalShopper
//
//  Created by Joao Pedro Brandao on 4/29/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class UserAvatarView: UIImageView
{
    var direction:CGVector
    
    override init(frame:CGRect)
    {
        self.direction = CGVector(dx: 0, dy: 1)
        
        super.init(frame: frame)
        self.image = UIImage(named: "arrow.png")
    }

    required init(coder aDecoder: NSCoder)
    {
        self.direction = CGVector()
        super.init(coder: aDecoder)
    }
    
    func moveTo( point:CGPoint )
    {
        
    }
    
    func orientTo( vector:CGVector )
    {
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
