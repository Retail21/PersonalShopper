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
        self.backgroundColor = UIColor.greenColor()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 90)
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        
        Collection = UICollectionView(frame: CGRectMake(0, 0, 500, 300), collectionViewLayout: layout)
        Collection.backgroundColor = UIColor.greenColor()
        Collection.dataSource = self
        Collection.scrollEnabled = true
        Collection.delegate = self
        Collection.registerClass(OffersShownCell.self, forCellWithReuseIdentifier: "OffersShownCell")
        Collection.backgroundColor = UIColor.redColor()
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
        cell.backgroundColor = UIColor.blackColor()
        cell.textLabel.text = "\(indexPath.section):\(indexPath.row)"
        cell.imageView.image = UIImage(named: "circle")
        return cell
    }
    
}