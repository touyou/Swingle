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

    // MARK: - Get song information
    struct GetSongInfo: SwingleRequest {
        let url: String

        // MARK: RequestType
        typealias Response = Song

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url
            ]
        }
    }

    // MARK: - Get song beats map
    struct GetSongBeatsInfo: SwingleRequest {
        let url: String
        let revision: Int?

        // MARK: RequestType
        typealias Response = Beats

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/beat.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
                "revision": String(revision),
            ]
        }
    }
}
