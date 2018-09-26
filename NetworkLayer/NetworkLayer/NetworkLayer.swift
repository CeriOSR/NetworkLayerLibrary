//
//  NetworkLayer.swift
//  NetworkLayer
//
//  Created by Rey Cerio on 2018-09-25.
//  Copyright © 2018 Rey Cerio. All rights reserved.
//

import Foundation

protocol ServiceProtocol {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var task: Task { get }
    var headers: Headers? { get }
    var parametersEncoding: ParametersEncoding { get }
    
}

//HTTPMethod is an enum responsible for setting HTTP method of requests. URLRequest has property .httpMethod to set method String type.
enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

//Task is an enum responsible for configuring parameters for a specific service. You can add as many cases as are applicable to your network layer requirements

typealias Parameters = [String: Any]
enum Task {
    case requestPlain
    case requestParameters(Parameters)
}

//ParametersEncoding is an enum responsible for setting encoding type. In this example you have to use the most popular: URL and JSON.

enum ParametersEncoding {
    case url
    case json
}


