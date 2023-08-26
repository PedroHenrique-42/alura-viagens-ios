//
//  MapView.swift
//  Viagens
//
//  Created by Pedro Henrique on 25/08/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
	let coordinates: CLLocationCoordinate2D
	
	func makeUIView(context: Context) -> some MKMapView {
		return MKMapView(frame: .zero)
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
		let span = MKCoordinateSpan(
			latitudeDelta: 0.2,
			longitudeDelta: 0.2
		)
		let region = MKCoordinateRegion(
			center: coordinates, span: span
		)
		
		uiView.setRegion(region, animated: true)
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
			MapView(coordinates: viagens[0].localizacao)
    }
}
