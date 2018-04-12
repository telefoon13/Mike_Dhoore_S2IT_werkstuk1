//
//  Persoon.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import Foundation
import MapKit

class Adres:NSObject{
    var straat:String
    var hnr:String
    var postcode:String
    var gemeente:String
    
    init(straat:String,hnr:String,postcode:String,gemeente:String) {
        self.straat = straat
        self.hnr = hnr
        self.postcode = postcode
        self.gemeente = gemeente
    }
}

class Persoon: NSObject {
    
    var naam:String
    var vNaam:String
    var foto:String
    var adres:Adres
    var coordinaten:CLLocationCoordinate2D
    var telefoon:String
    
    init(naam:String,vNaam:String,foto:String,adres:Adres,coordinaten:CLLocationCoordinate2D,telefoon:String) {
        self.naam = naam
        self.vNaam = vNaam
        self.foto = foto
        self.adres = adres
        self.coordinaten = coordinaten
        self.telefoon = telefoon
    }
}
