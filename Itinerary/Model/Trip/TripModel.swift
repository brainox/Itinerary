//
//  TripModel.swift
//  Itinerary
//
//  Created by Decagon on 29/09/2021.
//

import UIKit

class TripModel {
    let id: UUID
    var title: String
    var image: UIImage?
    
    init(title: String, image: UIImage? = nil) {
        id = UUID()
        self.title = title
        self.image = image
    }
}
