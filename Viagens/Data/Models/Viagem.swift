import Foundation
import MapKit

struct Viagem: Hashable, Codable, Identifiable {
	var id: Int
	var titulo: String
	var imagem: String
	var quantidadeDeDias: String
	var valor: String
	var coordenada: Coordenada
	
	var localizacao: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordenada.latitude,
			longitude: coordenada.longitude)
	}
}

struct Coordenada: Hashable, Codable {
	var latitude: Double
	var longitude: Double
}
