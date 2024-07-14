//
//  GPUSelectionView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct GPUSelectionView: View {
  @State private var components: [GPU] = []
    var body: some View {
      ZStack {
        if components.isEmpty {
          ContentUnavailableView("No Components Here (Yet)", systemImage: "ladybug")
        }
        else {
          List {
            ForEach(components) { component in
              NavigationLink(destination: GPUDetailView(component: component)) {
                ComponentCardView(component: component)
              }
            }
          }
        }
      }
      .task {
        do {
          components = try await fetchGPUS()
        } catch {
          print(error)
        }
      }
    }
  
  func fetchGPUS() async throws -> [GPU] {
    let url = URL(string: "http://patersontech.duckdns.org:1338/gpu")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode([GPU].self, from: data)
  }
}

#Preview {
    GPUSelectionView()
}
