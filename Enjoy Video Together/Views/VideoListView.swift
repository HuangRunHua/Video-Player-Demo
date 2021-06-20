//
//  VideoListView.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import SwiftUI

struct VideoListView: View {
    
    @EnvironmentObject var userDefault: UserDefault
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("More Videos")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .black, design: .rounded))
            List {
                
                ForEach(Video.allVideos, id: \.id) { video in
                    VideoCell(video: video)
                        .environmentObject(userDefault)
                        .padding(.leading, -13)
                }
            }
            .padding(.top, -20)
            .padding([.leading, .trailing], -20)
        }
    }
    
    
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView().environmentObject(UserDefault())
    }
}
