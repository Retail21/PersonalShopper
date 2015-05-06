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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shown = OffersShown(frame: CGRectMake(0, 0, 500, 300))
        self.view.addSubview(shown)
        paper = OffersPaper(frame: CGRectMake(0, 350, 500, 300))
        self.view.addSubview(paper)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}