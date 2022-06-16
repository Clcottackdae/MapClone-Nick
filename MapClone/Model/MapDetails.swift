//
//  MapDetails.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/16.
//

import Foundation
import MapKit

enum MapDetails {
    static let startLocation = CLLocationCoordinate2D(latitude: 37.5666791, longitude: 126.9782914)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
}
