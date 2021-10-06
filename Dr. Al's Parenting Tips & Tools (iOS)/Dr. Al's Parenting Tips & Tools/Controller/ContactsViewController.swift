//
//  ContactsViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 9/26/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//

import UIKit
import CoreLocation

class ContactsViewController: UIViewController {
    
    let geoCoder = CLGeocoder()
    
    let websiteURL = URL(string: Constants.docalsWebsite)
    let phoneNumber = Constants.phoneNumberString
    
    @IBOutlet weak var hoursLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        hoursLabel.text = Constants.hoursBlockText
    }
    
    //buttons for the contact info
    
    //Action when the website URL is clicked
    @IBAction func websiteButtonPressed(_ sender: UIButton) {
        let exitAlert = UIAlertController(title: "Open in Safari?", message: "Press OK to open Dr. Al's webpage in safari.", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
            UIApplication.shared.open(self.websiteURL!, options: [:], completionHandler: nil)
        })
        
        exitAlert.addAction(exitAction)
        exitAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        
        present(exitAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        
        guard let number = URL(string: "tel://" + phoneNumber) else { return }
        
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func directionsButtonPressed(_ sender: UIButton) {
    
        let exitAlert = UIAlertController(title: "Open in Apple Maps?", message: "Press Ok to view directions in Apple Maps", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in
            self.loadInAppleMaps()
        })
        
        exitAlert.addAction(exitAction)
        exitAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(exitAlert, animated: true, completion: nil)
        
    }
    
    //function for loading the address in google maps
    func loadInAppleMaps() {
        
        if let url = URL(string:Constants.openMapsURL) {
            UIApplication.shared.open(url)
        }
    }
}
