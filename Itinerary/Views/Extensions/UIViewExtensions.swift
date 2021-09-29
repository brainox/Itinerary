//
//  UIViewExtensions.swift
//  Itinerary
//
//  Created by Decagon on 29/09/2021.
//

import UIKit

extension UIView {
    func addShadowAndRoundedCorners() {
        layer.opacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10

    }
}
