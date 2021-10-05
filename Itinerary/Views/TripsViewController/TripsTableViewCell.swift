//
//  TripsTableViewCell.swift
//  Itinerary
//
//  Created by Decagon on 29/09/2021.
//

import UIKit

class TripsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.addShadowAndRoundedCorners()
        cardView.backgroundColor = Themes.accent
        titleLabel.font = UIFont(name: Themes.mainFontName, size: 25)
        
        tripImageView.layer.cornerRadius = cardView.layer.cornerRadius

    }
    
    func setup(tripModel: TripModel) {
        titleLabel.text = tripModel.title
        tripImageView.image = tripModel.image
    }
    
}
