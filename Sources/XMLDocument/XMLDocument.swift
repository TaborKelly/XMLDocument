import Foundation

func parseData(fromString: String) throws -> XMLDocument {
    return try XMLDocument(xmlString: fromString)
}
