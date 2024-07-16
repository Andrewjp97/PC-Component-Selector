//
//  GPUDetailView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct GPUDetailView: View {
  var component: GPU
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
//          HStack {
//            Text("Chipset: \(component.chipset)")
//            Spacer()
//          }
//          HStack {
//            Text("Memory: \(component.memory)")
//            Spacer()
//            Text("TDP: \(component.tdp)")
//          }
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

//#Preview {
//    GPUDetailView(component: MockData().mockGPU)
//}
