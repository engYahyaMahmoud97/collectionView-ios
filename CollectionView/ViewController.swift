//
//  ViewController.swift
//  CollectionView
//
//  Created by MacOS on 17/12/2024.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrImages = [Gallary]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        

        arrImages.append(Gallary(image: UIImage(named: "apple")!, price: 2))
        arrImages.append(Gallary(image: UIImage(named: "bnana")!, price: 4))
        arrImages.append(Gallary(image: UIImage(named: "grapes")!, price: 5))
        arrImages.append(Gallary(image: UIImage(named: "mango")!, price: 7))
        arrImages.append(Gallary(image: UIImage(named: "apple")!, price: 2))
        arrImages.append(Gallary(image: UIImage(named: "bnana")!, price: 4))
        arrImages.append(Gallary(image: UIImage(named: "grapes")!, price: 5))
        arrImages.append(Gallary(image: UIImage(named: "mango")!, price: 7))
        arrImages.append(Gallary(image: UIImage(named: "apple")!, price: 2))
        arrImages.append(Gallary(image: UIImage(named: "bnana")!, price: 4))
        arrImages.append(Gallary(image: UIImage(named: "grapes")!, price: 5))
        arrImages.append(Gallary(image: UIImage(named: "mango")!, price: 7))
        arrImages.append(Gallary(image: UIImage(named: "apple")!, price: 2))
        arrImages.append(Gallary(image: UIImage(named: "bnana")!, price: 4))
        arrImages.append(Gallary(image: UIImage(named: "grapes")!, price: 5))
        arrImages.append(Gallary(image: UIImage(named: "mango")!, price: 7))
        arrImages.append(Gallary(image: UIImage(named: "apple")!, price: 2))
        arrImages.append(Gallary(image: UIImage(named: "bnana")!, price: 4))
        arrImages.append(Gallary(image: UIImage(named: "grapes")!, price: 5))
        arrImages.append(Gallary(image: UIImage(named: "mango")!, price: 7))
        arrImages.append(Gallary(image: UIImage(named: "apple")!, price: 2))
        arrImages.append(Gallary(image: UIImage(named: "bnana")!, price: 4))
        arrImages.append(Gallary(image: UIImage(named: "grapes")!, price: 5))
        arrImages.append(Gallary(image: UIImage(named: "mango")!, price: 7))
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        let imageAndPrice = arrImages[indexPath.row]
        cell.setupConfig(price: imageAndPrice.price, photo: imageAndPrice.image)
        
        return cell
    }

    //to resize cell of collection
    // ملاحظة مهمة to resize of cell firstlly go to size inspector of collection view and change estimate size to None
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.31, height: self.view.frame.width * 0.31)
    }

    
    
    //size speas from row to row
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0.1
        
    }
    
    
    
    //size speas from culom to culom
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    
    
}



struct Gallary{
    var image : UIImage
    var price : Double
}
