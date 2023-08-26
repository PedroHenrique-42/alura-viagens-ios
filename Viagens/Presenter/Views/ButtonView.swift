//
//  ButtonView.swift
//  Viagens
//
//  Created by Pedro Henrique on 24/08/23.
//

import Foundation
import SwiftUI

struct ButtonView: View {
	let buttonText: String
	let buttonColor: Color
	let width: Double
	let height: Double
	let offset: Double
	@Environment(\.horizontalSizeClass) var horizontalSizeClass
	
	var body: some View {
		Button(action: {}) {
			Text(buttonText)
				.font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
				.foregroundColor(.white)
		}
		.frame(width: width, height: height)
		.background(buttonColor)
		.cornerRadius(8)
		.offset(x: offset)
	}
}
