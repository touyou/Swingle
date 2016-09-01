//
//  ArtistStruct.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

struct Artist {
    var id: UInt64
    var name: String
}

extension Artist: Decodable {

    static func decode(e: Extractor) throws -> Artist {
        return try Artist(
            id: e <| "id",
            name: e <| "name"
        )
    }

}
