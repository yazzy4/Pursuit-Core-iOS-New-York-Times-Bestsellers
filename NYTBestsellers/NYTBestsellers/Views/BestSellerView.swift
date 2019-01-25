//
//  BestSellerView.swift
//  NYTBestsellers
//
//  Created by Yaz Burrell on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellerView: UIView {
    
    public lazy var bestSellerCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 100, height: 100)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)

    let cv = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: layout)
        cv.register(BestSellerCollectionViewCell.self, forCellWithReuseIdentifier: "BestSeller")
        cv.backgroundColor = .white
        return cv
        
    }()
    
    override init(frame: CGRect){
        super.init(frame: UIScreen.main.bounds)
        self.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        commonInit()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        setupCollectionView()
    }
    
    private func setupCollectionView () {
        addSubview(bestSellerCollection)
        
        bestSellerCollection.translatesAutoresizingMaskIntoConstraints = false
        
        bestSellerCollection.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        
        bestSellerCollection.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        bestSellerCollection.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    bestSellerCollection.heightAnchor.constraint(equalTo:safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
            
        }
    
    

}




