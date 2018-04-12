//
//  PersoonViewController.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import UIKit
import MapKit

class PersoonViewController: UIViewController, MKMapViewDelegate {

    var persoon:Persoon?
    
    @IBOutlet weak var fotoIV: UIImageView!
    @IBOutlet weak var naamLbl: UILabel!
    @IBOutlet weak var nummerLbl: UILabel!
    @IBOutlet weak var straatLbl: UILabel!
    @IBOutlet weak var gemeenteLbl: UILabel!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var navItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Titel pagina invullen
        navItem.title = (persoon?.vNaam)! + " " + (persoon?.naam)!
        
        //Foto + labels invullen
        fotoIV.image = UIImage(named: (persoon?.foto)!)
        naamLbl.text = (persoon?.vNaam)! + " " + (persoon?.naam)!
        nummerLbl.text = (persoon?.telefoon)!
        straatLbl.text = (persoon?.adres.straat)! + " " + (persoon?.adres.hnr)!
        gemeenteLbl.text = (persoon?.adres.postcode)! + " " + (persoon?.adres.gemeente)!
        
        //BRON : https://www.youtube.com/channel/UC-d1NWv5IWtIkfH47ux4dWA
        //Zoom niveau
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01,0.01)
        //Center of map & pin locatie
        let myLocation = persoon?.coordinaten
        //The region on the screen
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation!,span)
        //Add region to the map
        map.setRegion(region, animated: true)
        //Annotation
        let anno1 = MKPointAnnotation()
        //info van de Annotation
        anno1.coordinate = myLocation!
        anno1.title = (persoon?.vNaam)! + " " + (persoon?.naam)!
        //anno1.subtitle = "theSubtitle"
        //Add anno on map 
        map.addAnnotation(anno1)       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? FotoGrootViewController{
            nextVC.persoon = persoon
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
