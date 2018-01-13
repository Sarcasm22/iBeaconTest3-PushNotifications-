//
//  ViewController.swift
//  iBeaconTest3(PushNotifications)
//
//  Created by Code Box on 10/10/16.
//  Copyright © 2016 Uncle Austin's Premium Corporation. All rights reserved.
//
import UIKit
import CoreLocation
import UserNotifications

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    let region = CLBeaconRegion(proximityUUID: UUID(uuidString: "A8731A74-4B9D-4F98-84F4-4377E66B760E")!, identifier: "Test Region")// fill in UUID of beacons
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        if (CLLocationManager.authorizationStatus() != CLAuthorizationStatus.authorizedWhenInUse) {
            
            locationManager.requestAlwaysAuthorization()
        }
        
        locationManager.startRangingBeacons(in: region)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        var notification : UINotificationFeedbackType = UINotificationFeedbackType()
        
        
        
    }
    
   /* func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        let knownBeacons = beacons.filter{$0.proximity != CLProximity.unknown}
        if (knownBeacons.count > 0) {
    

        }
        
    } */
    
    
}

