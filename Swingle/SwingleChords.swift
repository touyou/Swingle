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
    /**
    GET song/chord.json

    Example:

        Swingle().getSongChordInfo("URL", success: { chords in
            print("first chord: \(chords.chords?[0].name)")
        })
     */
    func getSongChordInfo(_ url: String, revision: Int? = nil, success: @escaping (Chords) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongChordInfo(url: url, revision: revision)

        Session.sendRequest(request) { result in
            switch result {
            case .success(let chords):
                success(chords)
            case .failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }

    /**
    GET song/chord_revisions.json

    Example:

        Swingle().getChordRevisions("URL", success: { revisions in
            print("first chord revision: \(revisions.revisions?[0].updatedAt)")
        })
    */
    func getChordRevisions(_ url: String, success: @escaping (Revisions) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetChordRevisions(url: url)

        Session.sendRequest(request) { result in
            switch result {
            case .success(let revisions):
                success(revisions)
            case .failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }
}
