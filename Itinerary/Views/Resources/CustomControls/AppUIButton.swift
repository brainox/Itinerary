//
//  AppUIButton.swift
//  Itinerary
//
//  Created by Decagon on 30/09/2021.
//

import UIKit

class AppUIButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        backgroundColor = Themes.tintColor
        layer.cornerRadius = frame.height / 2
        setTitleColor(UIColor.white, for: .normal)
        
    }
}
