//
//  CPUDetailView.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import SwiftUI

struct CPUDetailView: View {
  var component: CPU
    var body: some View {
      ScrollView {
        VStack {
          ScrollView(.horizontal) {
            HStack {
              ConditionalPhotoView(component: component)
            }
            .scrollTargetLayout()
          }
          .scrollTargetBehavior(.viewAligned)
          Text(component.name)
            .font(.title)
          Text(component.brand)
            .font(.title2)
          Text(component.description)
            .font(.body)
          HStack {
            Text("Cores: \(component.cores)")
            Spacer()
            Text("Threads: \(component.threads)")
          }
          HStack {
            Text("Socket: \(component.socket)")
            Spacer()
            Text("TDP: \(component.tdp)")
          }
          HStack {
            Text("Base Clock: \(component.baseclock)")
            Spacer()
            Text("Boost Clock \(component.boostclock)")
          }
          HStack {
            Text("Integrated Graphics: \(component.integratedgraphics)")
            Spacer()
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
  CPUDetailView(component: MockData().mockCPU)
}
