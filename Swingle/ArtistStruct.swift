//
//  ArtistStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

public struct Artist {
    public var id: UInt64
    public var name: String
}

extension Artist: Decodable {

    public static func decode(e: Extractor) throws -> Artist {
        return try Artist(
            id: e <| "id",
            name: e <| "name"
        )
    }

}
