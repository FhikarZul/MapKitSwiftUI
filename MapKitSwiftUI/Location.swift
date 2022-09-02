//
//  Location.swift
//  MapKitSwiftUI
//
//  Created by Lucy on 02/09/22.
//

import Foundation
import CoreLocation

struct Location: Identifiable{
    let id: UUID = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

