//
//  DraggableImageView.swift
//  Tindr
//
//  Created by user on 3/24/16.
//  Copyright © 2016 David Wayman. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {
    
    

    @IBOutlet weak var profileImage: UIImageView!
    
    
    
    var image: UIImage? {
        get { return profileImage.image }
        set { profileImage.image = newValue }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        profileImage.frame = bounds
        addSubview(profileImage)
        
        
            
            // custom initialization logic
        }

    
    
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
