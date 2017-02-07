//
//  SwingleRequest.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

protocol SwingleRequest: Request {
}

extension SwingleRequest {
    var baseURL: URL {
        return URL(string: "https://widget.songle.jp/api/v1")!
    }
}

extension SwingleRequest where Response: Decodable {
    internal func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try decodeValue(object)
    }
}
