//
//  RAMDetailView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct RAMDetailView: View {
  var component: RAM
    var body: some View {
      ScrollView {
        VStack {
          ScrollView(.horizontal) {
            HStack {
              ComponentPhotoView(component: component)
            }
            .scrollTargetLayout()
          }
          .scrollTargetBehavior(.viewAligned)
          Text(component.title)
            .font(.title)
          Text(component.brand)
            .font(.title2)
          Text(component.description)
            .font(.body)
          HStack {
            Text("Capacity: \(component.capacity)")
            Spacer()
            Text("Speed: \(component.speed)")
          }
          HStack {
            Text("DDR Class: \(component.ddrclass)")
            Spacer()
            Text("DIMMs: \(component.dims)")
          }
          ConditionalLinkView(component: component)
          Button {
            // TODO: Add Component to selected components
          } label: {
            Text("Add To Build")
          }
          .buttonStyle(.borderedProminent)
          .padding(.top, 40)
          
        }
        .padding([.leading, .trailing])
      }
    }
      
}

#Preview {
  RAMDetailView(component: MockData().mockRam)
}
