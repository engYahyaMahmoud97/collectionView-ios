//
//  TwoCollectionViewController.swift
//  CollectionView
//     يوجد عدة ملاحظات مهمة
//1- in the main storyboard you shold be do theis changes to CollectionView
//    - in attributes inspector of collection view you should set the secrol direction to horizontal and in the scroll view turn off the show horizontal indicator and turn on the paging enabled
//    - in size inspector of collection view you should set the estimates size to none

//
//  Created by MacOS on 18/12/2024.
//

import UIKit

class TwoCollectionViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    var images = [UIImage(named: "apple")!,UIImage(named: "mango")!,UIImage(named: "bnana")!,UIImage(named: "grapes")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        pageControl.currentPage = 0
        pageControl.numberOfPages = images.count
        
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! TwoCollectionViewCell
        //pageControl.currentPage = indexPath.row
        cell.imageView.image = images[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / scrollView.frame.width)
                pageControl.currentPage = Int(pageIndex)
        
    }
    
    
}
