//
//  TripModel.swift
//  Itinerary
//
//  Created by Decagon on 29/09/2021.
//

import Foundation

class TripModel {
    let id: UUID
    var title: String
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
