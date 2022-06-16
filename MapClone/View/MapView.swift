//
//  ContentView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/16.
//

import SwiftUI
import MapKit

// Map 뷰 reference https://seons-dev.tistory.com/entry/SwiftUI-Map-View
struct MapView: View {
    @ObservedObject var mapStateHolder = MapStateHolder()
    
    var body: some View {
        Map(coordinateRegion: $mapStateHolder.region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            .edgesIgnoringSafeArea(.all)
            .accentColor(Color(.systemPink))
            .onAppear {
                mapStateHolder.checkIfLocationServicesIsEnabled()
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
