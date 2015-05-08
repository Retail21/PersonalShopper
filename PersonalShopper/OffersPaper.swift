//
//  OffersPaper.swift
//  PersonalShopper
//
//  Created by Bruno Baring on 5/2/15.
//  Copyright (c) 2015 Retail21. All rights reserved.
//

import UIKit

class OffersPaper: UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var Collection: UICollectionView!
    var qtdCells: Int = 9

    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 0)
        layout.itemSize = CGSize(width: 173+30, height: 192)
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        
        Collection = UICollectionView(frame: CGRectMake(0, 0, self.frame.width, 192+30+30+30), collectionViewLayout: layout)
        Collection.dataSource = self
        Collection.scrollEnabled = true
        Collection.delegate = self
        Collection.registerClass(OffersPaperCell.self, forCellWithReuseIdentifier: "OffersPaperCell")
        Collection.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        self.addSubview(Collection!)
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return qtdCells
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = Collection.dequeueReusableCellWithReuseIdentifier("OffersPaperCell", forIndexPath: indexPath) as! OffersPaperCell
        cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        cell.imageView.image = UIImage(named: "Product_e\(indexPath.row)")
        return cell
    }
    
}
