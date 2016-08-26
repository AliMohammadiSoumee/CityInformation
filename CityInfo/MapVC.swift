//
//  MapVC.swift
//  CityInfo
//
//  Created by Ali Soume`e on 6/6/1395 AP.
//  Copyright © 1395 Ali-Soume. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    var location = CLLocation()
    let regionRadius: CLLocationDistance = 1000
    
    func editLocation(lon: Double, lat: Double){
        location = CLLocation(latitude: lat, longitude: lon)
    }
    
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 20.0, regionRadius * 20.0)
        map.setRegion(coordinateRegion, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        centerMapOnLocation(location)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
