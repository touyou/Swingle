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
