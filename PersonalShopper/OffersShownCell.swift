//
//  ShownOffersCell.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/30/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class OffersShownCell: UICollectionViewCell {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var textLabel: UILabel = UILabel()
    var imageView: UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 173, height: 192))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        imageView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        contentView.addSubview(imageView)
        
        let textFrame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/3)
        textLabel = UILabel(frame: textFrame)
        textLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
    }
}
