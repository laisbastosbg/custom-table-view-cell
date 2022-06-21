//
//  Entry.swift
//  MyTableViewController
//
//  Created by Lais Godinho on 15/06/22.
//

import Foundation

struct Entry: Identifiable, Codable {
  var id: UUID
  var name: String
  var type: String
  var magnitude: String
  var date: Date
  var time: Date
  var place: String
  var equipment: String
  var magnification: String
  var notes: String
  var icon: EntryType
  var images: [EntryImage]
  
  init(id: UUID = UUID(), name: String = "", type: String = "", magnitude: String = "", date: Date = Date(), time: Date = Date(), place: String = "", equipment: String = "", magnification: String = "", notes: String = "", icon: EntryType = .blackHole, images: [EntryImage] = []) {
    self.id = id
    self.name = name
    self.type = type
    self.magnitude = magnitude
    self.date = date
    self.time = time
    self.place = place
    self.equipment = equipment
    self.magnification = magnification
    self.notes = notes
    self.icon = icon
    self.images = images
  }
}

struct EntryImage: Identifiable, Codable {
  let id: UUID
  let path: String
  
  init(id: UUID = UUID(), path: String) {
    self.id = id
    self.path = path
  }
}

extension Entry {
  static var sampleData = [
    Entry(name: "Marte", type: "planet", magnitude: "-1.52", date: Date(), time: Date(), place: "Quintal de casa", equipment: "olho nu", magnification: "---", notes: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", icon: .redPlanet, images: [EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage"), EntryImage(path: "TestImage")]),
    Entry(name: "Saturno", type: "planet", magnitude: "-8.914", date: Date(), time: Date(), place: "Quintal de casa", equipment: "olho nu", magnification: "---", notes: "", icon: .ringedPlanet),
    Entry(name: "Venus", type: "planet", magnitude: "-8.914", date: Date(), time: Date(), place: "Quintal de casa", equipment: "olho nu", magnification: "---", notes: "", icon: .orangePlanet)
  ]
}

