//
//  BeatStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

// MARK: - Beats
public struct Beats {
    public var beats: [Beat]?
    public var bars: [Bar]?
}

// MARK: Himotoki Decodable
extension Beats: Decodable {
    public static func decode(e: Extractor) throws -> Beats {
        return try Beats(
            beats: e <||? "beats",
            bars: e <||? "bars"
        )
    }
}

// MARK: - Beat
public struct Beat {
    public var index: UInt32?
    public var start: UInt64?
    public var position: Int?
}

// MARK: Himotoki Decodable
extension Beat: Decodable {
    public static func decode(e: Extractor) throws -> Beat {
        return try Beat(
            index: e <|? "index",
            start: e <|? "start",
            position: e <|? "position"
        )
    }
}

// MARK: - Bar
public struct Bar {
    public var start: UInt64
    public var beats: [Beat]?
    public var index: Int
}

// MARK: Himotoki Decodable
extension Bar: Decodable {
    public static func decode(e: Extractor) throws -> Bar {
        return try Bar(
            start: e <| "start",
            beats: e <||? "beats",
            index: e <| "index"
        )
    }
}
