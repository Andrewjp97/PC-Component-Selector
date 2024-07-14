//
//  MotherboardSelectionView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct MotherboardSelectionView: View {
  @State private var components: [Motherboard] = []
  var body: some View {
    ZStack {
      if components.isEmpty {
        ContentUnavailableView("No Components Here (Yet)", systemImage: "ladybug")
      }
      else {
        List {
          ForEach(components) { component in
            NavigationLink(destination: MotherboardDetailView(component: component)) {
              ComponentCardView(component: component)
            }
          }
        }
      }
    }
    .task {
      do {
        components = try await fetchMotherboards()
      } catch {
        print(error)
      }
    }
  }
  
  func fetchMotherboards() async throws -> [Motherboard] {
    let url = URL(string: "http://patersontech.duckdns.org:1338/motherboard")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode([Motherboard].self, from: data)
  }
}


#Preview {
  MotherboardSelectionView()
}
