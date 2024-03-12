//
//  NetworkManager.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation
import Alamofire

final class NetworkManager<T: Codable> {
    static func callAp(parameters: Parameters, completion: @escaping (Result<T, NetworkError>) -> Void) {
        let url = URL(string: API.baseUrlString + "/auth/signup")!
        let headers: HTTPHeaders = [
            "Content-Type": "application/json"
        ]

        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
            .validate()
            .response { response in
                switch response.result {
                case .success(let data):
                    guard let data = data else {
                        completion(.failure(.invalidData))
                        return
                    }
                    
                    do {
                        let json = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(json))
                    } catch let err {
                        print(String(describing: err))
                        completion(.failure(.decodingError(err: err.localizedDescription)))
                    }
                    
                case .failure(let error):
                    if let statusCode = response.response?.statusCode {
                        if statusCode == 401 {
                            completion(.failure(.error(err: "Unauthorized")))
                        } else {
                            completion(.failure(.error(err: "Status code: \(statusCode)")))
                        }
                    } else {
                        completion(.failure(.error(err: error.localizedDescription)))
                    }
                }
            }
    }
    
    static func callApiWithToken(parameters: Parameters, completion: @escaping (Result<T, NetworkError>) -> Void) {
        let url = URL(string: API.baseUrlString + "/auth/signup")!
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(AuthService.shared.accessToken)",
            "Content-Type": "application/json"
        ]

        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
            .validate()
            .response { response in
                switch response.result {
                case .success(let data):
                    guard let data = data else {
                        completion(.failure(.invalidData))
                        return
                    }
                    
                    do {
                        let json = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(json))
                    } catch let err {
                        print(String(describing: err))
                        completion(.failure(.decodingError(err: err.localizedDescription)))
                    }
                    
                case .failure(let error):
                    if let statusCode = response.response?.statusCode {
                        if statusCode == 401 {
                            completion(.failure(.error(err: "Unauthorized")))
                        } else {
                            completion(.failure(.error(err: "Status code: \(statusCode)")))
                        }
                    } else {
                        completion(.failure(.error(err: error.localizedDescription)))
                    }
                }
            }
    }
    
}


//final class NetworkManager<T: Codable> {
//    static func callAPI(for url: URL, completion: @escaping (Result<T, NetworkError>) -> Void) {
//        AF.request(url).validate().response { response in
//            switch response.result {
//            case .success(let data):
//                guard let data = data else {
//                    completion(.failure(.invalidData))
//                    return
//                }
//                
//                do {
//                    let json = try JSONDecoder().decode(T.self, from: data)
//                    completion(.success(json))
//                } catch let err {
//                    print(String(describing: err))
//                    completion(.failure(.decodingError(err: err.localizedDescription)))
//                }
//                
//            case .failure(let error):
//                print("\(error.localizedDescription)")
//                completion(.failure(.error(err: error.localizedDescription)))
//            }
//        }
//    }
//}

enum NetworkError: Error {
    case invalidResponse
    case invalidData
    case error(err: String)
    case decodingError(err: String)
}
