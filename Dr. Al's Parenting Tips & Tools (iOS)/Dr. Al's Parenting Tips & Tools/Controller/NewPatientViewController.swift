//
//  NewPatientViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 9/26/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//

import UIKit

class NewPatientViewController: UIViewController {

    //TODO: Get URL's to the desired websites. Create buttons from the website names that will exit the app and open said websites in safari
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Back Button
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
