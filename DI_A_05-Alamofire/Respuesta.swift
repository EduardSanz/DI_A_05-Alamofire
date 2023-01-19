// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let respuesta = try? JSONDecoder().decode(Respuesta.self, from: jsonData)

import Foundation

// MARK: - Respuesta
struct Respuesta: Codable {
    let info: Info
    let results: [Personaje]
}

// MARK: - Info
struct Info: Codable {
    let count, pages: Int
    let next: String?
    let prev: String?
}

// MARK: - Result
struct Personaje: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}



// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

