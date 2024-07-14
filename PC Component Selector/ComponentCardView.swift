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
      AsyncImage(url: URL(string: component.photourl)){ result in
        result.image?
          .resizable()
          .scaledToFill()
      }
      .frame(width: 200, height: 200)
    }
  }
}

#Preview {
  ComponentCardView(component: PCComponent(id: 1,
                                           name: "Example PC Component",
                                           brand: "PatersonTech",
                                           description: "This is an example PC component. It is a placeholder for the real thing.",
                                           photourl: "http://tower.local:8043/images/00001.jpeg",
                                           microcenterlink: "",
                                           amazonlink: "",
                                           newegglink: "",
                                           bestbuylink: ""))
}
