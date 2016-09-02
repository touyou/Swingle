//
//  SwingleChorus.swift
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
    GET song/chorus.json

    Example:

        Swingle().getSongChorusInfo("URL", success: { chorus in
            print("first chorus duration: \(chorus.chorusSegments?[0].duration)")
        })
    */
    func getSongChorusInfo(url: String, revision: Int? = nil, success: (Chorus) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongChorusInfo(url: url, revision: revision)

        Session.sendRequest(request) { result in
            switch result {
            case .Success(let chorus):
                success(chorus)
            case .Failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }

    /**
    GET song/chorus_revision.json

    Example:

        Swingle().getChorusRevisions("URL", success: { revisions in
            print("first chorus revision: \(revisions.revisions?[0].updatedAt)")
        })
    */
    func getChorusRevisions(url: String, success: (Revisions) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetChorusRevisions(url: url)

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
