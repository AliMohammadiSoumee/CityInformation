//
//  WikiItemVC.swift
//  CityInfo
//
//  Created by Ali Soume`e on 6/4/1395 AP.
//  Copyright © 1395 Ali-Soume. All rights reserved.
//

import UIKit
import PopupDialog

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
            editPopup("Ooops", message: "This city doesn't have wiki page", bt1: "OK")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
 

    func editPopup(title: String , message: String, bt1: String) {
        let popup = PopupDialog(title: title, message: message)
        let button1 = DefaultButton(title: bt1, action: .None)
        popup.addButton(button1)
        self.presentViewController(popup, animated: true, completion: nil)
    }

}
