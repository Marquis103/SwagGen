//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Client: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var client: String?

    public init(client: String? = nil) {
        self.client = client
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        client = jsonDictionary.json(atKeyPath: "client")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let client = client {
            dictionary["client"] = client
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}