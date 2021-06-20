//
//  VideoPlayerView.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {

    var video: Video
    @State var isLandscape = false
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: video.title, withExtension: ".mp4")!))
            .aspectRatio(1.5, contentMode: .fit)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(video: Video.allVideos[0])
    }
}
