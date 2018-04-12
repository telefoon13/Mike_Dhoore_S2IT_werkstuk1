//
//  FirstViewController.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UITableViewController {

    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let adres0 = Adres(straat: "Straat A", hnr: "15A", postcode: "9000", gemeente: "Gent")
        let adres1 = Adres(straat: "Straat B", hnr: "11", postcode: "9000", gemeente: "Gent")
        let adres2 = Adres(straat: "Straat C", hnr: "7", postcode: "9000", gemeente: "Gent")
        let adres3 = Adres(straat: "Straat D", hnr: "3", postcode: "9000", gemeente: "Gent")
        let adres4 = Adres(straat: "Straat E", hnr: "110", postcode: "9000", gemeente: "Gent")
        
        let coordinaten0 = CLLocationCoordinate2D(latitude: 51.054893, longitude: 3.721990)
        let coordinaten1 = CLLocationCoordinate2D(latitude: 51.054380, longitude: 3.724694)
        let coordinaten2 = CLLocationCoordinate2D(latitude: 51.053246, longitude: 3.727097)
        let coordinaten3 = CLLocationCoordinate2D(latitude: 51.056968, longitude: 3.727183)
        let coordinaten4 = CLLocationCoordinate2D(latitude: 51.058046, longitude: 3.720617)
        let coordinaten5 = CLLocationCoordinate2D(latitude: 51.057155, longitude: 3.721304)
        let coordinaten6 = CLLocationCoordinate2D(latitude: 51.048387, longitude: 3.727355)
        let coordinaten7 = CLLocationCoordinate2D(latitude: 51.056253, longitude: 3.728501)
        let coordinaten8 = CLLocationCoordinate2D(latitude: 51.055901, longitude: 3.740517)
        let coordinaten9 = CLLocationCoordinate2D(latitude: 51.049231, longitude: 3.732173)
        
        let persoon0 = Persoon(naam: "D'hoore", vNaam: "Mike", foto: "man", adres: adres0, coordinaten: coordinaten0, telefoon: "0404/04.04.00")
        let persoon1 = Persoon(naam: "Appel", vNaam: "Jan", foto: "man", adres: adres1, coordinaten: coordinaten1, telefoon: "0405/04.04.11")
        let persoon2 = Persoon(naam: "Bel", vNaam: "Tom", foto: "man", adres: adres2, coordinaten: coordinaten2, telefoon: "0406/04.04.22")
        let persoon3 = Persoon(naam: "D'hoore", vNaam: "Julie", foto: "vrouw", adres: adres3, coordinaten: coordinaten3, telefoon: "0407/04.04.33")
        let persoon4 = Persoon(naam: "Vdv", vNaam: "Jessica", foto: "vrouw", adres: adres4, coordinaten: coordinaten4, telefoon: "0408/04.04.44")
        let persoon5 = Persoon(naam: "De trem", vNaam: "Marleen", foto: "vrouw", adres: adres4, coordinaten: coordinaten5, telefoon: "0409/04.12.55")
        let persoon6 = Persoon(naam: "Van ho", vNaam: "Bjorn", foto: "man", adres: adres3, coordinaten: coordinaten6, telefoon: "0400/14.04.66")
        let persoon7 = Persoon(naam: "Banaan", vNaam: "Wout", foto: "man", adres: adres2, coordinaten: coordinaten7, telefoon: "0401/04.04.77")
        let persoon8 = Persoon(naam: "Vdv", vNaam: "Bianca", foto: "vrouw", adres: adres1, coordinaten: coordinaten8, telefoon: "0402/04.04.88")
        let persoon9 = Persoon(naam: "Maes", vNaam: "Kenny", foto: "man", adres: adres0, coordinaten: coordinaten9, telefoon: "0403/04.04.99")
        
        personen.append(persoon0)
        personen.append(persoon1)
        personen.append(persoon2)
        personen.append(persoon3)
        personen.append(persoon4)
        personen.append(persoon5)
        personen.append(persoon6)
        personen.append(persoon7)
        personen.append(persoon8)
        personen.append(persoon9)
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
        return personen.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = personen[indexPath.row].vNaam + " " + personen[indexPath.row].naam
        
        // Configure the cell...
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? PersoonViewController{
            let indexPath = tableView.indexPathForSelectedRow!
            nextVC.persoon = personen[indexPath.row]
        }
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
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */


}

