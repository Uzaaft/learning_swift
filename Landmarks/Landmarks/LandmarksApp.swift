//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Uzair Aftab on 11/03/2022.
//
//

import SwiftUI

@main
struct LandmarksApp: App {
    // This is for hot reloading in appcode
    // start
    /* init() {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    } */
    // end
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
