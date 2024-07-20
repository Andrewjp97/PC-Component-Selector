//
//  Model.swift
//  PC Component Selector
//
//  Created by Andrew Paterson on 7/14/24.
//

import Foundation

public class PCComponent: Codable, Identifiable {
  
  public var id: Int
  public var title: String
  public var brand: String
  public var description: String
  public var photourls: [String]
  public var microcenterlink: String
  public var amazonlink: String
  public var newegglink: String
  public var bestbuylink: String
  
  init(id: Int,
       title: String,
       brand: String,
       description: String,
       photourls: [String],
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String) {
    self.id = id
    self.title = title
    self.brand = brand
    self.description = description
    self.photourls = photourls
    self.microcenterlink = microcenterlink
    self.amazonlink = amazonlink
    self.newegglink = newegglink
    self.bestbuylink = bestbuylink
  }
  
  public required init(from decoder: Decoder) throws {
    let container =   try decoder.container(keyedBy: CodingKeys.self)
    id =              try container.decode(Int.self, forKey: .id)
    title =           try container.decode(String.self, forKey: .title)
    brand =           try container.decode(String.self, forKey: .brand)
    description =     try container.decode(String.self, forKey: .description)
    photourls =       try container.decode([String].self, forKey: .photourls)
    microcenterlink = try container.decode(String.self, forKey: .microcenterlink)
    amazonlink =      try container.decode(String.self, forKey: .amazonlink)
    newegglink =      try container.decode(String.self, forKey: .newegglink)
    bestbuylink =     try container.decode(String.self, forKey: .bestbuylink)
  }
  
  
}

class RAM: PCComponent {
  
  public var dims: String
  public var speed: String
  public var ddrclass: String
  public var capacity: String
  public var caslatency: String
  public var timing: String
  public var rgb: String
  public var model: String
  public var voltage: String
  public var ecc: String
  public var color: String
  public var bufferedorregistered: String
  public var heatspreader: String
  
  enum CodingKeys: String, CodingKey {
    
    case dims
    case speed
    case ddrclass
    case capacity
    case caslatency
    case timing
    case rgb
    case model
    case voltage
    case ecc
    case color
    case bufferedorregistered
    case heatspreader
    
  }
  
  init(id: Int,
       title: String,
       brand: String,
       description: String,
       photourls: [String],
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       dims: String,
       speed: String,
       ddrclass: String,
       capacity: String,
       caslatency: String,
       timing: String,
       rgb: String,
       model: String,
       voltage: String,
       ecc: String,
       color: String,
       bufferedorregistered: String,
       heatspreader: String) {
    
    self.dims = dims
    self.speed = speed
    self.ddrclass = ddrclass
    self.capacity = capacity
    self.caslatency = caslatency
    self.timing = timing
    self.rgb = rgb
    self.model = model
    self.voltage = voltage
    self.ecc = ecc
    self.color = color
    self.bufferedorregistered = bufferedorregistered
    self.heatspreader = heatspreader
    super.init(id: id,
               title: title,
               brand: brand,
               description: description,
               photourls: photourls,
               microcenterlink: microcenterlink,
               amazonlink: amazonlink,
               newegglink: newegglink,
               bestbuylink: bestbuylink)
    
  }
  
  required init(from decoder: Decoder) throws {
    
    let container =         try decoder.container(keyedBy: CodingKeys.self)
    dims =                  try container.decode(String.self, forKey: .dims)
    speed =                 try container.decode(String.self, forKey: .speed)
    ddrclass =              try container.decode(String.self, forKey: .ddrclass)
    capacity =              try container.decode(String.self, forKey: .capacity)
    caslatency =            try container.decode(String.self, forKey: .caslatency)
    timing =                try container.decode(String.self, forKey: .timing)
    rgb =                   try container.decode(String.self, forKey: .rgb)
    model =                 try container.decode(String.self, forKey: .model)
    voltage =               try container.decode(String.self, forKey: .voltage)
    ecc =                   try container.decode(String.self, forKey: .ecc)
    color =                 try container.decode(String.self, forKey: .color)
    bufferedorregistered =  try container.decode(String.self, forKey: .bufferedorregistered)
    heatspreader =          try container.decode(String.self, forKey: .heatspreader)
    try super.init(from: decoder)
    
  }
  
  
}

class Motherboard: PCComponent {
  
  public var platform: String
  public var socket: String
  public var chipset: String
  public var model: String
  public var dimms: String
  public var maxsupportedmemory: String
  public var pcie: String
  public var sataports: String
  public var m2ports: String
  public var sataraid: String
  public var lan: String
  public var wifi: String
  public var reario: String
  public var otherconnectors: String
  public var formfactor: String
  public var dimensions: String
  public var memorysupport: String
  public var audio: String
  public var internalusb: String
  public var powerconnector: String
  public var bluetooth: String
  
  enum CodingKeys: String, CodingKey {
    
    case platform
    case socket
    case chipset
    case model
    case dimms
    case maxsupportedmemory
    case pcie
    case sataports
    case m2ports
    case sataraid
    case lan
    case wifi
    case reario
    case otherconnectors
    case formfactor
    case dimensions
    case memorysupport
    case audio
    case internalusb
    case powerconnector
    case bluetooth
    
  }
  
  init(id: Int,
       title: String,
       brand: String,
       description: String,
       photourls: [String],
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       platform: String,
       socket: String,
       chipset: String,
       model: String,
       dimms: String,
       maxsupportedmemory: String,
       pcie: String,
       sataports: String,
       m2ports: String,
       sataraid: String,
       lan: String,
       wifi: String,
       reario: String,
       otherconnectors: String,
       formfactor: String,
       dimensions: String,
       memorysupport: String,
       audio: String,
       internalusb: String,
       powerconnector: String,
       bluetooth: String) {
    
    self.platform = platform
    self.socket = socket
    self.chipset = chipset
    self.model = model
    self.dimms = dimms
    self.maxsupportedmemory = maxsupportedmemory
    self.pcie = pcie
    self.sataports = sataports
    self.m2ports = m2ports
    self.sataraid = sataraid
    self.lan = lan
    self.wifi = wifi
    self.reario = reario
    self.otherconnectors = otherconnectors
    self.formfactor = formfactor
    self.dimensions = dimensions
    self.memorysupport = memorysupport
    self.audio = audio
    self.internalusb = internalusb
    self.powerconnector = powerconnector
    self.bluetooth = bluetooth
    super.init(id: id,
               title: title,
               brand: brand,
               description: description,
               photourls: photourls,
               microcenterlink: microcenterlink,
               amazonlink: amazonlink,
               newegglink: newegglink,
               bestbuylink: bestbuylink)
    
  }
  
  required init(from decoder: Decoder) throws {
    
    let container =         try decoder.container(keyedBy: CodingKeys.self)
    platform =              try container.decode(String.self, forKey: .platform)
    socket =                try container.decode(String.self, forKey: .socket)
    chipset =               try container.decode(String.self, forKey: .chipset)
    model =                 try container.decode(String.self, forKey: .model)
    dimms =                 try container.decode(String.self, forKey: .dimms)
    maxsupportedmemory =    try container.decode(String.self, forKey: .maxsupportedmemory)
    pcie =                  try container.decode(String.self, forKey: .pcie)
    sataports =             try container.decode(String.self, forKey: .sataports)
    m2ports =               try container.decode(String.self, forKey: .m2ports)
    sataraid =              try container.decode(String.self, forKey: .sataraid)
    lan =                   try container.decode(String.self, forKey: .lan)
    wifi =                  try container.decode(String.self, forKey: .wifi)
    reario =                try container.decode(String.self, forKey: .reario)
    otherconnectors =       try container.decode(String.self, forKey: .otherconnectors)
    formfactor =            try container.decode(String.self, forKey: .formfactor)
    dimensions =            try container.decode(String.self, forKey: .dimensions)
    memorysupport =         try container.decode(String.self, forKey: .memorysupport)
    audio =                 try container.decode(String.self, forKey: .audio)
    internalusb =           try container.decode(String.self, forKey: .internalusb)
    powerconnector =        try container.decode(String.self, forKey: .powerconnector)
    bluetooth =             try container.decode(String.self, forKey: .bluetooth)
    try super.init(from: decoder)
    
  }
  
}

class CPU: PCComponent {
  
  public var model: String
  public var socket: String
  public var cores: String
  public var threads: String
  public var baseclock: String
  public var boostclock: String
  public var l1cache: String
  public var l2cache: String
  public var l3cache: String
  public var manufacturingprocess: String
  public var memorysupport: String
  public var eccsupport: String
  public var integratedgraphics: String
  public var memorychannels: String
  public var graphicsbasefrequency: String
  public var graphicsboostfrequency: String
  public var tdp: String
  public var thermalsolution: String
  
  enum CodingKeys: String, CodingKey {
    
    case model
    case socket
    case cores
    case threads
    case baseclock
    case boostclock
    case l1cache
    case l2cache
    case l3cache
    case manufacturingprocess
    case memorysupport
    case eccsupport
    case integratedgraphics
    case memorychannels
    case graphicsbasefrequency
    case graphicsboostfrequency
    case tdp
    case thermalsolution
    
  }
  
  init(id: Int,
       title: String,
       brand: String,
       description: String,
       photourls: [String],
       microcenterlink: String,
       amazonlink: String,
       newegglink: String,
       bestbuylink: String,
       model: String,
       socket: String,
       cores: String,
       threads: String,
       baseclock: String,
       boostclock: String,
       l1cache: String,
       l2cache: String,
       l3cache: String,
       manufacturingprocess: String,
       memorysupport: String,
       eccsupport: String,
       integratedgraphics: String,
       memorychannels: String,
       graphicsbasefrequency: String,
       graphicsboostfrequency: String,
       tdp: String,
       thermalsolution: String) {
    
    self.model = model
    self.socket = socket
    self.cores = cores
    self.threads = threads
    self.baseclock = baseclock
    self.boostclock = boostclock
    self.l1cache = l1cache
    self.l2cache = l2cache
    self.l3cache = l3cache
    self.manufacturingprocess = manufacturingprocess
    self.memorysupport = memorysupport
    self.eccsupport = eccsupport
    self.integratedgraphics = integratedgraphics
    self.memorychannels = memorychannels
    self.graphicsbasefrequency = graphicsbasefrequency
    self.graphicsboostfrequency = graphicsboostfrequency
    self.tdp = tdp
    self.thermalsolution = thermalsolution
    super.init(id: id,
               title: title,
               brand: brand,
               description: description,
               photourls: photourls,
               microcenterlink: microcenterlink,
               amazonlink: amazonlink,
               newegglink: newegglink,
               bestbuylink: bestbuylink)
    
  }
  
  required init(from decoder: Decoder) throws {
    
    let container =             try decoder.container(keyedBy: CodingKeys.self)
    model =                     try container.decode(String.self, forKey: .model)
    socket =                    try container.decode(String.self, forKey: .socket)
    cores =                     try container.decode(String.self, forKey: .cores)
    threads =                   try container.decode(String.self, forKey: .threads)
    baseclock =                 try container.decode(String.self, forKey: .baseclock)
    boostclock =                try container.decode(String.self, forKey: .boostclock)
    l1cache =                   try container.decode(String.self, forKey: .l1cache)
    l2cache =                   try container.decode(String.self, forKey: .l2cache)
    l3cache =                   try container.decode(String.self, forKey: .l3cache)
    manufacturingprocess =      try container.decode(String.self, forKey: .manufacturingprocess)
    memorysupport =             try container.decode(String.self, forKey: .memorysupport)
    eccsupport =                try container.decode(String.self, forKey: .eccsupport)
    integratedgraphics =        try container.decode(String.self, forKey: .integratedgraphics)
    memorychannels =            try container.decode(String.self, forKey: .memorychannels)
    graphicsbasefrequency =     try container.decode(String.self, forKey: .graphicsbasefrequency)
    graphicsboostfrequency =    try container.decode(String.self, forKey: .graphicsboostfrequency)
    tdp =                       try container.decode(String.self, forKey: .tdp)
    thermalsolution =           try container.decode(String.self, forKey: .thermalsolution)
    try super.init(from: decoder)
    
  }
  
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



