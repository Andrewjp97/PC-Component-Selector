//
//  MockData.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import Foundation

struct MockData {
  
  public let mockComponent = PCComponent(id: 1,
                                         title: "Example PC Component",
                                         brand: "PatersonTech",
                                         description: "This is an example PC component. It is a placeholder for the real thing.",
                                         photourls: ["http://patersontech.duckdns.org:8043/images/00001.jpeg",
                                                     "http://patersontech.duckdns.org:8043/images/00002.jpeg",
                                                     "http://patersontech.duckdns.org:8043/images/00003.jpeg"],
                                         microcenterlink: "test",
                                         amazonlink: "test",
                                         newegglink: "test",
                                         bestbuylink: "test")
  
  public let mockRam = RAM(id: 1,
                           title: "Example RAM",
                           brand: "PatersonTech",
                           description: "This is an example RAM. It is a placeholder for the real thing.",
                           photourls: ["http://patersontech.duckdns.org:8043/images/00001.jpeg",
                                       "http://patersontech.duckdns.org:8043/images/00002.jpeg",
                                       "http://patersontech.duckdns.org:8043/images/00003.jpeg"],
                           microcenterlink: "test",
                           amazonlink: "test",
                           newegglink: "test",
                           bestbuylink: "test",
                           dims: "2",
                           speed: "6000",
                           ddrclass: "DDR5",
                           capacity: "64GB",
                           caslatency: "32",
                           timing: "32-32-32-32",
                           rgb: "Yes",
                           model: "Example Model",
                           voltage: "1.2V",
                           ecc: "No",
                           color: "Black",
                           bufferedorregistered: "Unbuffered",
                           heatspreader: "Yes")
  
//  public let mockMotherboard = Motherboard()
//  
//  public let mockCPU = CPU()
//                           
//  public let mockGPU = GPU()
  
}
