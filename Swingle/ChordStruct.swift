//
//  ChordStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

// MARK: - Chords
public struct Chords {
    public var chords: [Chord]?
}

extension Chords: Decodable {
    public static func decode(_ e: Extractor) throws -> Chords {
        return try Chords(
            chords: e <||? "chords"
        )
    }
}

// MARK: - Chord
public struct Chord {
    public var index: Int
    public var start: UInt64
    public var duration: UInt64
    public var name: String
}

extension Chord: Decodable {
    public static func decode(_ e: Extractor) throws -> Chord {
        return try Chord(
            index: e <| "index",
            start: e <| "start",
            duration: e <| "duration",
            name: e <| "name"
        )
    }
}
