//
//  CPUSelectionView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct CPUSelectionView: View {
  @State private var components: [CPU] = []
    var body: some View {
      ZStack {
        if components.isEmpty {
          ContentUnavailableView("No Components Here (Yet)", systemImage: "ladybug")
        }
        else {
          List {
            ForEach(components) { component in
              NavigationLink(destination: CPUDetailView(component: component)) {
                ComponentCardView(component: component)
              }
            }
          }
        }
      }
      .task {
        do {
          components = try await fetchCPUS()
        } catch {
          print(error)
        }
      }
    }
  
  func fetchCPUS() async throws -> [CPU] {
    let url = URL(string: "http://patersontech.duckdns.org:1338/cpu")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode([CPU].self, from: data)
  }
  
}

#Preview {
    CPUSelectionView()
}
