//
//  IngredientDetailViewController.swift
//  MyJuice_HS
//
//  Created by HannahPark on 2017-04-12.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class IngredientDetailViewController: UIViewController {
    
    @IBOutlet var Ingredient1: UIImageView!
    @IBOutlet var Ingredient2: UIImageView!
    @IBOutlet var Ingredient3: UIImageView!
    var ingredient: UIImage?
    
    @IBOutlet var IngredientPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Ingredient1.image = UIImage()
    }
    
    
    
}