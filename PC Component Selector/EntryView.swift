//
//  EntryView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct EntryView: View {
  @State private var components: [PCComponent] = []
  var body: some View {
    ZStack {
      TabView {
        ChosenComponentView()
          .tabItem {
            Label("Build", systemImage: "pc")
          }
        ComponentSelectionView()
          .tabItem {
            Label("Parts", systemImage: "cpu")
          }
      }
    }
  }
}

#Preview {
  EntryView()
}
