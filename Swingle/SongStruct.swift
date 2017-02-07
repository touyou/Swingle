//
//  SongStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

// MARK: - Songs
public struct Songs {
    public var songs: [Song]?
}

extension Songs: Decodable {
    public static func decode(_ e: Extractor) throws -> Songs {
        return try Songs(
            songs: decodeArray(e.rawValue)
        )
    }
}

// MARK: - Song
public struct Song {
    public var url: URL?
    public var id: UInt64
    public var title: String
    public var permalink: URL
    public var duration: Double
    public var rmsAmplitude: Double
    public var code: String
    public var artist: Artist
    public var createdAt: Date
    public var updatedAt: Date
    public var recognizedAt: Date
}

// MARK: - Himotoki Decodable
extension Song: Decodable {
    public static func decode(_ e: Extractor) throws -> Song {
        let transformer = TransformUtility()

        return try Song(
            url: transformer.applyURL(e <|? "url" ?? ""),
            id: e <| "id",
            title: e <| "title",
            permalink: transformer.applyURL(e <| "permalink"),
            duration: e <| "duration",
            rmsAmplitude: e <| "rmsAmplitude",
            code: e <| "code",
            artist: e <| "artist",
            createdAt: transformer.applyDate(e <| "createdAt"),
            updatedAt: transformer.applyDate(e <| "updatedAt"),
            recognizedAt: transformer.applyDate(e <| "recognizedAt")
        )
    }
}
