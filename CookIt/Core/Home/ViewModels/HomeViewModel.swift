//
//  HomeViewModel.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 15/10/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var recipesList: RecipesList?
    
    let recipesService = RecipesService()
    
    func getRecipes() {
        recipesService.getRandomRecipes { recipesList in
            self.recipesList = recipesList
        } failure: { failureMsg in
            print(failureMsg)
        }
    }
    
}
