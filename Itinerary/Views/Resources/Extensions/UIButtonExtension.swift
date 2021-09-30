//
//  UIButtonExtension.swift
//  Itinerary
//
//  Created by Decagon on 30/09/2021.
//

import UIKit

extension UIButton {
    func createFloatingActionButton() {
        backgroundColor = Themes.tintColor
        tintColor = .white
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }
}
