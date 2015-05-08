//
//  Offer.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 4/25/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import Foundation
import UIKit


class Offers: UIViewController, UICollectionViewDelegate {


    var shown: OffersShown!
    var paper: OffersPaper!
    var shownLabel: UILabel!
    var paperLabel: UILabel!
    var colors: Color!
    var fonts: Font!
    var fontsizes: FontSize!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        shown = OffersShown(frame: CGRectMake(24, self.navigationController!.navigationBar.frame.size.height + 100, self.view.frame.width-24, 300))
        self.view.addSubview(shown)
        
        paper = OffersPaper(frame: CGRectMake(24, self.navigationController!.navigationBar.frame.size.height + 400, self.view.frame.width-48, 300))
        self.view.addSubview(paper)
        
        colors = Color()
        fonts = Font()
        fontsizes = FontSize()
        
        shownLabel = UILabel()
        shownLabel.frame = CGRectMake(24, self.navigationController!.navigationBar.frame.size.height, self.view.frame.width, 150)
        shownLabel.text = "Ofertas Encontradas"
        shownLabel.textColor = colors.StoreShadow
        shownLabel.font = UIFont(name: fonts.Medium, size: fontsizes.size8)
        self.view.addSubview(shownLabel)
        
        paperLabel = UILabel()
        paperLabel.frame = CGRectMake(24, self.navigationController!.navigationBar.frame.size.height + 300, self.view.frame.width, 150)
        paperLabel.text = "Ofertas Encontradas"
        paperLabel.textColor = colors.StoreShadow
        paperLabel.font = UIFont(name: fonts.Medium, size: fontsizes.size8)
        self.view.addSubview(paperLabel)
        

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}