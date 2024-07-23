//
//  MapView.swift
//  tut1
//
//  Created by Sonal on 09/06/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var locationCoordinates: CLLocationCoordinate2D
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: locationCoordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(locationCoordinates: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
