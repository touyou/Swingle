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
    /**
    GET song/beat.json

    Example:

        Swingle().getSongBeatsInfo("URL", success: { beats in
            print("first beat position: \(beats.beats?[0].position)")
            print("first bar start: \(beats.bars?[0].start)")
        })
    */
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

    /**
    GET song/beat_revisions.json

    Example:

        Swingle().getBeatRevisions("URL", success: { revisions in
            print("first beat revision: \(revisions.revisions?[0].updatedAt)")
        })

    */
    func getBeatRevisions(url: String, success: (Revisions) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetBeatRevisions(url: url)

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
