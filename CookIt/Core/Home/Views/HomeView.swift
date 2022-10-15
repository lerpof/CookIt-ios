//
//  HomeVIew.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/07/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeVM = HomeViewModel()
    
    var body: some View {
        ScrollView {
            if let recipesList = homeVM.recipesList {
                VStack {
                    ForEach(recipesList.recipesPair, id: \.self) { pair in
                        HStack {
                            Spacer()
                            RecipeTileView(withName: pair[0].title!, andImage: pair[0].image!)
                            Spacer()
                            RecipeTileView(withName: pair[1].title!, andImage: pair[1].image!)
                            Spacer()
                        }
                    }
                }
            }
        }
        .onAppear {
            homeVM.getRecipes()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
