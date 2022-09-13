//
//  ContentView.swift
//  webp_poc
//
//  Created by Shaman King on 9/9/22.
//

import SwiftUI
import SDWebImage
import SDWebImageWebPCoder
import SDWebImageSwiftUI

struct ContentView: View {
    @State private var showText = false;
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Group {
                Text("GIF")
                AnimatedImage(url: URL(string: "https://www.tutorialexample.com/wp-content/uploads/2020/09/gif-test.gif"),
                              options: [.waitStoreCache])
                    .resizable()
                    .scaledToFit()
                
                
                Text("WEBP")
                AnimatedImage(url: URL(string: "https://www.tutorialexample.com/wp-content/uploads/2020/09/gif-test-2.webp"),
                              options: [.waitStoreCache])
                .resizable()
                .scaledToFit()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
        

    }
    
   
}
