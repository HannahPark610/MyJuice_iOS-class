//
//  ViewController.swift
//  MyJuice_HS
//
//  Created by student on 2017-04-07.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

var myIndex = 0

var c: UIImage!

struct cellData {
    
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}

class TableViewController: UITableViewController{
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell: 1, text: "Apple", image: #imageLiteral(resourceName: "AppleImage")),
                           cellData(cell: 2, text: "Banana", image: #imageLiteral(resourceName: "banana")),
                           cellData(cell: 3, text: "Pineapple", image: #imageLiteral(resourceName: "Pineapple")),
                           cellData(cell: 4, text: "Watermelon", image: #imageLiteral(resourceName: "watermelon")),
                           cellData(cell: 5, text: "Orange", image: #imageLiteral(resourceName: "orange")),
                           cellData(cell: 6, text: "Strawberry", image: #imageLiteral(resourceName: "strawberry")),
                           cellData(cell: 7, text: "Celery", image: #imageLiteral(resourceName: "celery")),
                           cellData(cell: 8, text: "Tomato", image: #imageLiteral(resourceName: "tomato")),
                           cellData(cell: 9, text: "Grapes", image: #imageLiteral(resourceName: "grapes")),
                           cellData(cell: 10, text: "Avocado", image: #imageLiteral(resourceName: "avocado")),
                           cellData(cell: 11, text: "Carrot", image: #imageLiteral(resourceName: "carrot"))]
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        _ = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if arrayOfCellData[indexPath.row].cell == 1{
            
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
    
    //    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    //    {
    //        myIndex = indexPath.row
    //        performSegue(withIdentifier: "showIngredientSegue", sender: self)
    //    }
    //
    //    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //        print("Row \(indexPath.row)selected")
    //        selectedImage = arrayOfCellData[indexPath.row].image
    //        performSegue(withIdentifier: "IngredientDetail", sender: self)
    //    }
    //
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if(segue.identifier == "IngredientDetail") {
    //            _ = segue.destination as! IngredientDetailViewController
    //        }
    //    }
    //
    override func tableView(_ UItableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print((marker.userData as AnyObject)["placeID"])
        
        let cell = tableView.cellForRow(at: [indexPath.row])
        _ = arrayOfCellData[indexPath.row]
        //        TableViewCell_Ingredient1.completed = !TableViewCell_Ingredient1.completed
        
        if (c != nil){
            cell?.accessoryType = UITableViewCellAccessoryType.checkmark
        }else{
            cell?.accessoryType = UITableViewCellAccessoryType.none
            
        }
        
        //        let IngredientDetailViewController: IngredientDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "IngredientDetail") as! IngredientDetailViewController
        //
        //        _ = tableView.cellForRow(at: indexPath) as! TableViewCell_Ingredient1
        
        //        IngredientDetailViewController.image = "AppleImage"
        //        if (c != nil){
        //            IngredientDetailViewController.image = "AppleImage"
        //        } else {
        //            IngredientDetailViewController.image = "banana"
        //        }
        
        
        //        return
        
        //        IngredientDetailViewController.image = "banana"
        //        IngredientDetailViewController.image = "Pineapple"
        //        IngredientDetailViewController.image = "watermelon"
        //        IngredientDetailViewController.image = "orange"
        //        IngredientDetailViewController.image = "strawberry"
        //        IngredientDetailViewController.image = "celery"
        //        IngredientDetailViewController.image = "tomato"
        //        IngredientDetailViewController.image = "grapes"
        //        IngredientDetailViewController.image = "avocado"
        //        IngredientDetailViewController.image = "carrot"
        
        
        //normal transit page
        //present(StoreDetailViewController, animated: true, completion: nil)
        
        
        // set next page!
        //        let navi = UINavigationController(rootViewController: IngredientDetailViewController)
        //        // setting animation
        //        navi.modalTransitionStyle = .crossDissolve
        //        present(navi, animated: true, completion: nil)
        
    }
    
    //    override func setSelected(_ selected: Bool, animated: Bool) {
    //        super.setSelected(selected, animated: animated)
    //        if selected{
    //            check.image = UIImage(named:"AppleImage")
    //        }else{
    //            check.image = UIImage(named:"banana")
    //
    //        }
    
}
