//
//  TextView.swift
//  Viagens
//
//  Created by Pedro Henrique on 24/08/23.
//

import Foundation
import SwiftUI

struct TextView: View {
	let text: String
	let foregroundColor: Color
	var fontSize: Double = 20
	
	var body: some View {
		Text(text)
			.foregroundColor(foregroundColor)
			.font(.custom("Avenir Book", size: fontSize))
	}
}
