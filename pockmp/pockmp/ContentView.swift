//
//  ContentView.swift
//  pockmp
//
//  Created by Luís Eduardo Marinho Fernandes on 17/03/25.
//

import AiqShared
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(Greeting().greet())")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
