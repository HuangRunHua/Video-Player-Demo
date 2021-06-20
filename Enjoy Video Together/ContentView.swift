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
    @State var isLandscape = false
    
    var body: some View {
        
        
        VStack {
            VideoPlayerView(video: userDefault.selectedVideo)
                //.aspectRatio(isLandscape ? nil : 1.3, contentMode: .fit)//, contentMode: isLandscape ? .fill : .fit)
            if !isLandscape {
                VideoListView().environmentObject(userDefault)
            } else {

            }
        }
        .onReceive(NotificationCenter.Publisher(center: .default, name: UIDevice.orientationDidChangeNotification)) { _ in
            let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            let windowScene = scene?.windows.first?.windowScene
            self.isLandscape = windowScene?.interfaceOrientation.isLandscape ?? false
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserDefault())
    }
}
