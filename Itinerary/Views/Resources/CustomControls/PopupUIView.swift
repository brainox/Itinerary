//
//  PopupUIView.swift
//  Itinerary
//
//  Created by Decagon on 30/09/2021.
//

import UIKit

class PopupUIView: UIView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        layer.opacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10 
        backgroundColor = Themes.backgroundColor
    }
}
