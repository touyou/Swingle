//
//  SwingleBeats.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import APIKit
import Himotoki
import Result

public extension Swingle {
    func getSongBeatsInfo(url: String, revision: Int? = nil, success: (Beats) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongBeatsInfo(url: url, revision: revision)

        Session.sendRequest(request) { result in
            switch result {
            case .Success(let beats):
                success(beats)
            case .Failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }
}
