//
//  SecondViewController.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FindFriends: UIViewController, CLLocationManagerDelegate {

    var personen = Personen.init().personen
    @IBOutlet weak var map: MKMapView!
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        //Zoom niveau
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.02,0.02)
        //Center of map
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        //The region on scree,n
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation,span)
        //Add region to the map
        map.setRegion(region, animated: true)
        
        self.map.showsUserLocation = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Bron : https://www.youtube.com/watch?v=UyiuX8jULF4
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
        for persoon in personen{
            //Annotation
            let anno1 = MKPointAnnotation()
            //info van de Annotation
            anno1.coordinate = persoon.coordinaten
            anno1.title = (persoon.vNaam) + " " + (persoon.naam)
            //anno1.subtitle = "theSubtitle"
            //Add anno on map
            map.addAnnotation(anno1)
        }
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

