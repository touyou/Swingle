//
//  SwingleSearch.swift
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
    GET songs/search.json

    Example:

        Swingle().searchSong("", success: { songs in
            print("first song name: \(songs.songs?[0].title)")
        })
     */
    func searchSong(_ q: String, success: @escaping (Songs) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = SearchSong(q: q)

        Session.send(request) { result in
            switch result {
            case .success(let songs):
                success(songs)
            case .failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }
}
