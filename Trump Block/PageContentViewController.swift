//
//  PageContentViewController.swift
//  Trump Block
//
//  Created by Alex Meyer on 10/12/15.
//
//

import UIKit

class PageContentViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var letsGoButton: UIButton!
    
    
    var pageIndex: Int!
    var titleText: String!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = UIImage(named: self.imageName)
        self.titleLabel.text = self.titleText
    }
    
    @IBAction func letsGoButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
        // Only set to seen when necessary
        let userSettings = NSUserDefaults.standardUserDefaults()
        if !(userSettings.boolForKey("seenTutorial")) {
            userSettings.setBool(true, forKey: "seenTutorial")
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        switch self.pageIndex {
        case 0:
            self.letsGoButton.hidden = true
            
        case 1:
            self.letsGoButton.hidden = false
            self.titleLabel.font = UIFont(name: self.titleLabel.font.fontName, size: 20.0)
            
        default:
            self.letsGoButton.hidden = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
