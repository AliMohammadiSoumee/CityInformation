//
//  ViewController.swift
//  CityInfo
//
//  Created by Ali Soume`e on 6/4/1395 AP.
//  Copyright © 1395 Ali-Soume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enterYourLocationLb: UILabel!
    @IBOutlet weak var getCityNameTF: UITextField!
    @IBOutlet weak var submitBt: UIButton!
    var json: Dictionary<String, AnyObject>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCityNameTF.text = ""
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    
    @IBAction func checkCityName(sender: UIButton) {
        let urlString: String = "http://api.openweathermap.org/data/2.5/weather?q=\(getCityNameTF.text!)&APPID=e3a22a7b27e1b81c1bb76e7e2c5efd70"
        let url = NSURL(string: urlString)!
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) in
            if let data = data {
                do{
                    self.json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as! Dictionary<String, AnyObject>
                    print(self.json["cod"] as? Int)
                    
                    if self.json["cod"] as? Int == 200{
                        dispatch_async(dispatch_get_main_queue()) {
                            self.performSegueWithIdentifier("ShowMainTabBar", sender: nil)
                        }
                    }
                    else{
                        print("error")
                    }
                }
                catch{
                    
                }
            }
            else{
                print(error)
            }
        }
        task.resume()
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var wikiItem = WikiItemVC()
        var infoItem = InfoItemVC()
    }
}


