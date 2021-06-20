//
//  UserDefault.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import Foundation
import Combine

class UserDefault: NSObject, ObservableObject {
    @Published var selectedVideo: Video = Video.allVideos[0]
    
    
    func changeSelectedVideo(video: Video) {
        self.selectedVideo = video
    }
}
