//
//  RAMSelectionView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct RAMSelectionView: View {
    @State private var components: [RAM] = []
    var body: some View {
      ZStack {
        if components.isEmpty {
          ContentUnavailableView("No Components Here (Yet)", systemImage: "ladybug")
        }
        else {
          List {
            ForEach(components) { component in
              NavigationLink(destination: RAMDetailView(component: component)) {
                ComponentCardView(component: component)
              }
            }
          }
        }
      }
      .task {
        do {
          components = try await fetchRAM()
        } catch {
          print(error)
        }
      }
    }
  
  func fetchRAM() async throws -> [RAM] {
    let url = URL(string: "http://patersontech.duckdns.org:1338/ram")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode([RAM].self, from: data)
  }
  
}

#Preview {
    RAMSelectionView()
}
