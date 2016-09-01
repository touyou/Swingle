//
//  RevisionStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

// MARK: - Revisions
public struct Revisions {
    public var revisions: [Revision]?
}

extension Revisions: Decodable {
    public static func decode(e: Extractor) throws -> Revisions {
        return try Revisions(
            revisions: decodeArray(e.rawValue)
        )
    }
}

// MARK: - Revision
public struct Revision {
    public var revision: UInt64
    public var updatedAt: NSDate
}

extension Revision: Decodable {
    public static func decode(e: Extractor) throws -> Revision {
        let transformer = TransformUtility()

        return try Revision(
            revision: e <| "revision",
            updatedAt: transformer.applyDate(e <| "updated_at")
        )
    }
}
