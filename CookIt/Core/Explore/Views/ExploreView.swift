//
//  ExploreView.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 19/09/22.
//

import SwiftUI
import CustomTextField

struct ExploreView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
            SearchBarView(with: $text)
                .padding()
            Spacer()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
