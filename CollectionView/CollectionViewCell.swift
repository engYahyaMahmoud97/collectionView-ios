//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by MacOS on 17/12/2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    func setupConfig(price: Double, photo: UIImage) {
        self.price.text = "\(price) $"
        self.photo.image = photo
    }
}
