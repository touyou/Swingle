//
//  Swingle.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

public class Swingle {

    public init() {}

    // MARK: - Get song information
    struct GetSongInfo: SwingleRequest {
        let url: String

        // MARK: RequestType
        typealias Response = Song

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url
            ]
        }
    }

    // MARK: - Get song beats map
    struct GetSongBeatsInfo: SwingleRequest {
        let url: String
        let revision: Int?

        // MARK: RequestType
        typealias Response = Beats

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/beat.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
                "revision": String(revision),
            ]
        }
    }

    // MARK: - Get beat revisions
    struct GetBeatRevisions: SwingleRequest {
        let url: String

        // MARK: RequestType
        typealias Response = Revisions

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/beat_revisions.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
            ]
        }
    }

    // MARK: - Gets song chord map
    struct GetSongChordInfo: SwingleRequest {
        let url: String
        let revision: Int?

        // MARK: RequestType
        typealias Response = Chords

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/chord.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
                "revision": String(revision),
            ]
        }
    }

    // MARK: - Get chord revisions
    struct GetChordRevisions: SwingleRequest {
        let url: String

        // MARK: RequestType
        typealias Response = Revisions

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/chord_revisions.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
            ]
        }
    }

    // MARK: - Gets song melody map
    struct GetSongMelodyInfo: SwingleRequest {
        let url: String
        let revision: Int?

        // MARK: RequestType
        typealias Response = Notes

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/melody.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
                "revision": String(revision),
            ]
        }
    }

    // MARK: - Get melody revisions
    struct GetMelodyRevisions: SwingleRequest {
        let url: String

        // MARK: RequestType
        typealias Response = Revisions

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/melody_revisions.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
            ]
        }
    }

    // MARK: - Gets song chorus map
    struct GetSongChorusInfo: SwingleRequest {
        let url: String
        let revision: Int?

        // MARK: RequestType
        typealias Response = Chorus

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/chorus.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
                "revision": String(revision),
            ]
        }
    }

    // MARK: - Get chorus revisions
    struct GetChorusRevisions: SwingleRequest {
        let url: String

        // MARK: RequestType
        typealias Response = Revisions

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/chorus_revisions.json"
        }

        var parameters: AnyObject? {
            return [
                "url": url,
            ]
        }
    }

    // MARK: - Search songs
    struct SearchSong: SwingleRequest {
        let q: String

        // MARK: RequestType
        typealias Response = Songs

        var method: HTTPMethod {
            return .GET
        }

        var path: String {
            return "/song/search.json"
        }

        var parameters: AnyObject? {
            return [
                "q": q,
            ]
        }
    }
}
