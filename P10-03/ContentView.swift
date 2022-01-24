//
//  ContentView.swift
//  P10-03
//
//  Created by Vahtee Boo on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://cineuropa.org/imgCache/2018/12/11/1544541049322_0620x0435_0x0x0x0_1573329743140.jpg"),scale: 2)
            
            AsyncImage(url: URL(string: "https://cineuropa.org/imgCache/2018/12/11/1544541049322_0620x0435_0x0x0x0_1573329743140.jpg")) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 150)
        }
        
        AsyncImage(url: URL(string: "https://hws.dev/img/bad/png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
