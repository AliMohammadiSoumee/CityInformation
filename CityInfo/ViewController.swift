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
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func checkCityName(sender: UIButton) {
        performSegueWithIdentifier("ShowMainTabBar", sender: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var wikiItem = WikiItemVC()
        var infoItem = InfoItemVC()
    }
}

