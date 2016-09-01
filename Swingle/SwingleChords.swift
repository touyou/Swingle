//
//  SwingleChords.swift
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
    func getSongChordInfo(url: String, revision: Int? = nil, success: (Chords) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongChordInfo(url: url, revision: revision)

        Session.sendRequest(request) { result in
            switch result {
            case .Success(let chords):
                success(chords)
            case .Failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }

    func getChordRevisions(url: String, success: (Revisions) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetChordRevisions(url: url)

        Session.sendRequest(request) { result in
            switch result {
            case .Success(let revisions):
                success(revisions)
            case .Failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }
}
