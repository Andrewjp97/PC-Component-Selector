//
//  ComponentCardView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct ComponentCardView: View {
  var component: PCComponent
  var body: some View {
    VStack {
      Text(component.name)
      AsyncImage(url: URL(string: component.photourl1)){ result in
        result.image?
          .resizable()
          .scaledToFill()
      }
      .frame(width: 200, height: 200)
    }
  }
}

#Preview {
  ComponentCardView(component: MockData().mockComponent)
}
