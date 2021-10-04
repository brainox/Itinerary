//
//  AddTripViewController.swift
//  Itinerary
//
//  Created by Decagon on 30/09/2021.
//

import UIKit

class AddTripViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    var doneSaving: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = UIFont(name: Themes.mainFontName, size: 24)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        tripTextField.rightViewMode = .never
        
        guard tripTextField.text != "",  let newTripName = tripTextField.text else {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
            imageView.image = UIImage(systemName: "exclamationmark.circle")
            imageView.contentMode = .scaleAspectFit
            tripTextField.rightView = imageView
            tripTextField.rightViewMode = .unlessEditing
            return
        }
        
        TripFunctions.createTrip(tripModel: TripModel(title: newTripName))
        
        if let doneSaving = doneSaving {
            doneSaving()
        }
        dismiss(animated: true)
    }
}
