import Foundation

public func countries() throws -> [Country] {
    guard let countriesFileURL = Bundle.main.url(forResource: "countries", withExtension: "json") else {
        return []
    }
    let countriesData = try Data(contentsOf: countriesFileURL)
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return try decoder.decode([Country].self, from: countriesData)
}
