//
//  ViagemCellView.swift
//  Viagens
//
//  Created by Pedro Henrique on 25/08/23.
//

import Foundation
import SwiftUI

struct ViagemCellView: View {
	let viagem: Viagem
	@Environment(\.horizontalSizeClass) var horizontalSizeClass
	
	
	var body: some View {
		VStack(alignment: .leading) {
			Text(viagem.titulo)
				.font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
			Image(viagem.imagem)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
				.clipped()
			HStack {
				Text(viagem.quantidadeDeDias)
					.font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
				Spacer()
				Text(viagem.valor)
					.font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
			}
		}
	}
}
