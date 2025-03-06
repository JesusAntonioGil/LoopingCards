//
//  ContentView.swift
//  LoopingCards
//
//  Created by Jesus Antonio Gil on 5/3/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                GeometryReader {
                    let width = $0.size.width
                    
                    LoopingStack {
                        ForEach(images) { image in
                            Image(image.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipShape(.rect(cornerRadius: 30))
                                .padding(5)
                                .background {
                                    RoundedRectangle(cornerRadius: 35)
                                        .fill(.background)
                                }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(height: 120)
            }
            .navigationTitle("Looping Stack")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray.opacity(0.2))
        }
    }
}


#Preview {
    ContentView()
}
