//
//  OfferShown.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 5/2/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class OffersShown: UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var Collection: UICollectionView!

    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: 173+30, height: 192)
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        
        Collection = UICollectionView(frame: CGRectMake(0, 0, self.frame.width, 300), collectionViewLayout: layout)
        Collection.dataSource = self
        Collection.scrollEnabled = true
        Collection.delegate = self
        Collection.registerClass(OffersShownCell.self, forCellWithReuseIdentifier: "OffersShownCell")
        Collection.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        self.addSubview(Collection!)

    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = Collection.dequeueReusableCellWithReuseIdentifier("OffersShownCell", forIndexPath: indexPath) as! OffersShownCell
        cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        cell.textLabel.text = "\(indexPath.section):\(indexPath.row)"
        cell.imageView.image = UIImage(named: "Product_1")
        return cell
    }
    
}