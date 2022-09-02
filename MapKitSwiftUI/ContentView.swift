//
//  ContentView.swift
//  MapKitSwiftUI
//
//  Created by Lucy on 02/09/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -5.15620474632138, longitude: 119.44250412351704),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    let locations = [
        Location(name: "Pantai Losari", coordinate: CLLocationCoordinate2D(latitude: -5.14349909051625, longitude: 119.40748498644041)),
        Location(name: "Fort Rotterdam Makassar", coordinate: CLLocationCoordinate2D(latitude: -5.133702194550618, longitude: 119.40526601129436))
    ]
    
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations){ location in
                MapAnnotation(coordinate: location.coordinate){
                    NavigationLink(destination: {
                        Text(location.name)
                    }, label: {
                        VStack{
                            Circle()
                                .stroke(lineWidth: 2)
                                .fill(.red)
                                .frame(width: 20, height: 20)
                              
                            Text(location.name)
                                .font(.system(size: 14))
                        }
                    })
                }
            }
            .navigationTitle("Makassar")
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
