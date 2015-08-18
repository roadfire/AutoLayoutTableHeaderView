//
//  CustomHeaderView.swift
//  AutoLayoutTableHeaderView
//
//  Created by Josh Brown on 4/29/15.
//  Copyright (c) 2015 Roadfire Software. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {

    @IBOutlet var label: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.preferredMaxLayoutWidth = label.bounds.width
    }
    
}
