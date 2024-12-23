//
//  FourthViewController.swift
//  CollectionView
//
//  Created by MacOS on 21/12/2024.
//

import UIKit

class FourthViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrPacage: [Pacage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        arrPacage.append(Pacage(object:[Obje(name: "apple", photo:UIImage(named: "apple")!),Obje(name: "pear", photo:UIImage(named: "pear")!),Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "bnana", photo:UIImage(named: "bnana")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "bnana", photo:UIImage(named: "bnana")!),Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "apple", photo:UIImage(named: "apple")!),Obje(name: "pear", photo:UIImage(named: "pear")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "pear", photo:UIImage(named: "pear")!),Obje(name: "apple", photo:UIImage(named: "apple")!),Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "bnana", photo:UIImage(named: "bnana")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "bnana", photo:UIImage(named: "bnana")!),Obje(name: "pear", photo:UIImage(named: "pear")!),Obje(name: "apple", photo:UIImage(named: "apple")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "apple", photo:UIImage(named: "apple")!),Obje(name: "pear", photo:UIImage(named: "pear")!),Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "bnana", photo:UIImage(named: "bnana")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "bnana", photo:UIImage(named: "bnana")!),Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "apple", photo:UIImage(named: "apple")!),Obje(name: "pear", photo:UIImage(named: "pear")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "pear", photo:UIImage(named: "pear")!),Obje(name: "apple", photo:UIImage(named: "apple")!),Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "bnana", photo:UIImage(named: "bnana")!)]))
        arrPacage.append(Pacage(object:[Obje(name: "mango", photo:UIImage(named: "mango")!),Obje(name: "bnana", photo:UIImage(named: "bnana")!),Obje(name: "pear", photo:UIImage(named: "pear")!),Obje(name: "apple", photo:UIImage(named: "apple")!)]))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPacage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell",for: indexPath) as! FourthTableViewCell
        
        cell.data = arrPacage[indexPath.row].object
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    

}

struct Pacage {
    let object : [Obje]
    
}
struct Obje {
    let name: String
    let photo: UIImage
}

