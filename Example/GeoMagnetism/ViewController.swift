//
//  ViewController.swift
//  GeoMagnetism
//
//  Created by dasMulli on 03/28/2018.
//  Copyright (c) 2018 dasMulli. All rights reserved.
//

import UIKit
import CoreLocation
import GeoMagnetism

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var displayTextLabel: UILabel!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.last else { return }
        
        let magneticField = GeomagneticField(gdLatitudeDeg: currentLocation.coordinate.latitude, gdLongitudeDeg: currentLocation.coordinate.longitude, altitudeMeters: currentLocation.altitude, time: Date())
        
        let text = String(format: "Current Data:\nLatitude: %.6f°\n"
            + "Longitude:   %.6f°\n"
            + "Altitude:    %.0f m\n"
            + "Decination:  %.2f°\n"
            + "Inclination: %.2f°\n"
            + "Field Strength: %.2f nT\n"
            + "Horizontal Field Strength: %.2f nT\n"
            + "Field X Component: %.2f nT\n"
            + "Field Y Component: %.2f nT\n"
            + "Field Z Component: %.2f nT\n",
            currentLocation.coordinate.latitude,
            currentLocation.coordinate.longitude,
            currentLocation.altitude,
            magneticField.declination,
            magneticField.inclination,
            magneticField.fieldStrength,
            magneticField.horizontalStrength,
            magneticField.x,
            magneticField.y,
            magneticField.z)
        
        displayTextLabel.text = text
    }
}

