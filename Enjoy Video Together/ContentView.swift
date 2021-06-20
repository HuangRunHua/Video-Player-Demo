//
//  ContentView.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    
    @EnvironmentObject var userDefault: UserDefault
    
    var body: some View {
        VStack {
            VideoPlayerView(video: userDefault.selectedVideo).aspectRatio(1.3, contentMode: .fit)
            VideoListView().environmentObject(userDefault)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserDefault())
    }
}
