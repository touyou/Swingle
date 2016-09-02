//
//  ChorusStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

// MARK: - Chorus
public struct Chorus {
    public var chorusSegments: [Segment]?
    public var repeatSegments: [Segment]?
}

extension Chorus: Decodable {
    public static func decode(e: Extractor) throws -> Chorus {
        return try Chorus(
            chorusSegments: e <||? "chorusSegments",
            repeatSegments: e <||? "repeatSegments"
        )
    }
}

// MARK: - Segment
public struct Segment {
    public var index: Int?
    public var duration: UInt64?
    public var repeats: [Beat]?
}

extension Segment: Decodable {
    public static func decode(e: Extractor) throws -> Segment {
        return try Segment(
            index: e <|? "index",
            duration: e <|? "duration",
            repeats: e <||? "repeats"
        )
    }
}
