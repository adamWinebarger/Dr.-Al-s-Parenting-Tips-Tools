//
//  LocationViewController.swift
//  Dr. Al's Parenting Tips & Tools
//
//  Created by adam Winebarger on 9/26/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocationViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView! //Outlet for the map
    
    private let locationManager = CLLocationManager()
    let location = Constants.addressString
    let geocoder = CLGeocoder()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.        
        loadMapLocation()
        
        
    }
    
    //Back Button
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func loadMapLocation() {
        //code to transform address into lat/long, then drop a pin on the mapView
        geocoder.geocodeAddressString(location) { [weak self] placemarks, error in
            if let placemark = placemarks?.first, let location = placemark.location {
                let mark = MKPlacemark(placemark: placemark)
                
                if var region = self?.mapView.region {
                    region.center = location.coordinate
                    region.span.longitudeDelta /= 1000.0
                    region.span.latitudeDelta /= 1000.0
                    self?.mapView.setRegion(region, animated: false)
                    self?.mapView.addAnnotation(mark)
                    
                }
            }
        }
        
        //Keeps the image static... might comment out a few of these... not sure
        mapView.isPitchEnabled = false
        mapView.isRotateEnabled = false
        mapView.isZoomEnabled = false
        mapView.isScrollEnabled = false
        
        
    }
    
    @IBAction func locationButtonPressed(_ sender: UIButton) {
        let exitAlert = UIAlertController(title: "Open in Apple Maps?", message: "Press Ok to view directions in Apple Maps", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in
            self.loadInAppleMaps()
        })
        
        exitAlert.addAction(exitAction)
        exitAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(exitAlert, animated: true, completion: nil)
        
    }
    
    func loadInAppleMaps() {
        
        if let url = URL(string:Constants.openMapsURL) {
            UIApplication.shared.open(url)
        }
    }
}
