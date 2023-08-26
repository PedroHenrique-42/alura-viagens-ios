//
//  HomeScreen.swift
//  Viagens
//
//  Created by Pedro Henrique on 24/08/23.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
	@Environment(\.horizontalSizeClass) var horizontalSizeClass
	
	var body: some View {
		NavigationStack {
			GeometryReader { view in
				VStack {
					HeaderView(view: view)
					
					HStack {
						ButtonView(
							buttonText: "Hotéis",
							buttonColor: .blue,
							width: self.horizontalSizeClass == .compact ? 100 : 150,
							height: self.horizontalSizeClass == .compact ? 50 : 75,
							offset: self.horizontalSizeClass == .compact ? 50 : view.size.width / 4
						)
						Spacer()
						ButtonView(
							buttonText: "Pacote",
							buttonColor: .orange,
							width: self.horizontalSizeClass == .compact ? 100 : 150,
							height: self.horizontalSizeClass == .compact ? 50 : 75,
							offset: self.horizontalSizeClass == .compact ? -50 : -view.size.width / 4
						)
					}
					.offset(y: self.horizontalSizeClass == .compact ? -30 : -46)
					
					List(viagens) { viagem in
						NavigationLink(
							destination: MapView(coordinates: viagem.localizacao)
								.navigationTitle("Localização")
						) {
							ViagemCellView(viagem: viagem)
						}
					}
					.navigationTitle("")
					.scrollContentBackground(.hidden)
					.padding(.all, 0)
					.listStyle(GroupedListStyle())
				}
				.edgesIgnoringSafeArea(.all)
			}
		}
	}
}

struct HomeScreen_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			HomeScreen()
				.previewDevice(PreviewDevice(rawValue: "iPhone 8"))
			
			HomeScreen()
				.previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
		}
	}
}
