//
//  RecipesService.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/09/22.
//

import Foundation
import Alamofire

public class RecipesService {
    
    func getRandomRecipes(number: Int = 10,
                          success: @escaping (_ recipesList: RecipesList?) -> Void,
                          failure: @escaping (_ failureMsg: FailureMessage) -> Void) {
        var headers = HTTPHeaders()
        headers["content-type"] = "application/json"
        let urlWithEndpoint = Constants.Api.baseURL + "/recipes/random?apiKey=4b7fe516be3344958ade072896f84cf2&number=10"
        
        APIManager.shared.callAPI(url: urlWithEndpoint,
                                  method: .get,
                                  headers: headers,
                                  success: { response in
            do {
                if let data = response {
                    let recipesList = try JSONDecoder().decode(RecipesList.self, from: data)
                    success(recipesList)
                }
            } catch {
                print(String(describing: error) )
                failure(FailureMessage(error.localizedDescription))
            }
        }, failure: { error in
            failure(FailureMessage(error))
        })
    }
}
