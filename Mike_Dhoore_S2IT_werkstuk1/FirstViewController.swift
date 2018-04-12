//
//  FirstViewController.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    var books = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        books = ["Book1":"auteur1",
                 "the love":"Mike",
                 "Book3":"Piemel",
                 "Book30":"auteur3",
                 "Book2":"auteur4",
                 "Book14":"auteur41",
                 "Book5":"auteur14",
                 "Book6":"auteur15",
                 "Book17":"auteur71",
                 "Book8":"auteur12",
                 "Book9":"auteur13",
                 "Book10":"auteur14",
                 "Book11":"auteur15",
                 "Book12":"auteur12",
                 "Book13":"auteur17",
                 "Book4":"auteur91",
                 "Book7":"auteur110",
                 "Book15":"auteur14",
                 "Book16":"auteur11",
                 "Book18":"auteur12",
                 "Book19":"auteur13",
                 "Book20":"auteur14",
                 "Hallo":"Auteur4"];
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        var auteurs = Array(books.keys)
        cell.textLabel?.text = auteurs[indexPath.row]
        cell.detailTextLabel?.text = books[auteurs[indexPath.row]]
        // Configure the cell...
        
        return cell
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? PersoonViewController{
            let indexPath = tableView.indexPathForSelectedRow!
            var auteurs = Array(books.keys)
            nextVC.boek = auteurs[indexPath.row]
        }
    }*/
 
 
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
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */


}

