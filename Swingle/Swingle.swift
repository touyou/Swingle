//
//  Swingle.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

public class Swingle {

    public init() {}

    struct GetSongInfo: SwingleRequest {
        typealias Response = Song

        var method: HTTPMethod {
            return .GET
        }
        var path: String

        init() {
            path = "/song.json"
        }

        init(url: String) {
            path = "/song.json?url=" + url.componentsSeparatedByString("//")[1]
        }
    }


}
