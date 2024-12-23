//
//  FourthTableViewCell.swift
//  CollectionView
//
//  Created by MacOS on 21/12/2024.
//

import UIKit

class FourthTableViewCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource{
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    var data = [Obje]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCellCollection", for: indexPath) as! FourthCollectionViewCell
        cell.labelName.text = data[indexPath.row].name
        cell.imageView.image = data[indexPath.row].photo
        return cell
    }

}
