//
//  RecipesService.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/09/22.
//

import Foundation
import Alamofire

class RecipesService {
    
    func getRandomRecipes(number: Int = 10,
                          success: @escaping (_ recipesList: RecipePreviewsList?) -> Void,
                          failure: @escaping (_ failureMsg: FailureMessage) -> Void) {
        var headers = HTTPHeaders()
        headers["content-type"] = "application/json"
        let parameters = ["apiKey" : Constants.Api.apiKey,
                          "number" : number.description]
        APIManager.shared.callAPI(url: Constants.Api.baseURL,
                                  method: .post,
                                  headers: headers,
                                  parameters: parameters, success: { response in
            do {
                if let data = response {
                    let recipePreviewsList = try JSONDecoder().decode(RecipePreviewsList.self, from: data)
                    success(recipePreviewsList)
                }
            } catch {
                failure(FailureMessage(error.localizedDescription))
            }
        }, failure: { error in
            failure(FailureMessage(error))
        })
    }
}
