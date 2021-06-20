//
//  Enjoy_Video_TogetherApp.swift
//  Enjoy Video Together
//
//  Created by Runhua Huang on 2021/6/20.
//

import SwiftUI

@main
struct Enjoy_Video_TogetherApp: App {
    var body: some Scene {
        
        let userDefault = UserDefault()
        
        WindowGroup {
            ContentView().environmentObject(userDefault)
        }
    }
}
