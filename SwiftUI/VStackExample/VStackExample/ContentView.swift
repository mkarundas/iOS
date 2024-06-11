//
//  ContentView.swift
//  VStackExample
//
//  Created by Arundas MK on 11/06/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button("♥️ - Hearts", action: {})
                .background(.yellow)
            Button("♣️ - Clubs", action: {})
                .background(.pink)
            Button("♠️ - Spades", action: {})
                .background(.mint)
            Button("♦️ - Diamonds", action: {})
                .background(.cyan)
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
