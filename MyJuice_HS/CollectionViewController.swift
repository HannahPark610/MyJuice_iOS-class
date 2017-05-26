//
//  ViewController_bottles.swift
//  MyJuice_HS
//
//  Created by HyunYoung Park on 2017-05-13.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

let reuseIdentifier = "CollectionViewCell"

class ColletionViewController: UICollectionViewController {
    
//    var bottleImages = [UIImage]()
    
    @IBOutlet var ColletionViewController: UICollectionView!
    
    var bottleImages = [#imageLiteral(resourceName: "bottle1"),#imageLiteral(resourceName: "bottle2"),#imageLiteral(resourceName: "bottle3"),#imageLiteral(resourceName: "bottle4"),#imageLiteral(resourceName: "bottle6"),#imageLiteral(resourceName: "bottle7"),#imageLiteral(resourceName: "bottle8")]
    
    var selectedbottle = [Int]()
    
    var image: String?
    
    var bottleImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.CollectionViewCell.image = self.images[selectedbottle[0]]

      self.collectionView!.register(UICollectionViewCell.self , forCellWithReuseIdentifier: reuseIdentifier)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


//   override func collectionView(_ collectionView:UICollectionView, numberOfItemsInSection section: Int) {
        
//    return bottleImages.count
    }

//    override func collectionView(_ collectionView:UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! UICollectionViewCell
        
//        var myImageView = cell.viewWithTag(1) as! UIImageView
//        myImageView.image = bottleImages[indexPath.row]
        
//        return cell
//   }




//   func collectionView(_ collectionView:UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
//    return bottleImages.count
    
//}

//   func collectionView(_ collectionView:UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
//    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
    
//    var myImageView = cell.viewWithTag(1) as! UIImageView
//    cell.myImageView.image = UIImage(named: bottleImages[indexPath.row])
    
//    return cell
//}
