//
//  PersoonViewController.swift
//  Mike_Dhoore_S2IT_werkstuk1
//
//  Created by student on 12/04/18.
//  Copyright © 2018 Mike Dhoore. All rights reserved.
//

import UIKit

class PersoonViewController: UIViewController {

    var persoon:Persoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = (persoon?.vNaam)! + " " + (persoon?.naam)!
        // Do any additional setup after loading the view.
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
