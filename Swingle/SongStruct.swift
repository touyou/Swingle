//
//  SongStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

struct Song {

    var url: NSURL
    var id: UInt64
    var title: String
    var permalink: NSURL
    var duration: Double
    var rmsAmplitude: Double
    var code: String
    var artist: Artist
    var createdAt: NSDate
    var updatedAt: NSDate
    var recognizedAt: NSDate

}

extension Song: Decodable {

    static func decode(e: Extractor) throws -> Song {
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
