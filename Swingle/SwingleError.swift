//
//  SwingleError.swift
//  Swingle
//
//  Created by 藤井陽介 on 2016/09/01.
//  Copyright © 2016年 touyou. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct SwingleError: Error {
    let message: String

    init(statusCode: Int) {
        switch statusCode {
        case 100:
            message = "配信元の楽曲は、削除されているため埋め込むことができませんでした。"
        case 101:
            message = "配信元の楽曲は、許可されてないため埋め込むことができませんでした。"
        case 200:
            message = "音楽地図のダウンロードが中断しました。"
        case 201:
            message = "音楽地図のダウンロードが失敗しました。"
        case 300:
            message = "配信元の音源（mp3）のダウンロードに失敗しました。"
        case 404:
            message = "登録されていない楽曲です。"
        case 500:
            message = "不明なエラーが発生しました。"

        default:
            message = "Unknown Error code=\(statusCode)"
        }
    }
}
