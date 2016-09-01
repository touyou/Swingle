//
//  TransformUtility.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import Himotoki

struct TransformUtility {

    let URLTransformer = Transformer<String, NSURL> { URLString throws -> NSURL in
        guard let URL = NSURL(string: URLString) else {
            throw customError("Invalid URL string: \(URLString)")
        }

        return URL
    }

    func applyURL(string: String) throws -> NSURL {
        return try URLTransformer.apply(string)
    }

    let DateTransformer = Transformer<String, NSDate> { DateString throws -> NSDate in
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        guard let Date = formatter.dateFromString(DateString) else {
            throw customError("Invalid Date string: \(DateString)")
        }

        return Date
    }

    func applyDate(string: String) throws -> NSDate {
        return try DateTransformer.apply(string)
    }

}
