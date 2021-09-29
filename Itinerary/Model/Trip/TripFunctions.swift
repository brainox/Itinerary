//
//  TripFunctions.swift
//  Itinerary
//
//  Created by Decagon on 29/09/2021.
//

import Foundation

class TripFunctions {
    static func createTrip(tripModel: TripModel) {
        
    }
    
    static func readTrips(completion: @escaping () -> ()) {
        if Data.tripModel.count == 0 {
            Data.tripModel.append(TripModel(title: "Trip to Barracuda beach"))
            Data.tripModel.append(TripModel(title: "Lekki Conservation Center"))
            Data.tripModel.append(TripModel(title: "Lekki Cinema"))
        }
       
    }
    
    static func updateTrip(tripModel: TripModel) {
        
    }
    
    static func deleteTrip(tripModel: TripModel) {
        
    }
}
