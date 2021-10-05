//
//  TripFunctions.swift
//  Itinerary
//
//  Created by Decagon on 29/09/2021.
//

import UIKit

class TripFunctions {
    static func createTrip(tripModel: TripModel) {
        Data.tripModel.append(tripModel)
    }
    
    static func readTrips(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModel.count == 0 {
                Data.tripModel.append(TripModel(title: "Trip to Barracuda beach"))
                Data.tripModel.append(TripModel(title: "Lekki Conservation Center"))
                Data.tripModel.append(TripModel(title: "Lekki Cinema"))
            }
            DispatchQueue.main.async {
                completion()
            }
        }
       
    }
    
    static func updateTrip(at index: Int, title: String, image: UIImage? = nil) {
        let trip = Data.tripModel[index]
        trip.title = title
        trip.image = image
    }
    
    static func deleteTrip(index: Int) {
        Data.tripModel.remove(at: index)
    }
}
