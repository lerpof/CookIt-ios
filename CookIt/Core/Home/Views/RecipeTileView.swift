//
//  RecipeTileView.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/07/22.
//

import SwiftUI

struct RecipeTileView: View {
    
    private let recipeName: String
    
    init(withName name: String) {
        self.recipeName = name
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.green)
                
            Text(recipeName)
                .fontWeight(.bold)
                .shadow(radius: 3)
                .padding()
        }
        .propotionalFrame(width: 0.45, height: 0.35)
    }
}

struct RecipeTileView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTileView(withName: "Patatine fritte")
    }
}
