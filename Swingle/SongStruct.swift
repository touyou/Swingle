//
//  SongStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

public struct Song {

    public var url: NSURL
    public var id: UInt64
    public var title: String
    public var permalink: NSURL
    public var duration: Double
    public var rmsAmplitude: Double
    public var code: String
    public var artist: Artist
    public var createdAt: NSDate
    public var updatedAt: NSDate
    public var recognizedAt: NSDate

}

extension Song: Decodable {

    public static func decode(e: Extractor) throws -> Song {
        let transformer = TransformUtility()

        return try Song(
            url: transformer.applyURL(e <| "url"),
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
