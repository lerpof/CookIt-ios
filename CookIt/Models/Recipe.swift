////
////  Recipe.swift
////  CookIt
////
////  Created by Leonardo Lazzari on 15/10/22.
////
//
//import Foundation
//
//// MARK: - Recipe
//struct Recipe: Codable {
//    let vegetarian, vegan, glutenFree, dairyFree: Bool
//    let veryHealthy, cheap, veryPopular, sustainable: Bool
//    let lowFodmap: Bool
//    let weightWatcherSmartPoints: Int
//    let gaps: String
//    let preparationMinutes, cookingMinutes, aggregateLikes, healthScore: Int
//    let creditsText, sourceName: String
//    let pricePerServing: Double
//    let extendedIngredients: [ExtendedIngredient]
//    let id: Int
//    let title: String
//    let readyInMinutes, servings: Int
//    let sourceURL: String
//    let image: String
//    let imageType, summary: String
//    let cuisines: [JSONAny]
//    let dishTypes, diets: [String]
//    let occasions: [JSONAny]
//    let instructions: String
//    let analyzedInstructions: [AnalyzedInstruction]
//    let originalID: JSONNull?
//    let spoonacularSourceURL: String
//
//    enum CodingKeys: String, CodingKey {
//        case vegetarian, vegan, glutenFree, dairyFree, veryHealthy, cheap, veryPopular, sustainable, lowFodmap, weightWatcherSmartPoints, gaps, preparationMinutes, cookingMinutes, aggregateLikes, healthScore, creditsText, sourceName, pricePerServing, extendedIngredients, id, title, readyInMinutes, servings
//        case sourceURL = "sourceUrl"
//        case image, imageType, summary, cuisines, dishTypes, diets, occasions, instructions, analyzedInstructions
//        case originalID = "originalId"
//        case spoonacularSourceURL = "spoonacularSourceUrl"
//    }
//}
