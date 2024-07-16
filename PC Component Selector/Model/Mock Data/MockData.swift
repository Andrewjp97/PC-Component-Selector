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
  
  public let mockMotherboard = Motherboard(id: 1,
                                           title: "Example Motherboard",
                                           brand: "PatersonTech",
                                           description: "This is an example Motherboard. It is a placeholder for the real thing.",
                                           photourls: ["http://patersontech.duckdns.org:8043/images/00009.jpeg",
                                                       "http://patersontech.duckdns.org:8043/images/0000A.jpeg",
                                                       "http://patersontech.duckdns.org:8043/images/0000B.jpeg"],
                                           microcenterlink: "test",
                                           amazonlink: "test",
                                           newegglink: "test",
                                           bestbuylink: "test",
                                           platform: "AMD",
                                           socket: "AM4",
                                           chipset: "B550",
                                           model: "Example Model",
                                           dimms: "4",
                                           maxsupportedmemory: "128GB",
                                           pcie: "1x16 PCIE Gen 4, 1x8 PCIE Gen 3, 1x4 PCIE Gen 3",
                                           sataports: "6",
                                           m2ports: "2 PCIE Gen 4 Slots",
                                           sataraid: "Raid 0, 1, or 10 support",
                                           lan: "Onboard Intel 2.5Gb Networking",
                                           wifi: "Integrated WiFi 6E",
                                           reario: "1 x PS/2 Mouse/Keyboard Port, 1 x HDMI Port, 1 x DisplayPort 1.4, 4 x USB 3.2 Gen1 Ports (ASMedia ASM1074 hub) (Supports ESD Protection), 2 x USB 2.0 Ports (Supports ESD Protection), 1 x RJ-45 LAN Port with LED (ACT/LINK LED and SPEED LED), HD Audio Jacks: Line in / Front Speaker / Microphone",
                                           otherconnectors: "1 x SPI TPM Header, 1 x Chassis Intrusion and Speaker Header, 1 x RGB LED Header, * Supports in total up to 12V/3A, 36W LED Strip., 3 x Addressable LED Headers, * Support in total up to 5V/3A, 15W LED Strip., 1 x CPU Fan Connector (4-pin), * The CPU Fan Connector supports the CPU fan of maximum 1A (12W) fan power., 1 x CPU/Water Pump Fan Connector (4-pin) (Smart Fan Speed Control), * The CPU/Water Pump Fan supports the water cooler fan of maximum 2A (24W) fan power., 3 x Chassis/Water Pump Fan Connectors (4-pin) (Smart Fan Speed Control), * The Chassis/Water Pump Fan supports the water cooler fan of maximum 2A (24W) fan power., * CPU_FAN2/WP, CHA_FAN1~3/WP can auto detect if 3-pin or 4-pin fan is in use., 1 x Front Panel Audio Connector, 1 x Thunderbolt AIC Connector (5-pin) (Supports ASRock Thunderbolt 4 AIC Card)",
                                           formfactor: "ATX",
                                           dimensions: "9.6\" x 12\"",
                                           memorysupport: "DDR5",
                                           audio: "Realtek A1-10-2",
                                           internalusb: "2 X USB 2.0",
                                           powerconnector: "1 X ATX 24 Pin, 2 X 8 Pin EPS",
                                           bluetooth: "Yes")
  
//  public let mockCPU = CPU()
//                           
//  public let mockGPU = GPU()
  
}
