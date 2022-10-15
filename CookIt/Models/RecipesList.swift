//
//  RecipesList.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 15/10/22.
//

import Foundation
import Alamofire

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseRecipesModel { response in
//     if let recipesModel = response.result.value {
//       ...
//     }
//   }

// MARK: - RecipesList
struct RecipesList: Codable {
    let recipes: [Recipe]
    
    var recipesPair: [[Recipe]] {
        return recipes.splitInPair()
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseRecipe { response in
//     if let recipe = response.result.value {
//       ...
//     }
//   }

// MARK: - Recipe
struct Recipe: Codable, Hashable {
    static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.id == rhs.id
    }
    
    let vegetarian, vegan, glutenFree, dairyFree: Bool?
    let veryHealthy, cheap, veryPopular: Bool?
    let preparationMinutes, cookingMinutes, healthScore: Int?
    let pricePerServing: Double?
    let extendedIngredients: [ExtendedIngredient]?
    let id: Int
    let title: String?
    let readyInMinutes, servings: Int?
    let image: String?
    let imageType, summary: String?
    let dishTypes, diets: [String]?
    let occasions: [String]?
    let instructions: String?
    let analyzedInstructions: [AnalyzedInstruction]?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAnalyzedInstruction { response in
//     if let analyzedInstruction = response.result.value {
//       ...
//     }
//   }

// MARK: - AnalyzedInstruction
struct AnalyzedInstruction: Codable, Hashable {
    let name: String?
    let steps: [Step]?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseStep { response in
//     if let step = response.result.value {
//       ...
//     }
//   }

// MARK: - Step
struct Step: Codable, Hashable {
    let number: Int?
    let step: String?
    let ingredients, equipment: [Ent]?
    let length: Length?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseEnt { response in
//     if let ent = response.result.value {
//       ...
//     }
//   }

// MARK: - Ent
struct Ent: Codable, Hashable {
    let id: Int?
    let name, localizedName, image: String?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseLength { response in
//     if let length = response.result.value {
//       ...
//     }
//   }

// MARK: - Length
struct Length: Codable, Hashable {
    let number: Int?
    let unit: String?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseExtendedIngredient { response in
//     if let extendedIngredient = response.result.value {
//       ...
//     }
//   }

// MARK: - ExtendedIngredient
struct ExtendedIngredient: Codable, Hashable {
    let id: Int?
    let aisle, image: String?
    let consistency: Consistency?
    let name, nameClean, original, originalName: String?
    let amount: Double?
    let unit: String?
    let meta: [String]?
    let measures: Measures?
}

enum Consistency: String, Codable {
    case liquid = "LIQUID"
    case solid = "SOLID"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMeasures { response in
//     if let measures = response.result.value {
//       ...
//     }
//   }

// MARK: - Measures
struct Measures: Codable, Hashable {
    let us, metric: Metric?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMetric { response in
//     if let metric = response.result.value {
//       ...
//     }
//   }

// MARK: - Metric
struct Metric: Codable, Hashable {
    
    
    
    let amount: Double?
    let unitShort, unitLong: String?
}
