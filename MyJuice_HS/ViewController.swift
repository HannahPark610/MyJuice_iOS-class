//
//  ViewController.swift
//  MyJuice_HS
//
//  Created by student on 2017-04-07.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

var myIndex = 0

var selectedImage: UIImage!


struct cellData {
    
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}

class TableViewController: UITableViewController{
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell: 1, text: "Apple", image: #imageLiteral(resourceName: "AppleImage")),
                           cellData(cell: 1, text: "Banana", image: #imageLiteral(resourceName: "banana")),
                           cellData(cell: 1, text: "Pineapple", image: #imageLiteral(resourceName: "Pineapple")),
                           cellData(cell: 1, text: "Watermelon", image: #imageLiteral(resourceName: "watermelon")),
                           cellData(cell: 1, text: "Orange", image: #imageLiteral(resourceName: "orange")),
                           cellData(cell: 1, text: "Strawberry", image: #imageLiteral(resourceName: "strawberry")),
                           cellData(cell: 1, text: "Celery", image: #imageLiteral(resourceName: "celery")),
                           cellData(cell: 1, text: "Tomato", image: #imageLiteral(resourceName: "tomato")),
                           cellData(cell: 1, text: "Grapes", image: #imageLiteral(resourceName: "grapes")),
                           cellData(cell: 1, text: "Avocado", image: #imageLiteral(resourceName: "avocado")),
                           cellData(cell: 1, text: "Carrot", image: #imageLiteral(resourceName: "carrot"))]
    
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
        
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1{
            
            let cell = Bundle.main.loadNibNamed("TableViewCell_Ingredient1", owner: self, options: nil)?.first as! TableViewCell_Ingredient1
            cell.Ingredient1.image = arrayOfCellData[indexPath.row].image
            cell.Ingredient_label1.text = arrayOfCellData[indexPath.row].text
            
            return cell
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            let cell = Bundle.main.loadNibNamed("TableViewCell_Ingredient1", owner: self, options: nil)?.first as! TableViewCell_Ingredient1
            cell.Ingredient1.image = arrayOfCellData[indexPath.row].image
            cell.Ingredient_label1.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
    
        }
        else{
            
            let cell = Bundle.main.loadNibNamed("TableViewCell_Ingredient1", owner: self, options: nil)?.first as! TableViewCell_Ingredient1
            cell.Ingredient1.image = arrayOfCellData[indexPath.row].image
            cell.Ingredient_label1.text = arrayOfCellData[indexPath.row].text
            
            return cell
    }
    
}
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1{
            return 60
           
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            return 60
            
        }
        else{
            return 60
            
        
    }
  }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "showIngredientSegue", sender: self)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row)selected")
        selectedImage = arrayOfCellData[indexPath.row].image
        performSegue(withIdentifier: "IngredientDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "IngredientDetail") {
            _ = segue.destination as! IngredientDetailViewController
        }
    }

}
