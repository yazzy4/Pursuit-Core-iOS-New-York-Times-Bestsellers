//
//  BestSellerCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Yaz Burrell on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellerCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.backgroundColor = .purple
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
