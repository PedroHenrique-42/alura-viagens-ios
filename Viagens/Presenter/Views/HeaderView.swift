//
//  HeaderView.swift
//  Viagens
//
//  Created by Pedro Henrique on 24/08/23.
//

import Foundation
import SwiftUI

struct HeaderView : View {
	let view: GeometryProxy
	
	@Environment(\.horizontalSizeClass) var horizontalSizeClass
	
	var body: some View {
		VStack {
			TextView(
				text: "Brasil Viagens",
				foregroundColor: .white,
				fontSize: self.horizontalSizeClass == .compact ? 20 : 30
			)
			.padding(.top, self.horizontalSizeClass == .compact ? 70 : 90)
			
			TextView(
				text: "ESPECIAL",
				foregroundColor: .white,
				fontSize: self.horizontalSizeClass == .compact ? 20 : 30
			)
			.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
			.padding(.leading, 30)
			
			TextView(
				text: "BRASIL",
				foregroundColor: .white,
				fontSize: self.horizontalSizeClass == .compact ? 20 : 30
			)
			.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
			.padding(.leading, 30)
		}
		.frame(
			width: view.size.width,
			height: self.horizontalSizeClass == .compact ? 200 : 310,
			alignment: .top
		)
		.background(.purple)
	}
}

struct HeaderView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			GeometryReader { view in
				HeaderView(view: view)
			}
			.previewDevice(PreviewDevice(rawValue: "iPhone 8"))
			
			GeometryReader { view in
				HeaderView(view: view)
			}
			.previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
		}
	}
}
