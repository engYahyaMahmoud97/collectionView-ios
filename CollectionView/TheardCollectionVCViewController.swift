//
//  TheardCollectionVCViewController.swift
//  CollectionView
//
//  Created by MacOS on 19/12/2024.
//

import UIKit

class TheardCollectionVCViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    var photos : [PhotoObj] = []

    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photos.append(PhotoObj(image: [UIImage(named: "1")! , UIImage(named: "2")! , UIImage(named: "3")!], title: "First"))
        photos.append(PhotoObj(image: [UIImage(named: "4")! , UIImage(named: "5")!], title: "Second"))
        photos.append(PhotoObj(image: [UIImage(named: "1")! , UIImage(named: "2")! , UIImage(named: "3")!], title: "Theard"))
        photos.append(PhotoObj(image: [UIImage(named: "4")! , UIImage(named: "5")!], title: "Fourth"))
        photos.append(PhotoObj(image: [UIImage(named: "1")! , UIImage(named: "2")! , UIImage(named: "3")!], title: "Fifth"))
        photos.append(PhotoObj(image: [UIImage(named: "4")! , UIImage(named: "5")!], title: "seventh"))
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos[section].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! TheardCollectionViewCell
        cell.imageCell.image = photos[indexPath.section].image[indexPath.row]
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.33333333, height: collectionView.frame.width * 0.333333333)
    }
    

    // header and foter
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader
        {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "hederSection", for: indexPath) as! TheardHederCollectionReusableView
            header.headerLabel.text = photos[indexPath.section].title
            return header
        }else{
            let photer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photerSection", for: indexPath)
            photer.backgroundColor = UIColor.red
            
            return photer
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

struct PhotoObj{
    var image : [UIImage]
    var title : String
}
