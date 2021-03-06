//
//  UtilityCell.swift
//  LNT
//
//  Created by Henry Popp on 3/27/15.
//  Copyright (c) 2015 Henry Popp. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class UtilityCell: UITableViewCell {
    
    private var _utilityName: String!
    var utilityName: String! {
        get {
            return _utilityName
        }
        
        set {
            titleLabel.text = newValue
            _utilityName = newValue
        }
    }
    
    func startLoading() {
        yourConsumptionLabel.hidden = true
        localAverageLabel.hidden = true
        loadingIndicator.startAnimating()
        loadingIndicator.hidden = false
    }
    
    func stopLoading() {
        yourConsumptionLabel.hidden = false
        localAverageLabel.hidden = false
        loadingIndicator.hidden = true
        loadingIndicator.stopAnimating()
    }
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yourConsumptionLabel: UILabel!
    @IBOutlet weak var localAverageLabel: UILabel!
    @IBOutlet weak var protoGraphView: Graph!
    @IBOutlet var background: GradientView!
    @IBOutlet var usageAlertButton: UIButton!
}
