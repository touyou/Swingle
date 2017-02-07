//
//  NoteStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

// MARK: - Notes
public struct Notes {
    public var notes: [Note]?
}

extension Notes: Decodable {
    public static func decode(_ e: Extractor) throws -> Notes {
        return try Notes(
            notes: e <||? "notes"
        )
    }
}

// MARK: - Note
public struct Note {
    public var index: Int
    public var start: UInt64
    public var duration: UInt64
    public var pitch: Double
    public var number: Int
}

extension Note: Decodable {
    public static func decode(_ e: Extractor) throws -> Note {
        return try Note(
            index: e <| "index",
            start: e <| "start",
            duration: e <| "duration",
            pitch: e <| "pitch",
            number: e <| "number"
        )
    }
}
