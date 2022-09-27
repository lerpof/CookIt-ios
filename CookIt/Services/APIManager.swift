//
//  APIManager.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 26/09/22.
//

import Foundation
import Alamofire

public typealias FailureMessage = String

public class APIManager {
    
    public static let shared = APIManager()
    
    func callAPI(url: String,
                 method: HTTPMethod = .get,
                 headers: HTTPHeaders? = nil,
                 parameters: Parameters? = nil,
                 success: @escaping ((Data?) -> Void),
                 failure: @escaping ((FailureMessage) -> Void)) {
        
        guard let url = URLComponents(string: "\(url)") else {
            failure("Invalid URL")
            return
        }
        // Network request
        AF.request(url,
                   method: method,
                   parameters: parameters,
                   encoding: JSONEncoding.default,
                   headers: headers).response { response in
            switch response.result {
            case .success:
                success(response.data)
            case .failure(_):
                failure(response.error!.localizedDescription)
            }
        }
    }
    
}
