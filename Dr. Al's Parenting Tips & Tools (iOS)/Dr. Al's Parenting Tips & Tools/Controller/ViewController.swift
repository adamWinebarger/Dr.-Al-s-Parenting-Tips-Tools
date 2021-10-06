//
//  ViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 8/12/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//
//Main menu view controller

import UIKit

class ViewController: UIViewController {
    
    let drAlsWebsiteURL = URL(string: Constants.docalsWebsite)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Action when "Dr. Al's Webpage" button is pressed
    @IBAction func drAlWebButtonPressed(_ sender: UIButton) {
        let exitAlert = UIAlertController(title: "Open in Safari?", message: "Press OK to open Dr. Al's webpage in safari.", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
            UIApplication.shared.open(self.drAlsWebsiteURL!, options: [:], completionHandler: nil)
        })
        
        exitAlert.addAction(exitAction)
        exitAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        
        present(exitAlert, animated: true, completion: nil)
    }
    
    //Action when contacts button is pressed
    @IBAction func contactsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: Constants.go2ContactsSegue, sender: self) //goes to contacts page/viewcontroller
    }
    
    //Action when location button is pressed
    @IBAction func locationButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: Constants.go2LocationSegue, sender: self) //goes to Location Page/View controller
    }
    
    //Action when ADD/ADHD button is pressed
    @IBAction func addadhdButtonPressed(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "goToADDADHDTips", sender: self)
    }
    
    //Action when Tip Sheet button is pressed
    @IBAction func tipSheetButtonPressed(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "goToTipSheet", sender: self)
    }
    
    //Action when Good Websites Button is pressed
    @IBAction func websiteButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: Constants.go2WebsiteSegue, sender: self)
    }
    
    //Action when new patient form button is pressed
    @IBAction func newPatientFormButtonPressed(_ sender: UIButton) {
        
        //May incorporate this function on a later update. leaving the files within the app now to simplify the build later on
        
        //self.performSegue(withIdentifier: "goToNewPatient", sender: self)
    }
    
    
    
    
}
