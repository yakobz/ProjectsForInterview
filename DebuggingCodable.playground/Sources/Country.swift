import Foundation

public struct Country: Decodable {
    enum CodingKeys: String, CodingKey {
        case countryName = "country_name"
        case countryCode = "country_code"
    }

    public let countryName: String
    public let countryCode: String

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryName = try container.decode(String.self, forKey: .countryName)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
    }
}
