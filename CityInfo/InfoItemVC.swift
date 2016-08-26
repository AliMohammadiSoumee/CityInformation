//
//  InfoItemVC.swift
//  CityInfo
//
//  Created by Ali Soume`e on 6/4/1395 AP.
//  Copyright © 1395 Ali-Soume. All rights reserved.
//

import UIKit

class InfoItemVC: UIViewController {

    @IBOutlet weak var descriptionLb: UILabel!
    @IBOutlet weak var tempLb: UILabel!
    @IBOutlet weak var pressureLb: UILabel!
    @IBOutlet weak var humidityLb: UILabel!
    @IBOutlet weak var longitudeLb: UILabel!
    @IBOutlet weak var latitudeLb: UILabel!

    var temp: Int!
    var pressure: Int!
    var humidity: Int!
    var lon: Int!
    var lat: Int!
    
    
    func edit(temp: Int, pressure: Int, humidity: Int, lon: Int, lat: Int){
        self.temp = temp
        self.pressure = pressure
        self.humidity = humidity
        self.lon = lon
        self.lat = lat
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tempLb.text = "\(temp)"
        pressureLb.text = "\(pressure)"
        humidityLb.text = "\(humidity)"
        longitudeLb.text = "\(lon)"
        latitudeLb.text = "\(lat)"
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    }
    

}
