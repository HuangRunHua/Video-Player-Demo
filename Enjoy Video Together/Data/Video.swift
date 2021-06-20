//
//  Video.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import Foundation
import UIKit
import SwiftUI

class Video: Identifiable, ObservableObject {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: Image
    let author: String
    
    
    init(title: String, subtitle: String, image: Image, author: String) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.author = author
    }
    
    static let allVideos = [
        Video(title: "The Truth That You Leave", subtitle: "梦是没有边界的地图", image: .leaveImage, author: "@FreyaPiano"),
        Video(title: "起风了", subtitle: "眨眼的瞬间，回忆吹了进来", image: .windyImage, author: "@-海hai-"),
        Video(title: "那年记忆中的追寻", subtitle: "收到你寄来的雨，记起那一年的潮湿", image: .pursuitImage, author: "@Pianoboy"),
        Video(title: "Flower Dance", subtitle: "来自B-612星球的思念", image: .flowerImage, author: "up初相识"),
        Video(title: "Merry Christmas Mr. Lawrence", subtitle: "深情若是一桩悲剧，必得以死来句读", image: .merryImage, author: "@坂本龙一"),
        Video(title: "有点甜", subtitle: "那些落在云彩里的爱心，每一个都是我对你没藏住的怦然心动", image: .sweetImage, author: "@动漫唯美风")
    ]
}
