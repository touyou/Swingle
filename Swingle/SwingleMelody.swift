//
//  SwingleMelody.swift
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
    GET song/melody.json

    Example:

        Swingle().getSongMelodyInfo("URL", success: { melody in
            print("first pitch: \(melody.notes?[0].pitch)")
        })
    */
    func getSongMelodyInfo(_ url: String, revision: Int? = nil, success: @escaping (Notes) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetSongMelodyInfo(url: url, revision: revision)

        Session.sendRequest(request) { result in
            switch result {
            case .success(let melody):
                success(melody)
            case .failure(let error):
                failure?(error)
                print("error: \(SwingleError(statusCode: error._code).message)")
            }
        }
    }


    /**
    GET song/melody_revision.json

    Example:

        Swingle().getMelodyRevisions("URL", success: { revisions in
            print("first melody revision: \(revisions.revisions?[0].updatedAt)")
        })
     */
    func getMelodyRevisions(_ url: String, success: @escaping (Revisions) -> Void, failure: ((SessionTaskError) -> Void)? = nil) {
        let request = GetMelodyRevisions(url: url)

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

    /**
    */
    func playMelody(_ url: String, failure: ((SessionTaskError) -> Void)? = nil) {
        self.getSongMelodyInfo(url, success: { notes in

            }, failure: failure)
    }
}
