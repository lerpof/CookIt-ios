//
//  HomeVIew.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/07/22.
//

import SwiftUI

struct HomeView: View {
    
    let recipeNames = [["Patatine Fritte", "Pizza"],
                          ["Pasta", "Mandolino"],
                          ["Pesce", "Pasta allo scoglio"]]
    
    let rs = RecipesService()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(recipeNames, id: \.self) { pair in
                    HStack {
                        Spacer()
                        RecipeTileView(withName: pair[0])
                        Spacer()
                        RecipeTileView(withName: pair[1])
                        Spacer()
                    }
                }
            }
        }
        .onAppear {
            rs.getRandomRecipes { recipesList in
                print("DEBUG")
            } failure: { failureMsg in
                print(failureMsg)
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
