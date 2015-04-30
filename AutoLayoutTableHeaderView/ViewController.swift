//
//  ViewController.swift
//  AutoLayoutTableHeaderView
//
//  Created by Josh Brown on 4/29/15.
//  Copyright (c) 2015 Roadfire Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        sizeHeaderToFit()
    }
    
    func sizeHeaderToFit()
    {
        let headerView = tableView.tableHeaderView!
        
        headerView.setNeedsLayout()
        headerView.layoutIfNeeded()
                
        let height = headerView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).height
        var frame = headerView.frame
        frame.size.height = height
        headerView.frame = frame
        
        tableView.tableHeaderView = headerView
    }
}

