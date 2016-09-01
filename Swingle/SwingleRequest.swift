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

protocol SwingleRequest: RequestType {
}

extension SwingleRequest where Response: Decodable {
    var baseURL: NSURL {
        return NSURL(string: "https://widget.songle.jp/api/v1")!
    }

    func responseFromObject(object: AnyObject, URLResponse: NSHTTPURLResponse) throws -> Response {
        return try decodeValue(object)
    }
}
