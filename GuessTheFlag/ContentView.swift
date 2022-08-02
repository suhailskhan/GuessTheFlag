//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Suhail Khan on 7/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            
            Button {
                showingAlert = true
            } label: {
                Label("Show Alert", systemImage: "info.circle")
                    .foregroundStyle(RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 10, endRadius: 35))
            }
            .buttonStyle(.bordered)
            .padding(50)
            .background(.ultraThinMaterial)
            .alert("Important message", isPresented: $showingAlert) {
                Button("Delete", role: .destructive) { print("Deleted") }
                Button("Cancel", role: .cancel) { print("Cancelled") }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
