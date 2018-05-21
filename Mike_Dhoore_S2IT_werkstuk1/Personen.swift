//
//  personen.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import Foundation
import MapKit

class Personen:NSObject {
    
    var personen:[Persoon] = []
    
    override init(){
        
        var personenA = [Persoon]()
        
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
        let coordinaten10 = CLLocationCoordinate2D(latitude: 51.058167, longitude: 3.730180)
        let coordinaten11 = CLLocationCoordinate2D(latitude: 51.050235, longitude: 3.724730)
        let coordinaten12 = CLLocationCoordinate2D(latitude: 51.047128,  longitude: 3.731167)
        let coordinaten13 = CLLocationCoordinate2D(latitude: 51.059918, longitude: 3.729236)
        let coordinaten14 = CLLocationCoordinate2D(latitude: 51.052499, longitude: 3.729579)
        
        let persoon0 = Persoon(naam: "D'hoore", vNaam: "Mike", foto: "man-tech", adres: adres0, coordinaten: coordinaten0, telefoon: "0404/04.04.00")
        let persoon1 = Persoon(naam: "Appel", vNaam: "Jan", foto: "man", adres: adres1, coordinaten: coordinaten1, telefoon: "0405/04.04.11")
        let persoon2 = Persoon(naam: "Bel", vNaam: "Tom", foto: "man-bouw", adres: adres2, coordinaten: coordinaten2, telefoon: "0406/04.04.22")
        let persoon3 = Persoon(naam: "D'hoore", vNaam: "Julie", foto: "vrouw-student", adres: adres3, coordinaten: coordinaten3, telefoon: "0407/04.04.33")
        let persoon4 = Persoon(naam: "Vdv", vNaam: "Jessica", foto: "vrouw-tech", adres: adres4, coordinaten: coordinaten4, telefoon: "0408/04.04.44")
        let persoon5 = Persoon(naam: "De trem", vNaam: "Marleen", foto: "vrouw-politie", adres: adres4, coordinaten: coordinaten5, telefoon: "0409/04.12.55")
        let persoon6 = Persoon(naam: "Van ho", vNaam: "Bjorn", foto: "prins", adres: adres3, coordinaten: coordinaten6, telefoon: "0400/14.04.66")
        let persoon7 = Persoon(naam: "Banaan", vNaam: "Wout", foto: "man-student", adres: adres2, coordinaten: coordinaten7, telefoon: "0401/04.04.77")
        let persoon8 = Persoon(naam: "Vdv", vNaam: "Bianca", foto: "vrouw-bouw", adres: adres1, coordinaten: coordinaten8, telefoon: "0402/04.04.88")
        let persoon9 = Persoon(naam: "Maes", vNaam: "Kenny", foto: "man-politie", adres: adres0, coordinaten: coordinaten9, telefoon: "0403/04.04.99")
        let persoon10 = Persoon(naam: "Van Borre", vNaam: "Negenduust", foto: "man", adres: adres1, coordinaten: coordinaten10, telefoon: "0405/04.04.99")
        let persoon11 = Persoon(naam: "Vijver", vNaam: "Pakahandtas", foto: "prinses", adres: adres2, coordinaten: coordinaten11, telefoon: "0411/04.04.99")
        let persoon12 = Persoon(naam: "Laka", vNaam: "Beest", foto: "man-tech", adres: adres3, coordinaten: coordinaten12, telefoon: "0403/12.04.99")
        let persoon13 = Persoon(naam: "Tjaka", vNaam: "Belle", foto: "vrouw", adres: adres0, coordinaten: coordinaten13, telefoon: "0403/13.04.99")
        let persoon14 = Persoon(naam: "Naam", vNaam: "voornaam", foto: "vrouw-bouw", adres: adres4, coordinaten: coordinaten14, telefoon: "0403/14.04.99")
        
        personenA.append(persoon0)
        personenA.append(persoon1)
        personenA.append(persoon2)
        personenA.append(persoon3)
        personenA.append(persoon4)
        personenA.append(persoon5)
        personenA.append(persoon6)
        personenA.append(persoon7)
        personenA.append(persoon8)
        personenA.append(persoon9)
        personenA.append(persoon10)
        personenA.append(persoon11)
        personenA.append(persoon12)
        personenA.append(persoon13)
        personenA.append(persoon14)
        
        self.personen = personenA
    }
    
    init(personen:[Persoon]) {
        self.personen = personen
    }
}
