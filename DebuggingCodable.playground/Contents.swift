import Foundation

do {
    let countries = try countries()
    print("Successfully loaded countries", countries)
} catch {
    print("Failed to load countries", error)
}
