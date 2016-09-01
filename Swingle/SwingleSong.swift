//
//  SwingleSong.swift
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

    func getSongInfo(url: String, callbackQueue: CallbackQueue? = nil, success: (Song) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongInfo(url: url)

        Session.sendRequest(request, callbackQueue: callbackQueue) { result in
            switch result {
            case .Success(let song):
                success(song)
            case .Failure(let error):
                failure?(error)
                print("error: \(error)(\(request.path))")
            }
        }
    }

}
