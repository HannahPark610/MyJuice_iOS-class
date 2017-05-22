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

class TableViewController: UITableViewController {

//UICollectionViewDelegate, UICollectionViewDataSource 
    
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
    
    /* collection View Cell _ Bottles */
    
    var imageName_bottles = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8")]
    var nameArray = ["name 1","name 2","name 3","name 4","name 5","name 6","name 7","name 8"]
    
    
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        
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
            print("Up to 3 Items!")
        
            if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
            {
                self.unselectCell(indexPath: indexPath)
            }
            else
            {
                if (selectedItems.count < 3) {
                        self.selectCell(indexPath: indexPath)
                }
                else
                {
                    let alert = UIAlertController(title: "You can only select up to 3 items", message: "", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                        alert.dismiss(animated: true, completion: nil)
                    }))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            }
        if selectedItems.count == 3
        {
            createAlert(titleText: "3 Items Selected", messageText: "")
        }
    }

    func selectCell(indexPath:IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        selectedItems.append(indexPath.row)
    }
    
    func unselectCell(indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        selectedItems.remove(at: selectedItems.index(of: indexPath.row)!)
    }
    
    func createAlert(titleText: String, messageText: String ){
        
        let alert = UIAlertController(title: titleText, message: messageText, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
    }))
        
        alert.addAction(UIAlertAction(title: "Next", style: .default, handler: { (action) in
//            self.nextView(sender: self)
            self.performSegue(withIdentifier: "testSegue", sender: self)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
  }
    
    @IBAction func nextView(sender: Any) {
        
        self.tableView.register(UINib(nibName:"TableCell_Ingredient", bundle: nil), forCellReuseIdentifier: "TableCell_Ingredient")

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let target = segue.destination as? IngredientDetailViewController
        
        target?.selectedItems = selectedItems
        
//        target?.ingredient1.image = self.arrayOfCellDatas[selectedItems[0]].image
//        target?.ingredient2.image = self.arrayOfCellDatas[selectedItems[1]].image
//        target?.ingredient3.image = self.arrayOfCellDatas[selectedItems[2]].image
        
        print("prepare done")
    }

    
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return nameArray.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath:IndexPath) -> UICollectionViewCell
//    {
//    
//    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_Bottles", for: indexPath) as! CollectionViewCell_Bottles
//   
//    
//    }
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

