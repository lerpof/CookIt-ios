//
//  ViewExtensions.swift
//  Twitter Clone
//
//  Created by Leonardo Lazzari on 26/04/22.
//

import SwiftUI

extension View {
    func propotionalFrame(width: CGFloat = 1.0, height: CGFloat = 1.0, isSquared: Bool = false, alignment: Alignment = .center) -> some View {
		let finalWidth = UIScreen.main.bounds.width * width
		let finalHeight = isSquared ? finalWidth : UIScreen.main.bounds.height * height
		return frame(width: finalWidth, height: finalHeight)
	}
	
	var rect: CGRect {
		return UIScreen.main.bounds
	}
    
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
	
}
