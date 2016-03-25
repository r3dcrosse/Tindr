//
//  ViewController.swift
//  Tindr
//
//  Created by David Wayman on 3/24/16.
//  Copyright © 2016 David Wayman. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    var initialCenter: CGPoint!
    
    @IBAction func onPanImage(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(view)
        let point = sender.locationInView(self.view)
        profileImage.center = CGPoint(x: initialCenter.x + translation.x, y: initialCenter.y)
        
        initialCenter.x += profileImage.frame.origin.x
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

