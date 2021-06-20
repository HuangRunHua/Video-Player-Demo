//
//  VideoCell.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import SwiftUI
import UIKit
import Combine

struct VideoCell: View {
    
    var video: Video
    
    @EnvironmentObject var userDefault: UserDefault
    
    var videoIndex: Int {
        Video.allVideos.firstIndex(where: { $0.id == video.id })!
    }
    
    var body: some View {
        //(alignment: .top , spacing: 10)
        HStack {
            video.image
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(5)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.title)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.leading, 5)
                Text(video.author)
                    .foregroundColor(.subtitleColor)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .opacity(0.6)
                    .padding(.top, -8)
                    //.padding(.bottom, 12)
                    .padding(.leading, 5)
                Text(video.subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.leading, 5)
                                }
        }.onTapGesture {
            updateSelectedVideo(at: self.videoIndex)
            print("userDefault in videoCell = \(userDefault.selectedVideo.title)")
        }
        
    }
    
    func updateSelectedVideo(at index: Int) {
        print("selected video = \(Video.allVideos[index].title)")
        userDefault.changeSelectedVideo(video: Video.allVideos[index])
    }
    
}

struct VideoCell_Previews: PreviewProvider {
    static var previews: some View {
        VideoCell(video: Video.allVideos[1])
        
    }
}
