import SwiftUI

struct LocationView: View {
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Latitude: \(location.coordinate.latitude)")
                Text("Longitude: \(location.coordinate.longitude)")
                Text("Timestamp: \(location.timestamp)")
            } else {
                Text("Fetching location...")
            }
        }
        .onAppear {
            // Start updating location when the view appears
            locationManager.locationManager.startUpdatingLocation()
        }
        .onDisappear {
            // Stop updating location when the view disappears
            locationManager.locationManager.stopUpdatingLocation()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
