//
//  ViewController_bottles.swift
//  MyJuice_HS
//
//  Created by HyunYoung Park on 2017-05-13.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class ColletionViewController: UICollectionViewController {
    
    var imageViewArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    imageViewArray = [#imageLiteral(resourceName: "bottle1"),#imageLiteral(resourceName: "bottle2"),#imageLiteral(resourceName: "bottle3"),#imageLiteral(resourceName: "bottle4"),#imageLiteral(resourceName: "bottle6"),#imageLiteral(resourceName: "bottle7"),#imageLiteral(resourceName: "bottle8")]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    
//    override func collectionView(_ collectionView:UICollectionView, numberOfItemsInSection section: Int) ->Int {
//        return imageViewArray.count
//        
//    }
//    
//    override func collectionView(_ collectionView:UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! UICollectionViewCell
//        
//        var imageView = cell.viewWithTag(1) as! UIImageView
//        imageView.image = imageViewArray[indexPath.row]
//        
//        return cell
//   }
}
