//
//  ProductsTableViewController.swift
//  BuyMeProduct
//
//  Created by Nikhil Dange on 28/02/19.
//  Copyright © 2019 learn. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    private var products: [Product]?
    private let cellIdentifier = "productCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products = [Product(name: "A", imageName: "A"),
                    Product(name: "B", imageName: "B"),
                    Product(name: "C", imageName: "C"),
                    Product(name: "D", imageName: "D"),
                    Product(name: "E", imageName: "E")]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    // MARK: - Navigation
     
    // In a storyboard-based application, little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct" {
            if let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell),
            let segueVC = segue.destination as? ProductViewController {
                segueVC.product = products?[indexPath.row]
            }
        }
    }
 
}

extension ProductsTableViewController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        guard let product = products else { return cell }
        cell.textLabel?.text = product[indexPath.row].name
        if let imageName = product[indexPath.row].imageName {
            cell.imageView?.image = UIImage(named: imageName)
        }
        return cell
     }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
}
