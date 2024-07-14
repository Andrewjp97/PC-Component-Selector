//
//  Model.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import Foundation

public class PCComponent: Codable, Identifiable {
  
  public var id: Int
  public var name: String
  public var brand: String
  public var description: String
  public var photourl1: String
  public var photourl2: String
  public var photourl3: String
  public var photourl4: String
  public var photourl5: String
  public var microcenterlink: String
  public var amazonlink: String
  public var newegglink: String
  public var bestbuylink: String
  
  public init(id: Int,
              name: String,
              brand: String,
              description: String,
              photourl1: String,
              photourl2: String,
              photourl3: String,
              photourl4: String,
              photourl5: String,
              microcenterlink: String,
              amazonlink: String,
              newegglink: String,
              bestbuylink: String) {
    self.id = id
    self.name = name
    self.brand = brand
    self.description = description
    self.photourl1 = photourl1
    self.photourl2 = photourl2
    self.photourl3 = photourl3
    self.photourl4 = photourl4
    self.photourl5 = photourl5
    self.microcenterlink = microcenterlink
    self.amazonlink = amazonlink
    self.newegglink = newegglink
    self.bestbuylink = bestbuylink
  }
  
  required public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
    self.brand = try container.decode(String.self, forKey: .brand)
    self.description = try container.decode(String.self, forKey: .description)
    self.photourl1 = try container.decode(String.self, forKey: .photourl1)
    self.photourl2 = try container.decode(String.self, forKey: .photourl2)
    self.photourl3 = try container.decode(String.self, forKey: .photourl3)
    self.photourl4 = try container.decode(String.self, forKey: .photourl4)
    self.photourl5 = try container.decode(String.self, forKey: .photourl5)
    self.microcenterlink = try container.decode(String.self, forKey: .microcenterlink)
    self.amazonlink = try container.decode(String.self, forKey: .amazonlink)
    self.newegglink = try container.decode(String.self, forKey: .newegglink)
    self.bestbuylink = try container.decode(String.self, forKey: .bestbuylink)
  }
  
}

class RAM: PCComponent {
  
  public var dims: String
  public var speed: String
  public var ddrclass: String
  public var capacity: String
  
  enum CodingKeys: String, CodingKey {
    case dims
    case speed
    case ddrclass
    case capacity
  }
  
  init(id: Int,
       name: String,
       brand: String,
       description: String,
       photourl1: String,
       photourl2: String,
       photourl3: String,
       photourl4: String,
       photourl5: String,
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       dims: String,
       speed: String,
       ddrclass: String,
       capacity: String) {
    self.dims = dims
    self.speed = speed
    self.ddrclass = ddrclass
    self.capacity = capacity
    super.init(id: id,
               name: name,
               brand: brand,
               description: description,
               photourl1: photourl1,
               photourl2: photourl2,
               photourl3: photourl3,
               photourl4: photourl4,
               photourl5: photourl5,
               microcenterlink: microcenterlink,
               amazonlink: amazonlink,
               newegglink: newegglink,
               bestbuylink: bestbuylink)
  }
  
  required init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.dims = try container.decode(String.self, forKey: .dims)
    self.speed = try container.decode(String.self, forKey: .speed)
    self.ddrclass = try container.decode(String.self, forKey: .ddrclass)
    self.capacity = try container.decode(String.self, forKey: .capacity)
    try super.init(from: decoder)
  }
  
}

class Motherboard: PCComponent {
  
  public var socket: String
  public var formfactor: String
  public var chipset: String
  public var memorytype: String
  public var memoryslots: String
  public var pcieslots: String
  public var sataports: String
  public var m2slots: String
  
  enum CodingKeys: String, CodingKey {
    case socket
    case formfactor
    case chipset
    case memorytype
    case memoryslots
    case pcieslots
    case sataports
    case m2slots
  }
  
  init(id: Int,
       name: String,
       brand: String,
       description: String,
       photourl1: String,
       photourl2: String,
       photourl3: String,
       photourl4: String,
       photourl5: String,
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       socket: String,
       formfactor: String,
       chipset: String,
       memorytype: String,
       memoryslots: String,
       pcieslots: String,
       sataports: String,
       m2slots: String) {
    self.socket = socket
    self.formfactor = formfactor
    self.chipset = chipset
    self.memorytype = memorytype
    self.memoryslots = memoryslots
    self.pcieslots = pcieslots
    self.sataports = sataports
    self.m2slots = m2slots
    super.init(id: id,
               name: name,
               brand: brand,
               description: description,
               photourl1: photourl1,
               photourl2: photourl2,
               photourl3: photourl3,
               photourl4: photourl4,
               photourl5: photourl5,
               microcenterlink: microcenterlink,
               amazonlink: amazonlink,
               newegglink: newegglink,
               bestbuylink: bestbuylink)
  }
  
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.socket = try container.decode(String.self, forKey: .socket)
    self.formfactor = try container.decode(String.self, forKey: .formfactor)
    self.chipset = try container.decode(String.self, forKey: .chipset)
    self.memorytype = try container.decode(String.self, forKey: .memorytype)
    self.memoryslots = try container.decode(String.self, forKey: .memoryslots)
    self.pcieslots = try container.decode(String.self, forKey: .pcieslots)
    self.sataports = try container.decode(String.self, forKey: .sataports)
    self.m2slots = try container.decode(String.self, forKey: .m2slots)
    try super.init(from: decoder)
  }
  
}

class CPU: PCComponent {
  
}

class GPU: PCComponent {
  
}

class Storage: PCComponent {
  
}

class PSU: PCComponent {
  
}

class Case: PCComponent {
  
}

class Cooler: PCComponent {
  
}

class Monitor: PCComponent {
  
}

class Keyboard: PCComponent {
  
}

class Mouse: PCComponent {
  
}

class Headset: PCComponent {
  
}

class Microphone: PCComponent {
  
}

class Speaker: PCComponent {
  
}

class Webcam: PCComponent {
  
}

class CaptureCard: PCComponent {
  
}



