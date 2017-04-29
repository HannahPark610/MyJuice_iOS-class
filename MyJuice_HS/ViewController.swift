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

var selectedItems = [Int]()

struct cellData {
    
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}

class TableViewController: UITableViewController{
    
    var arrayOfCellDatas = [cellData]()
    
    override func viewDidLoad() {
        
    self.arrayOfCellDatas = [cellData(cell: 1, text: "Apple", image: #imageLiteral(resourceName: "AppleImage")),
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
    
    
    /* CELL FOR ROW */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellDatas[indexPath.row].cell == 1{
            
            let cell = Bundle.main.loadNibNamed("TableViewCell_Ingredient1", owner: self, options: nil)?.first as! TableViewCell_Ingredient1
            cell.Ingredient1.image = arrayOfCellDatas[indexPath.row].image
            cell.Ingredient_label1.text = arrayOfCellDatas[indexPath.row].text
            
            return cell
        }
        else{
            
            let cell = Bundle.main.loadNibNamed("TableViewCell_Ingredient1", owner: self, options: nil)?.first as! TableViewCell_Ingredient1
            cell.Ingredient1.image = arrayOfCellDatas[indexPath.row].image
            cell.Ingredient_label1.text = arrayOfCellDatas[indexPath.row].text
            
            return cell
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellDatas.count
        
    }
    
    
    /* HEIGHT */
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellDatas[indexPath.row].cell == 1{
            return 60
            
        }
        else if arrayOfCellDatas[indexPath.row].cell == 2{
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
    //        selectedImage = arrayOfCellDatas[indexPath.row].image
    //        performSegue(withIdentifier: "IngredientDetail", sender: self)
    //    }
    //
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if(segue.identifier == "IngredientDetail") {
    //            _ = segue.destination as! IngredientDetailViewController
    //        }
    //    }
    //
    
    
    /* Will Select Row */
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        
        if let sr = tableView.indexPathsForSelectedRows {
            if sr.count <= 3 {
                let alertController = UIAlertController(title: "Oops", message:
                    "You are limited to \(3) selections", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                }))
                self.present(alertController, animated: true, completion: nil)
                
                return nil
            }
        }
        
        return indexPath
    }
    
    /* SELECTED ROW */
    override func tableView(_ UItableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//            if let cell = tableView.cellForRow(at: indexPath) {
//                cell.accessoryType = .checkmark
//            }
//            if let cell = tableView.cellForRow(at: indexPath) {
//                cell.accessoryType = .none
//            }
//        else {
//            if let cell = tableView.cellForRow(at: indexPath) {
//                cell.accessoryType = .checkmark
//            }
//        }
//    }
        print(selectedItems.count)
        if selectedItems.count <= 2
        {
            print("Up to 3 Items!")
    if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
       {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }
        else
        {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
            selectedItems.append(indexPath.row)
        }
            
      }
    }

    
//    func tableView(_ UItableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        if indexPath.row == 3 {
//        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.none
//        {
//            return
//            }
//    }

    
    
    /* Deselect Row */
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        print("deselected  \(arrayOfCellDatas[indexPath.row])")
//        
//        if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
//            cell.accessoryType = .none
//        }
//        
//        if let sr = tableView.indexPathsForSelectedRows {
//            print("didDeselectRowAtIndexPath selected rows:\(sr)")
//        }
//    }
    
//        if arrayOfCellDatas.count <= 3 {
//            tableView.deselectRow(at: indexPath as IndexPath, animated: true)
//      if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
//          cell.accessoryType = .none
//            }
//        
//    }

        
    
        /* set next page! */
//         let navi = UINavigationController(rootViewController: IngredientDetailViewController)
//         //setting animation
//         navi.modalTransitionStyle = .crossDissolve
//         present(navi, animated: true, completion: nil)
//        

    
//        override func setSelected(_ selected: Bool, animated: Bool) {
//            super.setSelected(selected, animated: animated)
//            if selected{
//                check.image = UIImage(named:"AppleImage")
//            }else{
//                check.image = UIImage(named:"banana")
//    
//            }

}
