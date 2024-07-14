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
      Text(component.name)
    }
}

#Preview {
    RAMDetailView(component: RAM(id: 1,
                                 name: "Example RAM",
                                 brand: "PatersonTech",
                                 description: "This is an example RAM. It is a placeholder for the real thing.",
                                 photourl: "http://tower.local:8043/images/00001.jpeg",
                                 microcenterlink: "",
                                 amazonlink: "",
                                 newegglink: "",
                                 bestbuylink: "",
                                 dims: "2",
                                 speed: "6000 MT/S",
                                 ddrclass: "DDR5",
                                 capacity: "64GB (32 X 2)"))
}
