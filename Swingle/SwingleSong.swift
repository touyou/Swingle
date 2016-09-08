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
    /**
    GET song.json

    Example:

        Swingle().getSongInfo("URL", success: { song in
            print("title: \(song.title)")
            print("artist: \(song.artist.name)")
        })
    */
    func getSongInfo(_ url: String, success: @escaping (Song) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongInfo(url: url)

        Session.sendRequest(request) { result in
            switch result {
            case .success(let song):
                success(song)
            case .failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }
}
