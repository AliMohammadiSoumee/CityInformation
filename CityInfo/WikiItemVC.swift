//
//  WikiItemVC.swift
//  CityInfo
//
//  Created by Ali Soume`e on 6/4/1395 AP.
//  Copyright © 1395 Ali-Soume. All rights reserved.
//

import UIKit

class WikiItemVC: UIViewController {
    
    
    var urlString = String()
    
    @IBOutlet weak var wikiWV: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = NSURL(string: urlString) {
            let request = NSURLRequest(URL: url)
            wikiWV.loadRequest(request)
        }
        else {
            print("error")
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
 

}
