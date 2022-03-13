//
//  ContentView.swift
//  Landmarks
//
//  Created by Uzair Aftab on 11/03/2022.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            
            CircleImage()
                .offset(y : -130)
                .padding(.bottom, -130)
            
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                    .font(.title)
            
            
            HStack {
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
        }
        .padding()
            
        Spacer()
    }
}
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    // This is for the preview in AppCode
    #if DEBUG
    @objc class func injected() {
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            windowScene?.windows.first?.rootViewController =
                    UIHostingController(rootView: ContentView())
    }
    #endif
}
