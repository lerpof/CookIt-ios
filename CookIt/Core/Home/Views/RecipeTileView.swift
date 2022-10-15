//
//  RecipeTileView.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/07/22.
//

import SwiftUI
import Kingfisher

struct RecipeTileView: View {
    
    private let recipeName: String
    private let imageURL: URL
    
    init(withName name: String, andImage url: String) {
        self.recipeName = name
        self.imageURL = URL(string: url)!
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KFImage(imageURL)
                .resizable()
                .scaledToFill()
                .propotionalFrame(width: 0.45, height: 0.35)
                .clipped()
                .cornerRadius(25)
                
            Text(recipeName)
                .fontWeight(.bold)
                .shadow(radius: 3)
                .padding()
        }
    }
}
//
//struct RecipeTileView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeTileView(withName: "Patatine fritte")
//    }
//}
