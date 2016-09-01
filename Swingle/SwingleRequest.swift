//
//  SwingleRequest.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import APIKit

protocol SwingleRequest: RequestType {
}

extension SwingleRequest {
    var baseURL: NSURL {
        return NSURL(string: "https://widget.songle.jp/api/v1/")!
    }

    var baseString: String {
        return "https://widget.songle.jp/api/v1/"
    }
}
