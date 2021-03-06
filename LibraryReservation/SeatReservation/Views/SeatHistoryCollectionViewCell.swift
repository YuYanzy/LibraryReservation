//
//  SeatHistoryCollectionViewCell.swift
//  LibraryReservation
//
//  Created by Weston Wu on 2018/04/18.
//  Copyright © 2018 Weston Wu. All rights reserved.
//

import UIKit

class SeatHistoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var stateImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var libraryNameLabel: UILabel!
    
    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var areaNameLabel: UILabel!
    @IBOutlet weak var seatLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    func update(reservation: SeatHistoryReservation) {
        dateLabel.text = reservation.rawDate
        timeLabel.text = "\(reservation.rawBegin) - \(reservation.rawEnd)"
        guard let location = reservation.location else {
            return
        }
        libraryNameLabel.text = location.library.rawValue
        floorLabel.text = "\(location.floor)F"
        areaNameLabel.text = location.room
        seatLabel.text = "Seat No.\(location.seat)"
        stateLabel.text = reservation.state.localizedDescription
        stateImageView.isHidden = !reservation.isFailed
    }
    
}
